#!/bin/bash

REFERENCE=$GITHUB_REF
PATTERN="^refs\/heads\/(.*)\/(.*)($|\n)"

if [[ $REFERENCE =~ $PATTERN ]]
then
    FILTERED_BRANCH="${BASH_REMATCH[1]}\/${BASH_REMATCH[2]}"
    BRANCH_SUFFIX="${BASH_REMATCH[2]}"
else
    echo "Github reference pattern doesnt match"
fi

echo ::set-output name=branch_suffix::$BRANCH_SUFFIX
echo ::set-output name=filtered_branch::$FILTERED_BRANCH