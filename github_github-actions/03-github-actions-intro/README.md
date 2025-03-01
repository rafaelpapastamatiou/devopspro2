# GitHub Workflow Basics

GitHub Actions allows you to automate, customize, and execute your software development workflows right in your repository. The basic structure of a GitHub workflow is defined in a YAML file located in the `.github/workflows` directory of your repository.

## Basic Structure of a GitHub Workflow

A GitHub workflow file typically includes the following sections:

1. **Name**: The name of the workflow.
2. **Triggers**: Events that trigger the workflow, such as `push`, `pull_request`, or `schedule`.
3. **Jobs**: A workflow is made up of one or more jobs, which run in parallel by default.
4. **Steps**: Each job consists of a sequence of steps. Steps can run commands, set up actions, or run scripts.

### Example Workflow Using `actions/setup-node@v4`

Below is an example of a GitHub workflow that sets up a Node.js environment using the `actions/setup-node@v4` action:

```yaml
name: Node.js CI

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Set up Node.js
      uses: actions/setup-node@v4
      with:
        node-version: '14'

    - name: Install dependencies
      run: npm install

    - name: Run tests
      run: npm test
```