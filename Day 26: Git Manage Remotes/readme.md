##### Update /usr/src/kodekloudrepos/beta Repository

```bash
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/beta
git remote add dev_beta /opt/xfusioncorp_beta.git
cp /tmp/index.html .
git add index.html
git commit -m "Add index.html file"
git push dev_beta master
```