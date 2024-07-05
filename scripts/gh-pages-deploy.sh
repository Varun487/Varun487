echo "Starting new deployment..."
git checkout --orphan gh-pages
echo "Building..."
npm run --prefix ./website/ build
git --work-tree ./website/dist add --all
echo "Commiting new changes..."
git --work-tree ./website/dist commit -m 'Deploy'
echo "Pushing to gh-pages..."
git push origin HEAD:gh-pages --force
rm -r ./website/dist
git checkout -f main
git branch -D gh-pages
echo "Successfully deployed!"