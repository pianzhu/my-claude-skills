---
description: Git Commit智能助手。
---

# Git Commit 智能助手

请帮我完成一次规范的 Git 提交。

## 执行步骤

1. **并行获取仓库状态**：
- 运行 `git status` 查看所有变更
- 运行 `git diff --staged` 和 `git diff` 查看具体变更内容
- 运行 `git log --oneline -5` 了解提交消息风格
1. **分析变更**：
- 确定变更类型：feat/fix/docs/refactor/style/test/build/chore
- 确定影响范围（scope）
- 理解变更目的
1. **生成提交消息**（遵循 Conventional Commits）：

```
<type>(<scope>): <subject>

<body>

```

- subject：简洁，不超过50字符，祈使句，首字母小写
- body：说明"为什么"而非"做了什么"
1. **执行提交**：
- 如有未暂存的变更，先 `git add .`
- 使用 HEREDOC 格式执行 `git commit`
- 运行 `git status` 确认提交成功
- 显示推送结果

## 安全规则

- 不使用 --force 或 --no-verify
- 自动推送到远程（默认行为）
- 不提交敏感文件（.env 等）
- 发现敏感文件时警告用户
- 推送前确保本地提交成功

## 类型说明

| 类型 | 说明 |
| --- | --- |
| feat | 新功能 |
| fix | 修复bug |
| docs | 文档变更 |
| style | 代码格式 |
| refactor | 重构 |
| test | 测试 |
| build | 构建/依赖 |
| chore | 其他杂项 |
| 现在请分析当前仓库的变更并帮我生成提交。 |  |
