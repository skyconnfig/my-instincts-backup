#!/bin/bash
# backup-instincts.sh - 自动备份本能到 GitHub

REPO_DIR="$HOME/my-instincts-backup"
DATE=$(date +%Y-%m-%d)

# 如果仓库不存在，提示用户先创建
if [ ! -d "$REPO_DIR" ]; then
    echo "❌ 备份仓库不存在"
    echo "请先在 GitHub 创建私有仓库，然后克隆到 $REPO_DIR"
    exit 1
fi

echo "📤 导出本能..."
# 导出到临时文件
temp_file=$(mktemp)
python3 ~/.claude/skills/continuous-learning-v2/scripts/instinct-cli.py export --output "$temp_file"

# 复制到仓库
cp "$temp_file" "$REPO_DIR/instincts.yaml"
rm "$temp_file"

# Git 操作
cd "$REPO_DIR"
git add instincts.yaml
git commit -m "Backup instincts - $DATE"
git push

echo "✅ 备份完成！"
echo "📁 保存位置: https://github.com/你的用户名/my-instincts-backup"
