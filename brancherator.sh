#!/usr/bin/env bash

BRANCH="$(git branch | grep '*' | tr -d '()' | awk '{print $NF}')"
sed "s/\\\$branch\\\$/${BRANCH}/g" -

