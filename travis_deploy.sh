# Get to the Travis build directory, configure git and clone the repo
cd $HOME
git config --global user.email "travis@travis-ci.org"
git config --global user.name "travis-ci"
git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/johntfoster/johntfoster-professional-website gh-pages > /dev/null

# Commit and Push the Changes
cd gh-pages
cp -Rf $HOME/output .
git add -A
git commit -m "Travis CI autocommit from travis build $TRAVIS_BUILD_NUMBER"
git push -fq origin gh-pages > /dev/null
