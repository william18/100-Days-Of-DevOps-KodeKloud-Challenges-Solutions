## README: Cloning /opt/blog.git to /usr/src/kodekloudrepos

This guide provides step-by-step instructions to safely clone the Git repository `/opt/blog.git` into `/usr/src/kodekloudrepos` on the Storage Server in the Stratos Datacenter, ensuring no modifications are made to the original repository.

---

## Step 1: Ensure the target directory exists

\`\`\`bash
sudo mkdir -p /usr/src/kodekloudrepos
cd /usr/src/kodekloudrepos
\`\`\`

This creates the target directory if it does not already exist and navigates into it.

---

## Step 2: Clone the repository normally

\`\`\`bash
sudo git clone /opt/blog.git
\`\`\`

- This will create a subfolder `/usr/src/kodekloudrepos/blog/` containing the repository.
- Using a normal clone ensures the repository structure and working tree are present.
- The original repository `/opt/blog.git` remains unchanged.

---
