# Roles-Parent

My edited Ansible roles parent repository, mainly useful for testing individual roles via VirtualBox (using Vagrant).

## Author
- Hammad Rauf

## Adding Sub-Modules in Git

1. Navigate to Your Parent Repo

    ```bash
    cd /path/to/your/parent-repo
    ```

1. Add the Submodule Use the Git URL of the existing repository:

    ```bash
    git submodule add https://github.com/username/repo-name.git path/to/submodule
    ```

    * Replace the URL with the one for your submodule repo.
    * The path/to/submodule is optional—if you want it in a specific folder.

1. Initialize and Fetch the Submodule If you're cloning a repo that already contains a submodule:

    ```bash
    git submodule update --init --recursive
    ```

1. Commit the Changes
    Git will track the submodule reference:

    ```bash
    git add .gitmodules path/to/submodule
    git commit -m "Add submodule 'repo-name' at path/to/submodule"
    ```
