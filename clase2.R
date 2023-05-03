#Usamos la data base "iris".
data("iris")
attach(iris)
?iris
set <- iris[1:50, 1]
ver <- iris[51:100, 1]
vir <- iris[101:150, 1]
par(mfrow=c(1,2))
#Graficamos la variable "set".
plot(density(set), xlim = c(4, 8.5))
#Agregamos el la densidad de la variable "ver" y "vir".
lines(density(ver))
lines(density(vir))
boxplot(Sepal.Length~Species, ylim = c(4, 8.5))

#Hacemos una grafica con la dataset "chickWeight"
uan=ChickWeight[1:220, 1]
tu=ChickWeight[221:340, 1]
tri=ChickWeight[341:460, 1]
cuatri=ChickWeight[461:578, 1]
par(mfrow=c(1,2))
boxplot(weight~Diet,data=ChickWeight)
plot(density(uan))
lines(density(tu))
lines(density(tri))
lines(density(cuatri))

