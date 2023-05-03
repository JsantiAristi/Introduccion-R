#Ctrl + shift + c para comentar

#Creamos una tabla colocando los datos.
TSL=rep(c(0.1,0.1,0.2),each=3)
acido=rep(c("no","si","si"),each=3)
tiempo=rep(c(5,15,30),times=3)
respuesta=(c(44.48,45.52,45.10,50.56,52.35,51.95,47.09,51.33,49.74)) 
d = data.frame(TSL,acido,tiempo,respuesta)
View(d)

#Insertamos los datos llamados "Orange".
data(Orange)
attach(Orange)
View(Orange)
?Orange
summary(Orange)

#Hacemos una gráfica de los datos "cars".
data(cars)
attach(cars)
head(cars) # muestra los primero 6 elementos de la base de datos.
par(mfrow=c(1,2)) #Sirve para separar los gráficos, y poder mostrar dos
hist(cars$speed) #Primera gráfica
hist(cars$dist) #Segunda gráfica
View(cars)

# Instalar paquetes de GGPLOT para graficas.
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("hrbrthemes")
install.packages("viridis")
library(ggplot2)
library(tidyverse)
library(hrbrthemes)
library(viridis)

#Hacemos nuestro primer boxPlot
data("ToothGrowth")
attach(ToothGrowth)
par(mfrow=c(1,1)) #Sirve para separar los gráficos, y poder mostrar dos
boxplot(len~dose)

#Hacemos un boxplot con colores con la libreria "Orange".
ggplot(Orange, aes(x=Tree, y=circumference, fill=Tree)) + geom_boxplot()

#Hacemos un boxplot con la documentación de ggplot.
ggplot(Orange, aes(x=Tree, y=circumference, fill=Tree)) +
  geom_boxplot() +
  scale_fill_viridis(discrete = TRUE, alpha=0.6) +
  geom_jitter(color="black", size=0.8, alpha=0.9) +
  theme_ipsum() +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("A boxplot with jitter") +
  xlab("Tree")

