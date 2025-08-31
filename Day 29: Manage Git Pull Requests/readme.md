### 1. Access the Repository

SSH into the storage server as Max:

```bash
   ssh max@ststor01
   # Password: Max_pass123
   cd story-blog
```

Check available branches:

```bash
   git branch -a
```

Check commit history:

```bash
   git log --oneline --all --graph --decorate
```

- Confirm Max’s story exists in `story/fox-and-grapes`.
- Confirm previous commits and authors (Sarah, other stories).

Switch to Max’s branch:

```bash
   git checkout story/fox-and-grapes
   git log --oneline
```

- Latest commit should be: `Added fox-and-grapes story`.

---

### 2. Create Pull Request (PR) in Gitea

1. Open the **Gitea web portal** in a browser.
2. Login as Max:
    - Username: `max`
    - Password: `Max_pass123`
3. Navigate to the `story-blog` repository.
4. Click **Pull Requests → New Pull Request**.
5. Set the branches correctly:
    - **Merge into:** `master` (destination branch)
    - **Pull from:** `story/fox-and-grapes` (source branch)
6. PR title: `Added fox-and-grapes story`
7. (Optional) Add description: e.g., "This PR adds the Fox and Grapes story by Max."
8. Submit PR.

> ⚠️ If the message says "These branches are equal," double-check that the source branch is `story/fox-and-grapes` and the destination is `master`.

---

### 3. Assign Reviewer in Gitea UI

1. Open the newly created PR.
2. Find the **Reviewers** section (usually on the right side).
3. Add **Tom** as a reviewer.
4. Max can leave comments or notes for the reviewer if needed.

---

### 4. Review and Merge as Tom

1. **Log out Max** from Gitea.
2. Login as Tom:
    - Username: `tom`
    - Password: `Tom_pass123`
3. Open the PR (`Added fox-and-grapes story`).
4. Review the changes:
    - Check files added or modified
    - Check commit messages and authors
5. Click **Approve** to approve the PR.
6. Click **Merge** → confirm merge.

✅ At this point, Max’s story is now part of the `master` branch.

---

### 5. Verify Merge in Terminal

Switch to master branch and pull latest changes:

```bash
   git checkout master
   git pull origin master
   git log --oneline --graph --decorate
```

- Confirm Max’s commit `Added fox-and-grapes story` is now included.
- Ensure local master is in sync with remote.




