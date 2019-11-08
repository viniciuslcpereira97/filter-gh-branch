# Filter Github Branch

## Description
Action to filter github branches that triggered the action.

## Example
`Environment variable at virtual machine executing workflow`

```env
GITHUB_REF=refs/heads/feature/github-actions
```

This action will filter and output the values:

- branch_suffix: `github-actions`
- filtered_branch: `feature/github-acions`