### Restore Stash and Push Changes

```bash

#ssh into the storage server
ssh natasha@ststor01

# Go to the repository
cd /usr/src/kodekloudrepos/beta

# Check available stashes
git stash list

# Apply the stash with identifier stash@{1}
git stash apply stash@{1}

# Stage the restored changes
git add .

# Commit the changes
git commit -m "Restored changes from stash@{1}"

# Push the commit to the remote repository
git push origin master
