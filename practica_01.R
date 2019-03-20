#asignar seq a un objeto
mi_seq <- seq(1,50)
mi_seq2 <- seq(51,100)


#asignar nueva matriz

matriz <- matrix(seq(1,9),nrow=3,ncol=3)

numeros <- c(1,2,3)

texto <- c("hola","como","estas")

booleanos <- c(TRUE,FALSE,TRUE)

data_frame <- data.frame(numeros,texto,booleanos)


#seleccionar celdas dentro de una matriz

matriz[1:2,1:2]

#seleccionar solo una celda

matriz [1,2]

#aplicar un factor sobre la matriz

matriz*10

#aplicar un factor sobre una seleccion dentro de la matriz

matriz[1:3,1:2]*10

#condiciones para seleccionar elementos

10>5
matriz
matriz[matriz>3]<-999
matriz



#instalar un paquete raster

install.packages("raster")

#cargar el paquete raster

library("raster")


raster_matriz <- raster(matriz)
raster_matriz

#graficar el raster

plot(raster_matriz)

#colocar un punto en el plot de la matriz

points(0.25,0.75,pch=21,bg="red",cex=2)



install.packages("rgdal")

#ver la ayuda

?plot

rapid_eye_1 <- brick("F:/Lartundo/BigData/curso_r_conabio/curso_r_conabio/1crop.tif")

rapid_eye_1

#visulaizar las bandas RGB

plotRGB(rapid_eye_1,r=3,g=2,b=1)


#Utilizando la función subset() podemos obtener una o más bandas de una imagen multiespectral.
#Por ejemplo podemos extraer las bandas red (VIS) y near infrared (NIR)

VIS <- subset(rapid_eye_1,subset=3)

NIR <- subset(rapid_eye_1,subset=5)

par(mfrow=c(1,2))

plot(VIS,main="VIS")
plot(NIR,main="NIR")



rapid_eye_1_ndvi <- (NIR-VIS)/(NIR+VIS)

plot(rapid_eye_1_ndvi,main="ndvi")

plot(ndvi)


?wrriteRaster

rf <-writeRaster(ndvi,
                 filename="ndvi.tif",
                 formate="GTiff",overwrite=TRUE)

rf







