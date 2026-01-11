#!/usr/bin/env bash
set -euo pipefail

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "ERROR: 当前目录不是 Git 仓库。" >&2
  exit 1
fi

staged_files="$(git diff --cached --name-only --diff-filter=ACMRTUXB || true)"
unstaged_files="$(git diff --name-only --diff-filter=ACMRTUXB || true)"
untracked_files="$(git ls-files --others --exclude-standard || true)"

all_files="$(
  printf "%s\n%s\n%s\n" "$staged_files" "$unstaged_files" "$untracked_files" \
    | sed '/^$/d' \
    | sort -u
)"

if [[ -z "${all_files}" ]]; then
  echo "OK: 未发现需要检查的变更文件。"
  exit 0
fi

is_sensitive_path() {
  local path="$1"

  # `.env` 本体（允许 `.env.example/.env.sample/.env.template/.env.dist`）
  if [[ "$path" =~ (^|/)\.env$ ]]; then return 0; fi
  if [[ "$path" =~ (^|/)\.env\.[^/]+$ ]]; then
    case "$path" in
      *.env.example|*.env.sample|*.env.template|*.env.dist) return 1 ;;
      *) return 0 ;;
    esac
  fi

  # 私钥/证书/凭证常见后缀与路径
  case "$path" in
    *id_rsa|*id_ed25519|*id_dsa|*id_ecdsa) return 0 ;;
    *.pem|*.key|*.p12|*.pfx|*.jks|*.keystore) return 0 ;;
    */.aws/credentials|.aws/credentials) return 0 ;;
    */.npmrc|.npmrc|*/.pypirc|.pypirc|*/.netrc|.netrc) return 0 ;;
    */.kube/config|.kube/config) return 0 ;;
    *secrets*|*secret*) return 0 ;;
  esac

  return 1
}

suspects=()
while IFS= read -r path; do
  [[ -z "$path" ]] && continue
  if is_sensitive_path "$path"; then
    suspects+=("$path")
  fi
done <<<"$all_files"

if (( ${#suspects[@]} == 0 )); then
  echo "OK: 未发现疑似敏感文件（按路径规则）。"
  exit 0
fi

echo "WARN: 发现疑似敏感文件（将阻止提交/推送）："
for p in "${suspects[@]}"; do
  echo "- $p"
done
echo
echo "建议："
echo "- 停止提交流程，先确认是否包含密钥/令牌/密码等敏感信息。"
echo "- 如不应入库：执行 `git restore --staged <path>` 并加入 `.gitignore`，或改为提交示例文件（如 `.env.example`）。"
echo "- 如已泄露：立即轮换凭证；必要时清理 Git 历史（需要人工确认后再进行）。"

exit 2
