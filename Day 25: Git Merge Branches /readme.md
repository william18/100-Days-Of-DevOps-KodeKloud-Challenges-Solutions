
## Steps

1. **Navigate to the repository**
   ```bash
   cd /usr/src/kodekloudrepos/cluster
   ```

2. **Ensure you are on the `master` branch**
   ```bash
   git checkout master
   ```

3. **Create and switch to the new branch `datacenter`**
   ```bash
   git checkout -b datacenter
   ```

4. **Copy the file `index.html` into the repo**
   ```bash
   cp /tmp/index.html .
   ```

5. **Stage and commit the file**
   ```bash
   git add index.html
   git commit -m "Add index.html file to datacenter branch"
   ```

6. **Switch back to `master` branch**
   ```bash
   git checkout master
   ```

7. **Merge the `datacenter` branch into `master`**
   ```bash
   git merge datacenter
   ```

8. **Push both branches (`master` and `datacenter`) to the remote `origin`**
   ```bash
   git push origin master
   git push origin datacenter
   ```

---
