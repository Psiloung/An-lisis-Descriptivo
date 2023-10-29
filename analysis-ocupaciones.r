# Cargar datos, si está cargando los datos, cambiar la url, ya que esta es en donde tengo la base de datos
ocupaciones <- read.csv("D:\\Cursos\\Segundo semestre 2023\\Ciencia de datos\\Analisis Descriptivo\\ocupaciones.csv", sep=";")

# Análisis de género
frecuencia_absoluta_gender <- table(ocupaciones$gender)
frecuencia_relativa_gender <- prop.table(frecuencia_absoluta_gender)

# Tablas de frecuencia
tabla_frecuencia <- data.frame(
  'Frecuencia Absoluta' = as.numeric(frecuencia_absoluta_gender),
  'Frecuencia Relativa' = round(frecuencia_relativa_gender, 2)
)
tabla_frecuencia

# Gráfico de barras para ocupaciones
frecuencia_absoluta_occupation <- table(ocupaciones$occupation)
frecuencia_relativa_occupation <- prop.table(frecuencia_absoluta_occupation)

# Tabla de frecuencia para ocupaciones
tabla_frecuencia_occupation <- data.frame(
  'Frecuencia Absoluta' = as.numeric(frecuencia_absoluta_occupation),
  'Frecuencia Relativa' = round(frecuencia_relativa_occupation, 2)
)
tabla_frecuencia_occupation

# Gráfico de barras para ocupaciones
barplot(frecuencia_absoluta_occupation, col='skyblue', main='Gráfico Absoluto de Ocupaciones totales', xlab='Ocupación', ylab='Frecuencia Absoluta')

# Gráfico bidimensional de género y ocupación
grafico_bidimensional <- table(ocupaciones$gender, ocupaciones$occupation)
barplot(grafico_bidimensional, col=rainbow(21), beside=TRUE, main='Gráfico Bidimensional de Género y Ocupación', xlab='Género', ylab='Frecuencia Absoluta', legend.text=rownames(grafico_bidimensional), args.legend=list(x='topright', bty='n'))

# Gráfico circular de género y ocupaciones
par(mfrow=c(7, 3), mar=c(1,1,1,1))  # 7 filas, 3 columnas
colores <- c('skyblue','lightcoral','lightgreen','orange','pink','blue','green','red','purple','brown','grey','yellow','gold','turquoise','lavender','beige','silver','cyan','coral','salmon','teal')

# Iteración sobre cada categoría de ocupación y dibujar el gráfico circular
for (i in colnames(grafico_bidimensional)) {
  pie(grafico_bidimensional[,i], labels=rownames(grafico_bidimensional), col=colores, main=paste('Género y Ocupación:', i))
}
par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1)


# Boxplot de edad
boxplot(ocupaciones$age, main='Boxplot de Edad', xlab='Edad')

# Histograma de edad
hist(ocupaciones$age, main='Histograma de Edad', xlab='Edad', ylab='Frecuencia', col='skyblue', breaks=20)

# Medidas de tendencia central y dispersión para edad
media_edad <- mean(ocupaciones$age)
mediana_edad <- median(ocupaciones$age)
tabla_frecuencia_edad <- table(ocupaciones$age)
moda_edad <- as.numeric(names(tabla_frecuencia_edad)[tabla_frecuencia_edad == max(tabla_frecuencia_edad)])

# Medidas de posición
cuartiles_edad <- quantile(ocupaciones$age, c(0.25, 0.5, 0.75))
q_25_edad <- cuartiles_edad[1]
q_50_edad <- cuartiles_edad[2]
q_75_edad <- cuartiles_edad[3]

# Medidas de dispersión
rango_edad <- max(ocupaciones$age) - min(ocupaciones$age)
rango_intercuartilico_edad <- IQR(ocupaciones$age)
desviacion_tipica_edad <- sd(ocupaciones$age)
varianza_edad <- var(ocupaciones$age)

# Tabla de medidas
tabla_datos_edad <- data.frame(
  'Estadística' = c('Media', 'Mediana', 'Moda', 'Cuartil Q25', 'Cuartil Q50', 'Cuartil Q75', 'Rango', 'Rango intercuartilico', 'Desviación típica', 'Varianza'),
  'Valor' = c(round(media_edad, 2), mediana_edad, moda_edad, q_25_edad, q_50_edad, q_75_edad, rango_edad, rango_intercuartilico_edad, round(desviacion_tipica_edad, 2), round(varianza_edad, 2))
)
rownames(tabla_datos_edad) <- NULL
colnames(tabla_datos_edad) <- NULL

tabla_datos_edad