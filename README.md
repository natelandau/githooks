# githooks

This repository contains git hooks which will be executed on the client side before certain git actions are completed.

## Installation

There are two possible ways to include these hooks in your repository.

#### 1. Using a git submodule

Follow these steps to install this repository as a submodule within an existing git repository.

1. Open terminal
2. `cd` to the root level of an existing github repository
3. Run the following command.

```bash
git submodule add https://github.com/natelandau/githooks ".hooks"
```

Note, I've chosen to install this in a directory named '.hooks'. You can choose a different directory name.

#### 2. Using a symlink

Clone this repository to your computer and then create a symlink pointing to it from the root of your repository. Be sure to add the symlink to your `.gitignore` file.

### Enabling the hooks

Run the `install.sh` script to install these hooks in your repository.

To uninstall them, run `install.sh --remove`
