# 敏感文件与提交安全检查

## 目标

- 避免将密钥、令牌、密码、证书等敏感信息提交到 Git 历史
- 在执行 `git add .`、`git commit`、`git push` 之前完成最小化检查

## 基于路径的快速规则（启发式）

以下文件/路径一旦出现在变更或未跟踪文件中，应默认视为高风险并停止流程：
- `.env`（推荐改为提交 `.env.example`）
- 私钥文件：`id_rsa`、`id_ed25519` 等
- 证书/密钥后缀：`.pem`、`.key`、`.p12`、`.pfx`、`.jks`
- 常见凭证文件：`.aws/credentials`、`.netrc`、`.npmrc`、`.pypirc`、`.kube/config`
- 任何包含 `secret`/`secrets` 的命名（需人工确认是否误报）

对应自动检查脚本：
- `scripts/check_sensitive_files.sh`

## 发现疑似敏感文件后的处理步骤

1. 停止提交/推送
2. 从暂存区移除：`git restore --staged <path>`
3. 从工作区移除或替换为示例文件（如 `.env.example`）
4. 将真实敏感文件加入 `.gitignore`
5. 如敏感信息曾被提交或外泄：立即轮换凭证；视情况清理 Git 历史（需要人工确认后再进行）

## `.gitignore` 片段示例（按需选用）

```gitignore
.env
.env.*
!.env.example
!.env.sample
!.env.template
!.env.dist
*.pem
*.key
*.p12
*.pfx
.aws/credentials
.netrc
.npmrc
.pypirc
.kube/config
```
