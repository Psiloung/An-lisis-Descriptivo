# Análisis Descriptivo

## Tipos de variables para los dos set de datos.

### 1. ocupaciones.csv

#### 1.1. age:
Tipo de variable: Cuantitativo discreto.

La age o edad es un valor numérico, pero en este caso, se trata de una variable discreta ya que se presenta como un número entre 23, 53, 23, etc. La edad se cuenta en unidades específicas y no puede tener valores fraccionarios.

#### 1.2. gender:
Tipo de variable: Categórica nominal.

El gender o género es una variable categórica ya que representa categorías o grupos sin un orden inherente. En este caso, las categorías son "M" y "F".

#### 1.3. occupation:
Tipo de varible: Categórica nominal.

La occupation o ocupación es otra variable categórica nominal. Las ocupaciones representan categorías sin un orden específico. No hay una jerarquía intrínseca entre estas categorías.

###### Observación: user_id no se considerará.

### 2. sismos.csv
#### 2.1. Fecha:
Tipo de variable: Ordinal.

La fecha es una variable temporal que indica el momento en que ocurrió el sismo. Aunque los datos están en formato de fecha, se considera ordinal porque hay un orden cronológico, pero las fechas no tienen una unidad uniforme entre ellas.

#### 2.2. Hora:
Tipo de variable: Cuantitativa discreta.

La hora representa el momento del día en que ocurrió el sismo y se presenta como un número entero. Es cuantitavo discreto porque está medida en unidades discretas de tiempo.

#### 2.3. latitude:
Tipo de varible: Cuantitativa continua.

La latitude o latitud es una variable numérica que representa la ubicación geográfica. Es cuantitativa continua porque pueden tomar un rango continuo de valores.

#### 2.4. longitude:
Tipo de varible: Cuantitativa continua.

Es el mismo caso anterior, ya que representa prácticamente lo mismo.

#### 2.5. depth:
Tipo de varible: Cuantitativa continua.

La depth o profundidad del sismo es una medida numérica y continua, ya que puede tomar un rango continuo de valores.

#### 2.6. mag:
Tipo de varible: Categórica nominal.

La mag o magnitud es una variable categórica que indica el método utilizado para calcular la magnitud del sismo. Es nominal porque representa categorías sin un orden intrínseco.

###### Observación: Solo se considerará la hora (Hora) y no los minutos y segundos (Hora exacta) y finalmente, no se considerará magType.
