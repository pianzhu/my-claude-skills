# Conventional Commits（提交消息规范）

## 格式

使用以下格式生成提交消息：

```text
<type>(<scope>): <subject>

<body>
```

- `type`：变更类型，必须为预定义枚举之一
- `scope`：影响范围，可选；用于快速定位影响面
- `subject`：一句话概括（≤ 50 字符），祈使句，首字母小写
- `body`：解释“为什么”，补充背景、动机、权衡、限制；避免复述 diff

## type 选择指南

| type | 说明 |
| --- | --- |
| feat | 新功能 |
| fix | 修复 bug |
| docs | 文档变更 |
| style | 代码格式/样式（不影响逻辑） |
| refactor | 重构（不修 bug、不加功能） |
| test | 测试 |
| build | 构建/依赖/CI |
| chore | 其他杂项 |

## scope 选择指南

按“读者最关心的边界”选择：
- 目录/模块/包名：`api`、`cli`、`auth`、`docs`
- 子系统：`db`、`cache`、`router`
- 若变更跨多个模块：选择主导影响面；无法归类时省略 scope

## subject 写法

- 使用祈使句：`add`/`update`/`remove`/`fix`/`refactor`
- 首字母小写，不加句号
- 避免过度技术细节，把细节留给 body（或 PR 描述）

示例：
- `feat(cli): add dry-run option`
- `fix(auth): handle expired refresh token`
- `docs: clarify installation steps`

## body 写法（只写为什么）

优先包含：
- 问题背景：当前痛点/风险
- 改动动机：为什么要做
- 约束与权衡：为什么不选其它方案
- 兼容性影响：是否影响用户、如何迁移（如适用）

示例：

```text
refactor(storage): unify config resolution

为什么：当前多处读取配置，优先级不一致导致线上行为难以复现。
合并读取逻辑后，统一了默认值与覆盖规则，便于排查与测试。
```
