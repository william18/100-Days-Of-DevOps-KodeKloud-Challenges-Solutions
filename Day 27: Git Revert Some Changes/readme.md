
### Steps Performed


#### 1. Connect to the server via SSH
```bash
   ssh natsha@ststor01
```

#### 2. Navigate to the repository
```bash
   cd /usr/src/kodekloudrepos/media
```
#### 3. Revert the latest commit
```bash
   git revert HEAD
```

#### 4. Amend the revert commit message to the required one
```bash
   git commit --amend -m "revert media"
```
#### 5. Verify the last commit
```bash
   git log --oneline -1
```