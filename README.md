# Publish Gatsby site to GitHub Pages using gh-pages

This action installs dependencies, builds Gatsby static site and then commit to GitHub Pages repository using [gh-pages](https://www.npmjs.com/package/gh-pages).

This action assumes that your Gatsby development branch sits in the same repository as the publishing branch. And the publishing directory will be the root of the branch (not for publishing to sub folders yet).

# Usage

```yaml
name: 'the workflow name' # Name of your workflow

on:
  push:
    branches:
      - gatsby-dev # The trigger of the this workflow

jobs:
  build:
    runs-on: ubuntu-latest # Action uses Docker so only Linux is supported
    steps:
      - uses: actions/checkout@v1 # Checkout your triggered branch
      - uses: xmflsct/action-publish-gatsby@v1 # Uses this action to run further steps
        with:
          publishBranch: 'master' # Not required, default publishing branch is master
          token: ${{ secrets.NAME }} # Your personal access token of GitHub, read more below of how to obtain one and keep it safe
          name: 'your name' # Not required, default to action's maintainer
          email: 'your@email.com' # Not required, default to action's maintainer
```

## Obtain personal access Token

[Creating a personal access token for the command line](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line)

[Creating and using secrets (encrypted variables)](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables)

Remember to change the `NAME` in above `${{ secrets.NAME }}` to your secrets' name.
