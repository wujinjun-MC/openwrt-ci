#!/bin/bash
# 1. patch-01-fix-version-invalid 修复插件版本号不合法
if [ "$FIX_VERSION_INVALID"x = "true"x ]; then
    echo '$FIX_VERSION_INVALID'"=true, applying patch-01-fix-version-invalid ( 修复插件版本号不合法 )"
    echo ">> Execute $GITHUB_WORKSPACE/patch/01-fix-version-invalid.py"
    python3 "$GITHUB_WORKSPACE/patch/01-fix-version-invalid.py" --apply --dir "$OPENWRT_PATH/feeds/"
fi
