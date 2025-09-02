# Rebase feature branch with master

```bash

# ssh into the storage server
ssh natasha@ststor01

# Go to the repository
cd /usr/src/kodekloudrepos/media

# Switch to the feature branch
git checkout feature

# Rebase the feature branch on top of master
git rebase master

# Push the rebased feature branch to remote
git push origin feature --force
