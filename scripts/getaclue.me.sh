# Partly taken from https://medium.com/@nielsenramon/automated-deployment-of-jekyll-projects-to-github-pages-using-kickster-and-circle-ci-6ccc0b6cb872#.qxsy1xf1m
# Partly taken from https://github.com/fastlane/docs

# Exit if any subcommand fails.
set -e

echo "Starting deploy to https://getaclue.me"

# Build the docs page locally
export JEKYLL_ENV="production"
bundle exec jekyll build

# Delete old directories (if any)
rm -rf "/tmp/getaclue.me"
# Copy the generated website to the temporary directory
cp -R "_site/" "/tmp/getaclue.me"

# Assuming we are on branch gh-pages
# Check out master and clear all files
git checkout -b master
rm -rf *
cp -R /tmp/getaclue.me/* .

# We need a CNAME file for GitHub
# echo "getaclue.me" > "CNAME"

# Commit all the changes and push it to the remote
git add -A
git commit -m "Deployed with $(jekyll -v)"
git push origin master --force # overwrite anything

# Post a Slack message
# git checkout master

echo "Deployed successfully, check out https://getaclue.me"
echo "Deployed successfully, check out https://getaclue.github.io"
# echo "If you're running this on your local machine, please make sure to reset your git user credentials (username and email) to not be the bot"

exit 0
