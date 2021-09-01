echo "Starting new deployment..."
git checkout --orphan gh-pages
echo "Building..."
npm run --prefix ./personal-site/ build
git --work-tree ./personal-site/dist add --all
echo "Commiting new changes..."
git --work-tree ./personal-site/dist commit -m 'Deploy'
echo "Pushing to gh-pages..."
git push origin HEAD:gh-pages --force
rm -r ./personal-site/dist
git checkout -f main
git branch -D gh-pages
echo "Successfully deployed!"
