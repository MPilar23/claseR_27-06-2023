#PRACTICA 1
#creamos una función qu sume 10 a un valor
sumar10<-function(x){
  x+10
}
x=20
sumar10(20)

compara(8,15)



#PRACTICA 4
#cREAR UNA FUNCIÓN ÑQUE NOS CALCULE EL PRECIO NETO DE UN IMPORTE SEGÚN ESTOS DESCUENTOS,
#ES DECIR, YO LE PASARÉ 1000 Y ME DEVOLVERÁ 700 (YA EL PRECIO NETO CON EL DESCUENTO)
#SI EL IMPORTE ES MENOR DE 2500 EL DESCUENTO SERÁ DEL 30%
#SI EL IMPORTE ESTÁ ENTRE DE 2500 Y 10000 EL DESCUENTO SERÁ DEL 40%
#SI EL IMPORTE ES MAYOR DE 10000 EL DESCUENTO SERÁ DEL 50%

precioneto<-function(i){
  if (i<2500){
    i-i*0.3
  }
  if (i>10000){
    i-i*0.5
  }
  else
    i-i*0.4
}

precioneto(1000)


#Función Switch, es para coger un valor en función de su posición.

valor<-switch(x,"primera posicion", "segunda posicion", "tercera posicion")
x=1
valor
              
              
#PRACTICA 5: VAMOS A CREAR UNA FUNCIÓN PARA QUE PASÁNDOLE UN NÚMERO ENTRE EL 1 Y EL 12
#NOS DEVUELVA EL MES DEL AÑO EN LETRAS (usando swich) controlar los números fuera de este rango.
mes_letras<-function(mes){
  if (mes<1){
    print("Valor no válido")
  } else if (mes>12){
    print("Valor no válido")
  } else {
    valor<-switch (mes,"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
    valor
    }
}
mes_letras(8)


#Los operadores lógicos son AND y OR
#OR se representa en | (se escribe con la tecla AltGr+1)
#El OR devuelve verdadero si se cumple una de las condiciones que se analizan, si no se cumple nunguna da False.
#El AND se representa en &
cliente<-"Cliente1"
ventas<--5000
if (cliente=="Cliente1" & ventas>3000){
  print("Haré Dto%")
} else {
  print("No haré Dto%")
}

#En el caso numérico, con el AND puedo hacer un ENTRE.
X=7
if (x>=1 & x<=12){
  print("podría ser un mes")
} else {
  print("No puede ser un mes")
}


#PRACTICA : Mediante dos vectores de datos 
#unidades<-c(12,25,33,48,65,36,18,63)
#importes<-c(3548,6354,7106,5983,3724,1687,4358,2964)
#haremos una función para pasar los diferentes elementos de los vectores de manera que devuelva para cada uno
#de ellos "Hacer descuento", si las unidades son > 30 o el importe >4000, en caso contrario "No hacer Dto%"
unidades<-c(12,25,33,48,65,36,18,63)
importes<-c(3548,6354,7106,5983,3724,1687,4358,2964)
opciondescuento<-function(x){
  if (x<1){
    print("Valor no válido")
  }
  if (x>=1 | x<9){
  u<-switch(x,unidades)
  i<-switch(x,importe)
    if (u>30) | (i>4000){
    print("Hacer descuento") 
    } else{
    print ("No hacer descuento") 
    }
  if (x>9){
    print("Valor no válido")
  }
}

#Los bucles en R, ¿Qué es un bucle?
#es un código que se repite hasta que se cumple una condición dada
#Cada vez que se repite el código es una iteración
#Tenemos 2 tipos de bucles: los bucles FINITOS son aquellos que van a terminar sí o sí,
#porque conocemos de antemano el número de iteraciones que tendrá, en este caso hablamos del bucle FOR.
#el bucle FOR tiene asociada una variable.
#Los bucles INFINITOS, son aquellos que puede que terminen o que no, en este caso usaremos el bucle WHILE.
#el bucle WHILE no tiene asociada ninguna variable.

  iter<-1
  for (i in 30:44){
  print(paste("El valor de i es",i,"el número de iteración es",iter))
    iter<-iter+1
}

iter<-1
lista<-c("Queso","Leche","Pan","Carne")
for (i in lista){
  print(paste("El valor de la lista es",i,"el numero de iteración es",iter))
  iter<-iter+1
}

              
#PRACTICA 7: MEDIANTE UN VECTOR DE DATOS CON LOS DIAS DE LA SEMANA Y UN BUCLE FOR,
#IMPRIMIR PARA CADA VALOR DEL VECTOR
#"El 1 día de la semana es Lunes", "El 2 dïa de la semana es Martes", etc..

#PRACTICA 8:  MEDIANTE UN VECTOR DE DATOS CON LOS DIAS DE LA SEMANA Y UN BUCLE FOR,
#IMPRIMIR PARA CADA VALOR DEL VECTOR
#"El PRIMER día de la semana es Lunes", "El SEGUNDO dïa de la semana es Martes", etc..
iter<-1
diasemana<-c("Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo")
for (i in diasemana){
  valor<-switch(iter,"primer","segundo","tercer","cuarto","quinto","sexto","séptimo")
  print(paste("El",valor,"dia de la semana es",i))
  iter<-iter+1
}

#Còmo salir de un bucle: con la instrucción BREAK,
#eN ESTE CASO LE VOY A DECIR, DE LA LISTA DIASEMANA IMPRIME HASTA EL JUEVES
for (i in diasemana){
  if (i=="Jueves"){
    next
  }else{
      print(i)
  }
}
#Cómo saltar una iteración, es con NEXT, imprimir todos los días menos el jueves

#PRACTICA 9: Mediante el vector de datos meses (Enero-Diciembre)
#Imprimir con un bucle for el texto "El primer mes del año es E·ne3ro"
#Hasta el mes de Junio incluido.

#PRACTICA 10: Mediante el vector de datos meses (Enero-Diciembre)
#Implrimir con un bucle for el tesxto "jJEl primer mdes dela o es e3nero"
#menos los meses de Marzo, Julio, Octubre.


meses<-c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
ordinales<-c("primer","segundo","tercer","cuarto","quinto","sexto","séptimo","octavo","noveno","décimo","undécimo","duodécimo")
iter<-0
for (i in meses){
  iter<-iter+1
  if (i=="Marzo"){
    next
     } 
  if (i=="Julio"){
    next
  }
  if (i=="Octubre"){
    next
  }
  else {
      print(paste("El",ordinales[iter],"mes del año es",i))
  }
}


#Función nchar, nos devuelve el número de caracteres de una variable.
nchar(meses[2])
nchar("Domingo")

#Miércoles 28/06/2023

#PRACTICA 1 En un vector de datos de Lunes a Domingo, imprimir sólo los días que tengan +6 caracteres.
semana<-c("Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo")
  for (i in semana){
    if (nchar(i)>6){
      print(i)
    }
}

#Bucle infinito WHILE, ejecuta un código hasta que se cumple una condición.
#while mientras se cumpla la condición{
# Codigo
#}

#Ej.
numeros5<-c(1,2,3,4,5,6,7,8,9,10)
numeros6<-1:10
#El bucle WHILE no tiene una variable que controle las iteraciones, por eso hay que asignar p.e.el valor 1 a i.
#En cambio en el bucle FOR, éste por defecto, aunque no se vea, inicia por defecto con el primer elemento del vector
#y a partir de ahí va computando las iteraciones hasta pasar por todos los elementos del vector.

i<-1
while (numeros5[i]<8){
  print(numeros5[i])
  i<-i+1
}

f<-0
while (f<100){
  print(f)
  f<-f+15
}

#PRACTICA 2: Mediante un bucle while,incrementar la variable ^cuadrado, con su cuadrado^2
#Empezando con un valor = 2 hasta que el cuadrado sea >4000
#imprimir el número valor + el cuadrado
#El cuadrado de 2 es 4
#El cuadrado de 3 es 9

valor<-2
cuadrado<-0
    while (cuadrado<=4000){
      cuadrado<-valor*valor
      print(paste("el cuadrado de", valor, "es", cuadrado))
      valor<-valor+1
    }


#FUNCIÓN SAMPLE PARA ESCOGER ALEATORIAMENTE UN VALOR
resultados<-c("Cara","Cruz")
tirada<-sample(x=resultados, size=1)
print(tirada)


#Mediante un bucle que se ejecute hasta que nos salga 6 veces Cara, almacenaremos todas las tiradas.


resultados<-c("Cara","Cruz")
lanzamientos<-0 #número de lanzamientos
num_caras<-0 #contador de caras
historial_tirada<-NULL #vECTOR VACÍO

while (num_caras<6){
  resultado<-sample(x=resultados,size=1)
  lanzamientos<-lanzamientos+1
  historial_tirada[lanzamientos]<-resultado
  if (resultado=="Cara"){
      num_caras<-num_caras+1
  }
}
#Visualizar los resultados
num_caras
print(list(historial_tirada))
lanzamientos

#PRACTICA 4: Mediante un bucle WHILE, lanzar un dado(numero del 1 al 6) 100 veces,
#Almacenaren un vector vacío el número de veces que sale cada número
#El número 1 salió X veces
#El número 2 salió X veces

resultados<-c(1,2,3,4,5,6)
lanzamientos<-0
almacenamiento<-NULL

while (lanzamientos<100){
  resultado<-sample(x=resultados,size=1)
  lanzamientos<-lanzamientos+1
  almacenamiento[resultado]<-almacenamiento[resultado]+1
}  
amacenamiento[2]  
  

resultados<-1:6
lanzamientos<-0
num1<-0
num2<-0
num3<-0
num4<-0
num5<-0
num6<-0
 
historial_tirada<-c(num1,num2,num3,num4,num5,num6)
 
while (lanzamientos<100){
resultado<-sample(x=resultados,size=1)
lanzamientos<-lanzamientos+1
historial_tirada[resultado]<-almacenamiento[resultado]+1
}
for (i in resultados){
  print(paste("el valor",i,"ha salido", almacenamientos[i], "veces"))
}


#Los DataFrame en R, son estructuras de 2 dimensiones
#son rectangulares como una tabla de una BBDD, los Data Frame pueden contener
#diferentes tipos de datos
#¿cómo crear un DataFrame? O bien de manera manual, o bien leyendo de un archivo.
#De manera manualpartimos de 3 vectores de datos:
#para crear un DataFrame vamos a crear 3 vectores de datos:

nombre<-c("Luis","Marta","Marina","Jose","Carmen","Pedro")
genero<-c("Masculino","Femenino","Femenino","Masculino","Femenino","Masculino")
puntuacion<-c(7.8,6.4,5.5,9.2,6.3,7.5)

alumnos<-data.frame(nombre,genero,puntuacion)
print(alumnos)

#Para visualizar en formato Tabla
View(alumnos)

#Información sobre el DataFrame
str(alumnos)

#Cómo ver solamente los valores de un campo
alumnos$nombre
alumnos$genero
alumnos$puntuacion

#Para ver los primeros n registros, con HEAD
head(alumnos,2)

#para ver los últimos n registros, con TAIL
tail(alumnos)

#Estadísticas con un Data.Frame
sum(alumnos$puntuacion) #hacemos la suma de todos los valores de un campo
mean(alumnos$puntuacion) #hacemos el promedio de los valores de un campo
#Podría almacenar el promedio en una variable:
promedio_notas<-mean(alumnos$puntuacion)
promedio_notas

#La nota más alta
max(alumnos$puntuacion)

#La nota más baja
min(alumnos$puntuacion)

#Estadísticas básicas con summary
summary(alumnos$puntuacion)

#Cómo añadir registros a un Data.Frame
nombre2<-c("Maria","Mario","Andres")
genero2<-c("Femenino","Masculino","Masculino")
puntuacion2<-c(5.9,7.2,4.8)
alumnos2<-data.frame(nombre2,genero2,puntuacion2)

View(alumnos2)

#Añadir los registros de alumnos2 a alumnos, esto se llama ANEXAR, utilizaremos la función RBIND
#LOS 2 Data.Frame deben tener la misma estructura, es decir, el mismo número de campos y con el mismo nombre.

alumnos_total<-rbind(alumnos,alumnos2)
#Antes de hacer RBIND debo cambiar los nombres de los campos para que sean igual en ambos Data.Frame
#para ello usaremos la funcion COLNAMES

colnames(alumnos2)<-c("nombre","genero","puntuacion")
alumnos_total<-rbind(alumnos,alumnos2)
alumnos_total


#Cómo añadir una columna al Data.Frame
#2 opciones:
#1)Añadir un valor fijo para todos los registros
alumnos_total$Localidad<-"Sevilla"
#2)Añadir una nueva columna partiendo de otra columna
alumnos_total$puntuacion2<-alumnos_total$puntuacion+5


#PRACTICA EN UN VECTOR DE DATOS LLAMADO COCHES, TENDREMOS LOS SIGUIENTES VALORES,
#"SEAT","VOLVO","AUDI","FERRARI","RENAULT","FIAT"
#En otro vector de datos llamado unidades tendremos estos valores
#200,354,364,785,962,975
#en otro vector de datos llamado importes tendremos esstos importes
#2140000,3846925,3756374,7109867,9080678,9234829
#en otro vector llmado IDCOMERCIAL tendremos
#1,2,4,1,3,1
#crearemos el dataframe ventas1


coches<-c("SEAT","VOLVO","AUDI","FERRARI","RENAULT","FIAT")
unidades<-c(200,354,364,785,962,975)
importes<-c(2140000,3846925,3756374,7109867,9080678,9234829)
idcomercial<-c(1,2,4,1,3,1)

Ventas1<-data.frame(coches,unidades,importes,idcomercial)
Ventas1

#A Ventas1 le anexaremos otro data.frame
#En otro vector de datos llamado COCHES2 
coches2<-c("OPEL","MERCEDES","CHEVROLET")
unidades2<-c(446,600,525)
importes2<-c(4125961,6668287,5874314)
idcomercial2<-c(4,2,4)

ventas2<-data.frame(coches2,unidades2,importes2,idcomercial2)
colnames(ventas2)<-c("coches","unidades","importes","idcomercial")
ventas2

TOTALVENTAS<-rbind(Ventas1,ventas2)
TOTALVENTAS

#crear una nueva columna llamada concesionario con el nombre "valles motoer2
#crar una columna nombre comercial, el id es 1= carlos montes, si el id es 20 pedro gomez, si el id es 3= irene iglesias, si el id es 4 sera monica gonzalez
#crar una coumna descuento que contenga el imprte del 4,89% de dtr, crar columna importe neto= imprte - descuento
#averiguar el importe total ventas
#y el importe total de descuento
#y el número de unidades más grande vendido
#el promedio de importe neto por vehiculo
#el numero total de unidades vendidas
#promedio de unidades por marca
#el importe neto más pequeño

TOTALVENTAS$concesionario<-"VALLES MOTOR"

TOTALVENTAS$descuento<-TOTALVENTAS$importes*0.0489
TOTALVENTAS

TOTALVENTAS$importeneto<-TOTALVENTAS$importes - TOTALVENTAS$descuento
TOTALVENTAS

sum(TOTALVENTAS$importes)
sum(TOTALVENTAS$descuento)
max(TOTALVENTAS$unidades)
mean(TOTALVENTAS$importeneto)



nombrecomercial<-c("Carlos Montes","Pedro Gomez","Irene Iglesias","Monica Gonzalez")
idcomercial<-c(1,2,3,4)
identificacion<-data.frame(idcomercial,nombrecomercial)
identificacion











