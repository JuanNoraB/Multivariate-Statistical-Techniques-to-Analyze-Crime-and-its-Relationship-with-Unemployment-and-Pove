#Pobreza 2019


p <- read.csv("pobreza2019/pobreza2019.csv",header=TRUE,row.names = 1)

p <- scale(p)


#-------------------------- encontrar k-----------------------------------

# k =4 o 3 con elbow
fviz_nbclust(p, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(p, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(p, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------------------------------------------------------------

#--------------------k-means------------------------
kp <- kmeans(p, 3, nstart = 250)

fviz_cluster(kp, data = p,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())


#-------------------bibplot------------------------
bipp = HJ.Biplot(p)
plot(bipp)
bip1=AddCluster2Biplot(bipp, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
summary(bipp)
#*************************************************************************

#Pobreza 2021
p1 <- read.csv("pobreza2019/pobreza2021.csv",header=TRUE,row.names = 1)

p1 <- scale(p1)

#-------------------------- encontrar k-----------------------------------

# k =5 con elbow
fviz_nbclust(p1, kmeans, method = "wss") +
  geom_vline(xintercept = 5, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=3
fviz_nbclust(p1, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(p1, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------------------------------------------------------------

#--------------------k-means------------------------
kp1 <- kmeans(p1, 3, nstart = 25)

fviz_cluster(kp1, data = p1,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())


summary(kp1)
#-------------------bibplot------------------------
bipp1 = HJ.Biplot(p1)
plot(bipp1)
bip1=AddCluster2Biplot(bipp1, ClusterType="km",NGroups = 2)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)

#*************************************************************************


#Criminalidad 2019x100mil
#************************************************************************
c100 <- read.csv("criminalidad_2019x100/crimen2019x100.csv",header=TRUE,row.names = 1)

c100 <- scale(c100)

#-------------------------- encontrar k-----------------------------------

# k =5 con elbow
fviz_nbclust(c100, kmeans, method = "wss") +
  geom_vline(xintercept = 5, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=3
fviz_nbclust(c100, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 3
fviz_nbclust(c100, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------------------------------------------------------------

#--------------------k-means------------------------
kc100 <- kmeans(c100, 3, nstart = 25)

fviz_cluster(kc100, data = df,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())


#-------------------bibplot------------------------
bipc100 = HJ.Biplot(c100)
plot(bipc100)
bip1=AddCluster2Biplot(bipc100, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)

#*************************************************************************
#Criminalidad 2021x100iml
c100_1 <- read.csv("crimen2021x100.csv",header=TRUE,row.names = 1)
c100_1 <- scale(c100_1)


#-------------------------- encontrar k-----------------------------------

# k =4 con elbow
fviz_nbclust(c100_1, kmeans, method = "wss") +
  geom_vline(xintercept = 5, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(c100_1, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(c100_1, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")
#
#--------------------k-means------------------------
kc100_1 <- kmeans(c100_1, 3, nstart = 25)

fviz_cluster(kc100_1, data = c100_1,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipc100_1 = HJ.Biplot(c100_1)
plot(bipc100_1)
bip1=AddCluster2Biplot(bipc100_1, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************


#Criminalidad 2019
c <- read.csv("criminalidad_2019/crimen2019.csv",header=TRUE,row.names = 1)
c <- scale(c)


#-------------------------- encontrar k-----------------------------------

# k =2 con elbow
fviz_nbclust(c, kmeans, method = "wss") +
  geom_vline(xintercept = 2, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(c, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 3
fviz_nbclust(c, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------k-means------------------------

kc <- kmeans(c, 3, nstart = 25)

fviz_cluster(kc, data = c,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipc = HJ.Biplot(c)
plot(bipc)
bip1=AddCluster2Biplot(bipc, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************

#Criminalidad 2021

c1 <- read.csv("criminalidad_2021/crimen2021.csv",header=TRUE,row.names = 1)
c1 <- scale(c1)


#-------------------------- encontrar k-----------------------------------

# k =2 con elbow
fviz_nbclust(c1, kmeans, method = "wss") +
  geom_vline(xintercept = 2, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(c1, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")


#con gap sale 3
fviz_nbclust(c1, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------k-means------------------------
kc1 <- kmeans(c1, 3, nstart = 25)

fviz_cluster(kc1, data = c1,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipc1 = HJ.Biplot(c1)
plot(bipc1)
bip1=AddCluster2Biplot(bipc1, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************


#Criminalidad-Pobreza-completo-2019

cp <- read.csv("crimen_empleo_2019/empleo_crimen2019.csv",header=TRUE,row.names = 1)
head(cp)
cp <- scale(cp)


#-------------------------- encontrar k-----------------------------------

# k =3 con elbow pero no se ve bien
fviz_nbclust(cp, kmeans, method = "wss") +
  geom_vline(xintercept = 3, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=5
fviz_nbclust(cp, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(cp, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------k-means------------------------
kcp <- kmeans(cp, 3, nstart = 250)

fviz_cluster(kcp, data = cp,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipcp = HJ.Biplot(cp)
plot(bipcp)
bip1=AddCluster2Biplot(bipcp, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************


#Criminalidad-Pobreza-completo-2021
cp1 <- read.csv("empleo_crimen2021.csv",header=TRUE,row.names = 1)
cp1 <- scale(cp1)


#-------------------------- encontrar k-----------------------------------

# k =3 o 4 con elbow
fviz_nbclust(cp1, kmeans, method = "wss") +
  geom_vline(xintercept = 3, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(cp1, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(cp1, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------k-means------------------------
kcp1 <- kmeans(cp1, 3, nstart = 1000)

fviz_cluster(kcp1, data = cp1,
             palette = c("#2E9FDF","#00AFBB","#E7B800"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipcp1 = HJ.Biplot(cp1)
plot(bipcp1)
bip1=AddCluster2Biplot(bipcp1, ClusterType="us",Groups = as.factor(kcp1$cluster))
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************


#crimen_pobreza2019 reducido

cp1 <- read.csv("pc2019_reducido/pc2019.csv",header=TRUE,row.names = 1)
head(cp1)
#head(cp)
cp1 <- scale(cp1)


#-------------------------- encontrar k-----------------------------------

# k =3 o 4 con elbow
fviz_nbclust(cp1, kmeans, method = "wss") +
  geom_vline(xintercept = 3, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(cp1, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(cp1, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")


#--------------------k-means------------------------
kcp1 <- kmeans(cp1, 3, nstart = 1000)


fviz_cluster(kcp1, data = cp1,
             palette = c("#2E9FDF","#00AFBB","#E7B800","#E7B811"),ellipse.type = "convex",
             ggtheme = theme_bw())

km(
  
)
#-------------------bibplot------------------------
bipcp1 = HJ.Biplot(cp1)
plot(bipcp1)

bip1=AddCluster2Biplot(bipcp1, ClusterType="us",Groups = as.factor(kcp1$cluster))
#bip1=AddCluster2Biplot(bipcp1, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************

summary(bipcp1)

bip1=AddCluster2Biplot(bipcp1, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)

#Individuals

bipcp1$RowContributions
bipcp1$RowContributions

barplot(bipcp1$RowContributions[,1] + bipcp1$RowContributions[,2] +bipcp1$RowContributions[,3],
        main = "Quality of Representation for Individuals\n (Crime and poverty-employment of 2019)",
        xlab = "Quality of Representation",
        names.arg = c(rownames(bipcp1$RowContributions)),
        col = "dodgerblue4",
        xlim = c(0,100),
        las=1,
        horiz = TRUE)


#Variables
barplot(bipcp1$ColContributions[,1] + bipcp1$ColContributions[,2] + bipcp1$ColContributions[,3],
        main = "Quality of Representation for Variables\n (Crime and poverty-employment of 2019)",
        xlab = "Quality of Representation",
        names.arg =  c(rownames(bipcp1$ColContributions)),
        col = "chartreuse3",
        xlim = c(0,100),
        las=1,
        horiz = TRUE)


d <- bipcp1$ColContributions[,1] + bipcp1$ColContributions[,2]+ bipcp1$ColContributions[,3]
par(mar=c(5,6,2,2), oma=c(0,0,0,0), las=1)
b <- barplot(d,horiz = TRUE,col = "darkolivegreen2",
             main = "Quality of Representation for Variables\n (Crime, unemployment, and poverty \n 2019)",
             ylab = "", xlab="",
             names.arg =  c(rownames(bipcp1$ColContributions)),
             xlim = c(0,115),
             cex.axis = 0.7,
             cex.names = 0.7,
             cex.main = .8)
mtext(side=1, text="Quality of Representation", line=2.5, cex=0.7)
mtext(side=2, text="Variable", line=3.5, las=0, cex=0.7)
text(y=b, x=d, pos=4,labels= d, cex=0.7)





par(mar=c(2,0.3,2.5,1))
par(fig=c(0,6.3,0,10)/10)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
par(fig=c(6.7,10,0,10)/10)
par(new=T, las=1, mar=c(2,1,0,0), oma=c(2,0.5,2,0.3))
#par(mar=c(5,5,2,2), , )
d <- bipcp1$RowContributions[,1] + bipcp1$RowContributions[,2]+bipcp1$RowContributions[,3]
b <- barplot(d,horiz = TRUE, col = "cornflowerblue",
             ylab = "", xlab="",
             cex.names = 0.67,
             cex.axis = 0.67,
             names.arg = rownames(bipcp1$RowContributions),
             xlim = c(0,119.99))
mtext(side=1, text="Quality of Representation", line=2.5, cex = 0.67)
mtext(side=2, text="Province", line=3, las=0, cex = 0.67)
text(y=b, x=d, pos=4, labels= d, cex = 0.67)

#---------------------------------------------------------------------

#Criminalidad-Pobreza-reducido-2021
cp21 <- read.csv("pc2021_reducido/pc2021.csv",header=TRUE,row.names = 1)
head(cp21)
#head(cp)
cp21 <- scale(cp21)


#-------------------------- encontrar k-----------------------------------

# k =3 o 4 con elbow
fviz_nbclust(cp21, kmeans, method = "wss") +
  geom_vline(xintercept = 3, linetype = 2)+
  labs(subtitle = "Elbow method")

#con silhouette method k=2
fviz_nbclust(cp21, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

#con gap sale 2
fviz_nbclust(cp21, kmeans, nstart = 100,  method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

#--------------------k-means------------------------
kcp21 <- kmeans(cp21, 3, nstart = 1000)


fviz_cluster(kcp21, data = cp21,
             palette = c("#2E9FDF","#00AFBB","#E7B800","#E7B811"),ellipse.type = "convex",
             ggtheme = theme_bw())

#-------------------bibplot------------------------
bipcp21 = HJ.Biplot(cp21)
plot(bipcp21)
bip1=AddCluster2Biplot(bipcp21, ClusterType="us",Groups = as.factor(kcp21$cluster))
#bip1=AddCluster2Biplot(bipcp21, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
#******************************************************************

summary(bipcp21)


bip1=AddCluster2Biplot(bipcp21, ClusterType="km",NGroups = 3)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)

#Individuals

barplot(bipcp21$RowContributions[,1] + bipcp21$RowContributions[,2] + bipcp21$RowContributions[,3],
        main = "Quality of Representation for Individuals\n (Crime and poverty-employment of 2021)",
        xlab = "Quality of Representation",
        names.arg = c(rownames(bipcp21$RowContributions)),
        col = "dodgerblue4",
        xlim = c(0,100),
        las=1,
        horiz = TRUE)


#Variables
barplot(bipcp21$ColContributions[,1] + bipcp21$ColContributions[,2] + bipcp21$ColContributions[,3],
        main = "Quality of Representation for Variables\n (Crime and poverty-employment of 2021)",
        xlab = "Quality of Representation",
        names.arg =  c(rownames(bipcp21$ColContributions)),
        col = "chartreuse3",
        xlim = c(0,100),
        las=1,
        horiz = TRUE)



d <- bipcp21$ColContributions[,1] + bipcp21$ColContributions[,2]+ bipcp21$ColContributions[,3]
par(mar=c(5,6,2,2), oma=c(0,0,0,0), las=1)
b <- barplot(d,horiz = TRUE,col = "darkolivegreen2",
             main = "Quality of Representation for Variables\n (Crime, unemployment, and poverty \n 2021)",
             ylab = "", xlab="",
             names.arg =  c(rownames(bipcp21$ColContributions)),
             xlim = c(0,115),
             cex.axis = 0.7,
             cex.names = 0.7,
             cex.main = .8)
mtext(side=1, text="Quality of Representation", line=2.5, cex=0.7)
mtext(side=2, text="Variable", line=3.5, las=0, cex=0.7)
text(y=b, x=d, pos=4,labels= d, cex=0.7)

#---------------------------------------------------------------
par(mar=c(2,0.3,2.3,1.1))
par(fig=c(0,6.3,0,10)/10)
plot(bip1, mode="a", margin=0.1, PlotClus=TRUE)
par(fig=c(6.7,10,0,10)/10)
par(new=T, las=1, mar=c(2,1,0,0), oma=c(2,0.5,2,0.3))
#par(mar=c(5,5,2,2), , )
d <- bipcp21$RowContributions[,1] + bipcp21$RowContributions[,2]+bipcp21$RowContributions[,3]
b <- barplot(d,horiz = TRUE, col = "cornflowerblue",
             ylab = "", xlab="",
             cex.names = 0.67,
             cex.axis = 0.67,
             names.arg = rownames(bipcp21$RowContributions),
             xlim = c(0,119.99))
mtext(side=1, text="Quality of Representation", line=2.5, cex = 0.67)
mtext(side=2, text="Province", line=3, las=0, cex = 0.63)
text(y=b, x=d, pos=4, labels= d, cex = 0.67)

