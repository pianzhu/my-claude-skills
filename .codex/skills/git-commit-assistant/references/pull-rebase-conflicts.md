# `git pull` vs `git pull --rebase` 与冲突处理

## 先决检查

开始同步前，先确认仓库处于干净/可操作状态：
- `git status`：检查是否存在进行中的 `merge`/`rebase`

如存在进行中的操作：
- rebase：优先完成或终止 `git rebase --continue` / `git rebase --abort`
- merge：优先完成或终止 `git commit` / `git merge --abort`

## 选择策略（建议）

- 需要线性历史，且本地提交尚未共享：选择 `git pull --rebase`
- 分支已共享或允许产生 merge commit：选择 `git pull`

如不确定：
- 执行 `git fetch --prune`，再用 `git log --oneline --decorate --graph --max-count=20` 观察分叉情况后再决定

## 常用同步方式

### 方式 A：合并式同步（merge）

- 执行：`git pull`
- 结果：产生 merge commit（如存在分叉）

### 方式 B：变基式同步（rebase）

- 执行：`git pull --rebase`
- 结果：将本地提交“挪到”远端最新提交之后，历史更线性

注意：
- 对已经推送并被他人基于其开发的分支，避免执行会改写历史的 rebase；优先新开分支或用 merge 同步

## 冲突处理流程

### rebase 冲突

1. 执行 `git status` 获取冲突文件与下一步提示
2. 打开冲突文件，按业务意图选择保留内容并移除冲突标记
3. 逐个暂存已解决文件：`git add <path>`
4. 继续：`git rebase --continue`
5. 如发现方向错误或难以收敛：`git rebase --abort` 回到 rebase 前状态

### merge 冲突

1. 执行 `git status` 获取冲突文件与下一步提示
2. 打开冲突文件并解决冲突标记
3. 暂存已解决文件：`git add <path>`
4. 完成合并：`git commit`（或按 Git 提示执行）
5. 如需要放弃本次合并：`git merge --abort`

## 最小化冲突的操作建议

- 在拉取前先提交或暂存当前工作，避免把未完成改动卷入冲突面
- 小步提交，避免在单次 rebase/merge 中处理超大 diff
- 使用 `git diff` / `git diff --staged` 快速核对解决结果
