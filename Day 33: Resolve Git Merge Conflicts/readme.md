
Updates Made
------------

- **Merge Conflict Resolved:** `story-index.txt` had a conflict when pulling latest changes. Resolved by combining all story titles.
- **Typo Fixed:** In `lion-and-mouse.txt`, "The Lion and the Mooose" was corrected to "The Lion and the Mouse".
- **Story Index Updated:** `story-index.txt` now contains all 4 story titles.

Steps Taken
-----------

```bash

# SSH into the storage server
ssh max@ststor01
# Password: Max_pass123

# Navigate to the repository
cd /home/max/story-blog

# Pull the latest changes from remote
git pull origin master

# Resolve merge conflict in story-index.txt
vi story-index.txt
# (Keep all 4 story titles and remove conflict markers,,<replace Mooose with Mouse save and exit)

# Stage the resolved files
git add story-index.txt 

# Commit the changes
git commit -m "Resolve merge conflict in story-index.txt and fix typo in lion-and-mouse.txt"

# Push the changes to the remote repository
git push origin master
