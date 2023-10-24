#下载包
install.packages("collplot")
install.packages("ggcorrplot")
install.packages("psych")
install.packages("vcd")
#下载包
library(corrplot)
library(ggplot2)
library(ggcorrplot)
library(vcd)
library(psych)
#library(ggrepel)
#数据导入
data <- read.table(file='D:/R script file/lanxitrait.txt',header=TRUE)
dim(data) #数组维度
data <- as.matrix(data) #利用as.matrix()将所需数据集转换为matrix格式，才可在corrplot中跑
data=data.frame(scale(data)) #数据标准化
head(data)
#相关性计算
data <- cor(data,method = "pearson") #pearson
round(data,2)
#相关性热图绘制
library(corrplot)
data <- cor(data,method = "pearson") #pearson
corrplot(data,method="pie",type="upper",title = "speraman",insig="p-value",pch=4,diag = T,tl.cex = 1,tl.srt = 45,tl.pos="lt")
corrplot(data,method="number",type="lower",tl.pos="n",tl.cex=0.7,add=T)
?corrplot()

#下面是一些参数设置
          outline=F,
          diag=TRUE,
          mar=c(0,0,0,0),http://127.0.0.1:28487/graphics/f252fda2-b172-482e-a675-dc46f9b5205d.png
          bg="white",
          add="FALSE",
          is.corr=TRUE,
          addgrid.col="darkgray",
          addCoef.col = NULL,
          addCoefasPercent = FALSE,
          order="original",
         hclust.method = "complete",
          addrect = NULL,
         rect.col = "black",
         rect.lwd = 2,
         tl.pos=NULL,
         tl.cex = 1,
         tl.col = "black",
         cl.pos=NULL
)
         
       
         
