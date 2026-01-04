# Git worktree 使用指南

## 适用场景

- 需要在同一仓库同时处理多个分支（并行开发/修复）
- 希望避免频繁 stash / 切分支导致上下文丢失
- 需要为 review、hotfix、实验性改动开独立工作目录

## 常用命令

### 查看 worktree 列表

- `git worktree list`

### 新增 worktree

- 使用已有分支：`git worktree add <path> <branch>`
- 新建分支并创建 worktree：`git worktree add -b <new-branch> <path> <start-point>`

提示：
- 同一分支不能同时在多个 worktree 中被检出；需要并行时创建新分支

### 删除 worktree

- `git worktree remove <path>`

### 清理失效引用

- `git worktree prune`

## 常见问题排查

- worktree 目录不干净导致无法移除：先在对应目录执行 `git status`，提交/还原改动后再移除
- 分支被 worktree 占用无法切换：用 `git worktree list` 定位占用位置，移除对应 worktree 或改用新分支
