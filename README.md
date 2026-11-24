# Project 11: Infra Change with Branching Policy

## Goal
Follow a branching strategy for infrastructure changes: make changes on a
feature branch and merge them into `main` through a pull request with review.

## Repository Structure

| File | Purpose |
|------|---------|
| `main.tf` | Terraform configuration (`local` provider and a `local_file` resource) |
| `outputs.tf` | Output value for the project |
| `.gitignore` | Keeps generated Terraform files and state out of the repo |

## Branching Strategy
- `main` holds the stable, reviewed code.
- Every change is made on a `feature/*` branch, never directly on `main`.
- Changes are merged into `main` only through a pull request.
- Feature branches are deleted after merging.

## Workflow Followed

1. Created the repository with an initial commit on `main`.
2. Created the branch `feature/add-output` from `main`.
3. Added `outputs.tf` and pushed the branch.
4. Opened **PR #1** ("add terraform output") and merged it into `main`.
5. Added the real file contents to `main.tf` and `outputs.tf` on the same
   feature branch and opened **PR #2** ("Added the file contents").
6. Reviewed the changes in the **Files changed** tab and left review comments.
7. Merged PR #2 into `main`.

## Terraform Configuration
- Provider: `hashicorp/local` (needs no cloud credentials)
- Resource: `local_file.test` creates `test.txt` with the content "Hello, World!"
- Output: `message` returns `Project-11`

### Run locally
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## Evidence

### 1. Feature branch and commits
![Branches](screenshots/branches.png)
The `feature/add-output` branch was created from `main`.

### 2. Pull request
![Pull request](screenshots/pr-conversation.png)
PR #2 shows the description, the commit, and the files changed.

### 3. Review
![Review](screenshots/pr-review.png)
Review comments were added on the changed files before merging.

### 4. Merged pull request
![Merged PR](screenshots/pr-merged.png)
The PR was merged into `main` with no conflicts.

### 5. Final code on `main`
![main.tf on main](screenshots/main-tf.png)
`main.tf` on the `main` branch shows the merged code.

## Review Note
A GitHub Copilot review was requested on PR #2 but could not run because of an
account quota limit. GitHub does not allow authors to approve their own pull
requests, so the PR was reviewed through self-review comments before merging.
<If someone else approved it, replace this with: "Reviewed and approved by
<reviewer-name>.">

## Result
Infrastructure changes were made on a feature branch and merged into `main`
through pull requests, following the branching strategy.

## Repository Link
https://github.com/anandacc277/Project-11
