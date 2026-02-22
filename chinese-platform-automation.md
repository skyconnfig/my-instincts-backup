---
id: chinese-platform-automation
trigger: "when working on Chinese social media automation projects"
confidence: 0.8
domain: "workflow"
source: "session-analysis-2026-02-22"
---

# 中文平台自动化工作流

## Context
从多项目开发中沉淀的经验，包括视频多平台发布、n8n工作流、GitHub脚本等自动化场景。

## Core Principles

### 1. 平台选择与优先级
**When**: 自动化新平台时
**Do**:
- 优先选择有成熟API或浏览器自动化的平台
- DrissionPage适合中国平台（京东、抖音、B站等）
- 需要登录态的项目用浏览器自动化更稳定

### 2. 配置与代码分离
**When**: 多平台项目管理
**Do**:
- 配置文件独立（txt/yaml/json）
- 敏感信息不提交到Git
- 创建requirements.txt管理依赖

### 3. 文档即入门指南
**When**: 项目初始化
**Do**:
- README.md：功能、安装、使用
- AGENTS.md：给AI代理的代码规范
- .gitignore：过滤临时文件

### 4. GitHub推送自动化
**When**: 本地项目推送到GitHub
**Do**:
- 创建多个脚本版本（bat/ps1/py）兼容不同环境
- 使用gh CLI认证解决凭证问题
- 推送到私有仓库备份

### 5. n8n工作流模板化
**When**: 电商自动化
**Do**:
- 表单触发器收集用户输入
- AI节点处理内容生成
- HTTP节点对接Shopify等API
- 定价公式清晰记录

## Decision Tree

```
需要自动化？
├── 中国平台（抖音/B站/微博）→ DrissionPage
├── 电商流程 → n8n
├── 视频处理 → FFmpeg
└── 跨平台 → Docker
```

## Project Patterns

### Python自动化项目结构
```
project/
├── main.py           # 入口
├── config.py         # 配置解析
├── platform_*.py     # 各平台模块
├── requirements.txt  # 依赖
├── README.md         # 文档
├── AGENTS.md         # AI代理指南
└── .gitignore
```

### AGENTS.md必含内容
- 构建/测试命令
- 代码风格规范
- 项目结构说明
- 依赖列表
- 注意事项

## Checklist

```
□ 依赖是否记录在requirements.txt？
□ README是否包含安装步骤？
□ AGENTS.md是否更新？
□ .gitignore是否过滤敏感文件？
□ 推送到GitHub备份？
```

## References
- spzdsc: 视频多平台发布
- n8n-workflow: Shopify工作流
- my-instincts-backup: 经验备份
