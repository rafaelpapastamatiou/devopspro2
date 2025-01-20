# GitHub Flow

GitHub Flow is a lightweight, branch-based workflow that supports teams and projects where deployments are made regularly. This workflow is ideal for projects that require continuous delivery.

## Branches in GitHub Flow

1. **Main**: This branch contains production-ready code. All changes should be merged into this branch through pull requests.
2. **Feature**: These branches are used to develop new features or fix bugs. They are created from the `main` branch and merged back into `main` through pull requests.

## Workflow

### Creating a Feature Branch

1. Create a new branch from `main`:
    ```bash
    git checkout main
    git pull origin main
    git checkout -b feature/my-new-feature
    ```

2. Work on your feature and commit changes:
    ```bash
    git add .
    git commit -m "Add new feature"
    ```

3. Push the feature branch to the remote repository:
    ```bash
    git push origin feature/my-new-feature
    ```

### Opening a Pull Request

1. Go to the repository on GitHub.
2. Click on the "Compare & pull request" button next to your feature branch.
3. Provide a title and description for your pull request.
4. Click on "Create pull request".

### Reviewing and Merging a Pull Request

1. Review the changes in the pull request.
2. If necessary, request changes or approve the pull request.
3. Once approved, merge the pull request into `main`:
    ```bash
    git checkout main
    git pull origin main
    git merge feature/my-new-feature
    ```

4. Push the updated `main` branch:
    ```bash
    git push origin main
    ```

### Deleting a Feature Branch

1. Once the feature branch has been merged, you can delete it:
    ```bash
    git branch -d feature/my-new-feature
    git push origin --delete feature/my-new-feature
    ```

## Example Workflow

1. **Create a feature branch**:
    ```bash
    git checkout main
    git pull origin main
    git checkout -b feature/add-login
    ```

2. **Develop the feature**:
    ```bash
    git add .
    git commit -m "Add login feature"
    git push origin feature/add-login
    ```

3. **Open a pull request** on GitHub and get it reviewed.

4. **Merge the pull request**:
    ```bash
    git checkout main
    git pull origin main
    git merge feature/add-login
    git push origin main
    ```

5. **Delete the feature branch**:
    ```bash
    git branch -d feature/add-login
    git push origin --delete feature/add-login
    ```

## Conclusion

GitHub Flow is a simple and effective workflow that supports continuous delivery. By following this workflow, teams can ensure a smooth and efficient development process with regular deployments.