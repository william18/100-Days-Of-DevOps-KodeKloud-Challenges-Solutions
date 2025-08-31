## Steps
```bash
# 1. Connect to the server via SSH
ssh natasha@ststor01

# 2. Navigate to the repository
cd /usr/src/kodekloudrepos/demo

# 3. Switch to the master branch
git checkout master

# 4. Update master with the latest changes from remote
git pull origin master

# 5. Cherry-pick the specific commit from the feature branch
git cherry-pick <commit-hash>


# 7. Push the updated master branch to remote
git push origin master
