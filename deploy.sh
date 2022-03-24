#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to github pages
# echo 'b.miea.com' > CNAME

git config --global user.name "咩啊"
git config --global user.email "meiyi0909@163.com"

git init
git add -A
git commit -m '来自github actions的自动部署'
git push -f git@github.com:miea0909/blog.git master:gh-pages # 推送到github gh-pages分支

cd -
rm -rf docs/.vuepress/dist
