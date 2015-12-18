#!/bin/bash

set -e -o pipefail

#dub test --compiler=${DC}
R -e 'library(rmarkdown);render("vignettes/inference.Rmd");render("vignettes/vaccination.Rmd");'

if [[ $TRAVIS_BRANCH == 'master' ]] ; then
    if [ ! -z "$GH_TOKEN" ]; then
        git checkout master
        mkdir docs 
#        dub build -b docs --compiler=${DC}
        cd docs
#        mkdir images
        cp ../vignettes/*.html ./
#        cp ../*.{png,svg} images/
        git init
        git config user.name "Travis-CI"
        git config user.email "travis@nodemeatspace.com"
        git add .
        git commit -m "Deployed to Github Pages"
##        #git push --force --quiet "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" HEAD:gh-pages > /dev/null 2>&1
        git push --force --quiet "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" master:gh-pages > /dev/null 2>&1
#        #git push --force "https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}" HEAD:gh-pages
    fi
fi
