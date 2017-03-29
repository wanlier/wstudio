#!/bin/sh

git add --all

#在每次运行前，请大家在我的名字是后面写上你的名字
git commit -a -m "我的名字是 "

git push

# finally
echo "数据已经更新到github！"
