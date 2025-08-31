

### Steps

```bash
    # 1. Go to the repository
    cd /usr/src/kodekloudrepos/official

    # 2. Check the git log to identify commits
    git log --oneline

    # Expected relevant commits:
    # 23f2588 add data.txt file
    # 11fc6e6 initial commit

    # 3. Reset branch to the "add data.txt file" commit
    git reset --hard 23f2588

    # 4. Rebase interactively from the root to remove all other commits
    git rebase -i --root
    # In the editor, keep only:
    # pick 11fc6e6 initial commit
    # pick 23f2588 add data.txt file
    # Delete all other commits, then save and exit

    # 5. Force push the cleaned history to the remote repository
    git push origin master --force
```