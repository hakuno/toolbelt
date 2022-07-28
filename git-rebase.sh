CURBRANCH="$(git branch --show-current)"
echo "It is about ${CURBRANCH}"
git checkout master
git fetch origin
git pull
git checkout $CURBRANCH
git rebase origin/master
git push --force origin