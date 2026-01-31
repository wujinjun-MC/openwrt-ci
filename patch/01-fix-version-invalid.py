import re
import os
import argparse

# 匹配 PKG_VERSION 和 PKG_RELEASE 的正则
PKG_VER_RE = re.compile(r'^(PKG_VERSION\s*:=\s*)(.*)$')
PKG_REL_RE = re.compile(r'^(PKG_RELEASE\s*:=\s*)(.*)$')

def is_variable(val):
    """检测是否为 Makefile 变量，例如 $(AUTO_RELEASE) 或 ${VERSION}"""
    return '$(' in val or '${' in val

def fix_version_string(version):
    """
    针对 APK 规则修复版本字符串：
    - 跳过 Makefile 变量
    - 移除开头的 'v' (v1.2 -> 1.2)
    - 将非标准的横杠换成点 (1.2-beta -> 1.2.beta)
    - 清理不可见字符
    """
    val = version.strip()
    
    if is_variable(val):
        return val # 保持原样
        
    # 移除开头的 v
    val = re.sub(r'^[vV]+', '', val)
    # APK 严禁在 PKG_VERSION 中使用横杠（横杠仅保留给 PKG_RELEASE 的 -r）
    val = val.replace('-', '.')
    return val

def fix_release_string(release):
    """确保 PKG_RELEASE 仅包含数字，除非是变量"""
    val = release.strip()
    
    if is_variable(val):
        return val # 保持原样
        
    return re.sub(r'[^0-9]', '', val)

def process_file(filepath, apply_changes=False):
    if not os.path.isfile(filepath):
        print(f"!! 找不到文件: {filepath}")
        return

    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        new_lines = []
        file_changed = False
        
        for line in lines:
            # 尝试匹配 PKG_VERSION
            v_match = PKG_VER_RE.match(line)
            if v_match:
                prefix, old_val = v_match.groups()
                new_val = fix_version_string(old_val)
                if old_val != new_val:
                    print(f"[VERSION] {filepath}: '{old_val}' -> '{new_val}'")
                    line = f"{prefix}{new_val}\n"
                    file_changed = True
            
            # 尝试匹配 PKG_RELEASE
            r_match = PKG_REL_RE.match(line)
            if r_match:
                prefix, old_val = r_match.groups()
                new_val = fix_release_string(old_val)
                if old_val != new_val:
                    print(f"[RELEASE] {filepath}: '{old_val}' -> '{new_val}'")
                    line = f"{prefix}{new_val}\n"
                    file_changed = True
            
            new_lines.append(line)

        if file_changed:
            if apply_changes:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.writelines(new_lines)
                print(f"已写入文件: {filepath}")
            else:
                pass
                #print(f"[DRY-RUN] 建议修改上述内容 (使用 --apply 执行修改)")
        
        return file_changed

    except Exception as e:
        print(f"处理失败 {filepath}: {e}")

def main():
    parser = argparse.ArgumentParser(description="OpenWrt APK Version Fixer")
    parser.add_argument("direct_val", nargs='?', help="直接检查特定版本号")
    parser.add_argument("--file", help="检查并修复单个 Makefile")
    parser.add_argument("--files", nargs='+', help="检查并修复多个 Makefile")
    parser.add_argument("--dir", help="递归检查目录")
    parser.add_argument("--dirs", nargs='+', help="递归检查多个目录")
    parser.add_argument("--apply", action="store_true", help="显式确认执行修改 (默认仅预览)")

    args = parser.parse_args()

    # 1. 直接检查字符串
    if args.direct_val and not any([args.file, args.files, args.dir, args.dirs]):
        print(f"输入: {args.direct_val}")
        print(f"修复: {fix_version_string(args.direct_val)}")
        return

    # 汇总待处理文件
    targets = []
    if args.file: targets.append(args.file)
    if args.files: targets.extend(args.files)
    
    # 汇总待处理目录
    target_dirs = []
    if args.dir: target_dirs.append(args.dir)
    if args.dirs: target_dirs.extend(args.dirs)

    for d in target_dirs:
        for root, _, files in os.walk(d):
            if "Makefile" in files:
                targets.append(os.path.join(root, "Makefile"))

    if not targets:
        print("提示: 未指定文件或目录。使用 -h 查看帮助。")
        return

    # 执行处理
    changed_count = 0
    for t in targets:
        if process_file(t, args.apply):
            changed_count += 1

    if not args.apply and changed_count > 0:
        print(f"\n总计发现 {changed_count} 个文件需要修正。请添加 --apply 参数执行实际修改。")

if __name__ == "__main__":
    main()