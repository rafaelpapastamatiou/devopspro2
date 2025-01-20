# Gitflow Workflow

Gitflow is a branching model for Git, created by Vincent Driessen. It provides a robust framework for managing larger projects. Gitflow defines a strict branching model designed around the project release. This model is great for a release-based software workflow.

## Branches in Gitflow

1. **Master**: This branch contains production-ready code. All changes should come from the `develop` branch and be thoroughly tested.
2. **Develop**: This branch contains the latest delivered development changes for the next release. It is the main branch where the source code of `HEAD` always reflects a state with the latest delivered development changes for the next release.
3. **Feature**: These branches are used to develop new features for the upcoming or a distant future release. The `develop` branch is their parent branch.
4. **Release**: These branches support preparation of a new production release. They allow for minor bug fixes and preparing meta-data for a release (version number, build dates, etc.). The `develop` branch is their parent branch.
5. **Hotfix**: These branches are necessary to act immediately upon an undesired status of `master`. They allow for quick fixes to production code. The `master` branch is their parent branch.

## Workflow

### Creating a Feature Branch

1. Create a new branch from `develop`:
    ```bash
    git checkout develop
    git pull origin develop
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

### Merging a Feature Branch

1. Switch to the `develop` branch:
    ```bash
    git checkout develop
    ```

2. Merge the feature branch:
    ```bash
    git merge feature/my-new-feature
    ```

3. Push the updated `develop` branch:
    ```bash
    git push origin develop
    ```

### Creating a Release Branch

1. Create a new branch from `develop`:
    ```bash
    git checkout develop
    git pull origin develop
    git checkout -b release/1.0.0
    ```

2. Prepare the release (update version number, etc.) and commit changes:
    ```bash
    git add .
    git commit -m "Prepare release 1.0.0"
    ```

3. Push the release branch to the remote repository:
    ```bash
    git push origin release/1.0.0
    ```

### Finishing a Release Branch

1. Switch to the `master` branch:
    ```bash
    git checkout master
    ```

2. Merge the release branch:
    ```bash
    git merge release/1.0.0
    ```

3. Tag the release:
    ```bash
    git tag -a 1.0.0 -m "Release 1.0.0"
    ```

4. Push the `master` branch and tags:
    ```bash
    git push origin master
    git push origin --tags
    ```

5. Switch to the `develop` branch and merge the release branch:
    ```bash
    git checkout develop
    git merge release/1.0.0
    git push origin develop
    ```

### Creating a Hotfix Branch

1. Create a new branch from `master`:
    ```bash
    git checkout master
    git pull origin master
    git checkout -b hotfix/1.0.1
    ```

2. Fix the issue and commit changes:
    ```bash
    git add .
    git commit -m "Fix critical issue"
    ```

3. Push the hotfix branch to the remote repository:
    ```bash
    git push origin hotfix/1.0.1
    ```

### Finishing a Hotfix Branch

1. Switch to the `master` branch:
    ```bash
    git checkout master
    ```

2. Merge the hotfix branch:
    ```bash
    git merge hotfix/1.0.1
    ```

3. Tag the hotfix:
    ```bash
    git tag -a 1.0.1 -m "Hotfix 1.0.1"
    ```

4. Push the `master` branch and tags:
    ```bash
    git push origin master
    git push origin --tags
    ```

5. Switch to the `develop` branch and merge the hotfix branch:
    ```bash
    git checkout develop
    git merge hotfix/1.0.1
    git push origin develop
    ```

## Conclusion

Gitflow is a powerful workflow that provides a robust framework for managing larger projects. By following the branching model and workflow, teams can ensure a smooth and efficient development process.