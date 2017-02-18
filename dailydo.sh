#!/bin/sh

# get into operation folder

cd ~/wstudio

# get source file updates
git pull

                            #### 这里是策略填写区 ######
##################################################################################
##############################################################   策略填写区开始
##################################################################################

# 请按下面这条命令的格式加入自己要自动执行的策略
# 先把你自己要运行的Rmd文件保存在wstudio文件夹中，比如你要执行的策略文件为lilei7525.Rmd
# 然后只需要复制黏贴下面这条命令，把"hanmeimei1314.Rmd"改成"lilei7525.Rmd"就好了
Rscript -e 'library("knitr"); knit2html("*.Rmd",force_v1 = TRUE)'



##################################################################################
###############################################################  策略填写区结束
##################################################################################


# remove all html file
rm *.html

# save report
git add --all && git commit -a -m 'better' && git push

# finally
echo " well done! 所有的更改已经更新到作业区https://github.com/wanlier/wstudio"
