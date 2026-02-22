---
id: project-retrospective-workflow
trigger: "when user asks for retrospective or lesson learned"
confidence: 0.9
domain: "workflow"
source: "retrospective-session-2026-02-07"
---

# 项目复盘工作流程

## Trigger
用户说"复盘"、"总结经验"、"lesson learned"、"retrospective"等关键词

## Workflow

### Step 1: 了解工作背景
询问用户：
- 这次主要做了什么类型的工作？（前端/后端/全栈/AI/数据等）
- 最大的成果是什么？
- 遇到的最大挑战是什么？
- 是如何解决的？
- 这些经验有多高的复用价值？

### Step 2: 提取通用原则
基于工作类型，从以下维度提取原则：

**维度1: 需求管理与沟通**
- 需求澄清方法
- 技术决策流程
- 沟通协作模式

**维度2: 开发与实现**
- 开发节奏（小步快跑）
- 技术引入策略
- 验证方法

**维度3: 代码质量**
- 重构策略
- 质量保证方法
- 性能优化原则

**维度4: 协作与文档**
- 信息同步机制
- 文档管理方法
- 知识传递方式

**维度5: 环境与资源**
- 开发环境管理
- 资源分配策略
- 自动化工具链

### Step 3: 创建复盘文档
生成以下文件：

1. **项目复盘文档** (RETROSPECTIVE.md)
   - 工作概况
   - 通用原则（10-12条）
   - 经验记忆清单
   - 可复用模板

2. **经验本能** (instincts/personal/*.md)
   - 触发条件
   - 核心原则
   - 决策树
   - 检查清单

### Step 4: 沉淀为记忆
使用 continuous-learning-v2 系统：
- 创建 instincts 文件
- 设置 confidence 评分
- 添加 domain 标签
- 记录 source

### Step 5: 提供使用指南
告诉用户如何应用这些经验：
- 下次工作前查看经验清单
- 遇到痛点时对照解决路径
- 定期更新和迭代经验

## Output Format

### 复盘文档结构
```
# [项目/工作] 复盘

## 工作概况
- 领域: [工作领域]
- 范围: [覆盖范围]
- 挑战: [遇到的痛点]
- 解决方式: [如何解决]

## 通用原则提炼（10-12条）
每个原则包含：
- 背景
- 原则描述
- 可复用标记

## 经验记忆清单
- 工作前检查清单
- 痛点解决路径表

## 可复用模板
- ADR模板
- 功能开发检查清单
- 其他实用模板

## 持续改进
- 应用指南
- 更新机制
```

### Instinct 文件结构
```yaml
---
id: [unique-id]
trigger: "[when to activate]"
confidence: [0.3-0.9]
domain: "[category]"
source: "[retrospective-date]"
---

# [Title]

## Context
[背景说明]

## Core Principles
[具体原则]

## Decision Tree
[决策树]

## Checklist Template
[检查清单]

## References
[相关文档]
```

## Key Principles for Retrospectives

1. **聚焦通用性**: 提取可跨项目复用的原则
2. **结构化**: 使用清晰的分类和层次
3. **可执行**: 提供具体的检查清单和模板
4. **可追踪**: 记录来源和适用范围
5. **可迭代**: 建立更新机制

## Success Criteria
- [ ] 复盘文档包含完整的10-12条原则
- [ ] 每个原则都有背景和可复用标记
- [ ] 提供了实用的检查清单
- [ ] 提供了可复用的模板
- [ ] 经验已沉淀为 instincts
- [ ] 用户知道如何应用这些经验
