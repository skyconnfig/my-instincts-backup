# 🧠 个人经验备份库

存储和备份你的 AI 学习经验，实现跨设备、跨环境的经验同步。

## 📋 简介

这是一个用于备份和恢复个人经验（Instincts）的仓库。通过 OpenCode 的 `continuous-learning-v2` 技能学习到的经验会自动保存到这里，确保你的宝贵经验不会丢失。

## 📦 包含内容

| 文件 | 说明 |
|------|------|
| `*.md` | 个人本能文件（Markdown格式） |
| `instincts.yaml` | 统一导出的YAML格式 |
| `backup-instincts.sh` | 自动备份脚本 |

## 🚀 快速开始

### 方式一：克隆使用（推荐）

```bash
# 克隆仓库
git clone https://github.com/skyconnfig/my-instincts-backup.git
cd my-instincts-backup

# 查看所有本能
ls -la *.md
```

### 方式二：导入到 OpenCode

如果你在新设备上使用 OpenCode：

```bash
# 1. 克隆仓库
git clone https://github.com/skyconnfig/my-instincts-backup.git

# 2. 复制本能文件到 OpenCode 目录
cp *.md ~/.claude/homunculus/instincts/personal/

# 3. 查看导入的本能
/instinct-status
```

## 📖 本能文件说明

每个 `.md` 文件是一个独立的本能，包含以下字段：

```yaml
---
id: unique-instinct-id
trigger: "when specific situation occurs"
confidence: 0.0-1.0
domain: "workflow|code|tool|preference"
source: "how this was learned"
---
```

### 字段解释

| 字段 | 说明 | 示例 |
|------|------|------|
| `id` | 唯一标识符 | `chinese-platform-automation` |
| `trigger` | 触发条件 | `when working on Chinese social media` |
| `confidence` | 置信度 0-1 | `0.8` |
| `domain` | 领域分类 | `workflow`, `code`, `tool`, `preference` |
| `source` | 来源说明 | `session-analysis-2026-02-22` |

## 🔄 日常使用

### 定期备份

当你在 OpenCode 中积累新的经验后：

```bash
cd my-instincts-backup

# 拉取最新
git pull origin main

# 复制新的本能文件
cp ~/.claude/homunculus/instincts/personal/*.md .

# 提交更新
git add .
git commit -m "Update instincts - $(date +%Y-%m-%d)"
git push
```

### 使用备份脚本

```bash
# 给脚本执行权限（只需执行一次）
chmod +x backup-instincts.sh

# 运行备份
./backup-instincts.sh
```

## 📥 从备份恢复

### 在新电脑恢复

```bash
# 1. 克隆仓库
git clone https://github.com/skyconnfig/my-instincts-backup.git
cd my-instincts-backup

# 2. 创建本能目录
mkdir -p ~/.claude/homunculus/instincts/personal

# 3. 复制所有本能文件
cp *.md ~/.claude/homunculus/instincts/personal/

# 4. 验证导入
/instinct-status
```

### 导入单个本能

```bash
# 只导入特定的本能文件
cp chinese-platform-automation.md ~/.claude/homunculus/instincts/personal/
```

## 🔧 进阶使用

### 使用 OpenCode 内置命令

```bash
# 查看当前所有本能及置信度
/instinct-status

# 导出本能到文件
/instinct-export --output my-backup.yaml

# 从文件导入本能
/instinct-import my-backup.yaml
```

### 添加新本能

手动添加新本能时，遵循以下格式：

```markdown
---
id: my-new-instinct
trigger: "when specific scenario"
confidence: 0.7
domain: "workflow"
source: "manual-addition"
---

# 本能标题

## Context
这个本能适用的场景描述...

## Core Principles
### 1. 核心原则
- 要点1
- 要点2

## Decision Tree
```
遇到问题？
├── 情况A → 解决方案A
└── 情况B → 解决方案B
```

## Checklist
```
□ 检查项1
□ 检查项2
```
```

## 📊 当前备份的本能

| 本能 | 领域 | 置信度 | 说明 |
|------|------|--------|------|
| chinese-platform-automation | workflow | 0.8 | 中文平台自动化工作流 |
| fullstack-development-principles | workflow | 0.85 | 全栈开发通用原则 |
| project-retrospective-workflow | workflow | 0.9 | 项目复盘工作流 |

## 🤝 贡献

如果你想分享你的经验：

1. Fork 这个仓库
2. 添加你的本能文件
3. 提交 Pull Request

## 📝 注意事项

- ❌ 不要提交包含敏感信息的本能
- ❌ 不要提交包含实际代码的本能（只保存模式）
- ✅ 经验应该是可复用的模式
- ✅ 包含触发条件、核心原则、决策树

## 🔗 相关链接

- [OpenCode 官网](https://opencode.com)
- [continuous-learning-v2 技能](https://github.com/anthropics/claude-code)
- [Learn Prompting](https://learnprompting.org)

---

**更新时间**: 2026-02-22
**维护者**: skyconnfig
