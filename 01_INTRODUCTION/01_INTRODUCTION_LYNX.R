#Vamos a hacer un ejemplo muy simple con los datos de la librer�a Forecast en R
#Cargamos la librer�a
library(forecast)

#vamos a visualizar la serie
plot(lynx)

#para ajustar a un ARIMA vamos a llamar al Auto Arima
forecast::auto.arima(lynx)

#viendo lo que un AR2 MA2 nos dar�a el mejor resultado autom�tico, vamos a probar hacer un forecast
#creamos el objeto fc con nuestro modelo
mod<-Arima(lynx, order = c(2,0,2))

#vamos a ver c�mo se ha ajustado
plot(mod$x, col='black')
lines(fitted(mod),col='red')

#Vamos a visualizar el forecast
prediction=forecast(fc, h=10)
plot(prediction)