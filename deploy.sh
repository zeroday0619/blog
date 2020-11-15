#!/bin/sh

git add *
git commit -m 'Update | auto deploy'
git push origin master
echo '[sync] zeroday0619/blog --> Done!'

gatsby build
gh-pages -d public -b main -r 'git@github.com:zeroday0619/blog.zeroday0619.dev.git'
echo 'Done!'
