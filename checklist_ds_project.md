# Checklist para proyecto de Ciencia de Datos

- [ ] [Definir el problema](#definir-el-problema) y/o formular un panorama general para dicho problema.
- [ ] [Obtener los datos](#obtener-los-datos).
- [ ] [Explorar los datos](#explorar-datos) para obtener ideas, intuiciones, y armar un plan de trabajo.
- [ ] Preparar los datos para exponer patrones subyacentes usando algoritmos.
- [ ] Explorar diferentes modelos, y realizar una lista escogiendo los mejores de acuerdo a alguna métrica (e.g., RMSE).
- [ ] Afinar los modelos (e.g., reentrenamiento haciendo una búsqueda exhaustiva en un rango de parámetros) y combinarlos en una solución mayor.
- [ ] Presentar la solución.

## Definir el problema

1. Definir el objetivo para una audiencia amplia, por ejemplo, en términos de negocios. Esto servirá como set-point. Tu solución debe estar tan cerca de este objetivo como sea posible, y harás bien en tenerlo presente siempre.
2. Cómo será usada la solución.
3. Cuáles son las soluciones actuales alternativas (de haberlas).
4. Definición del problema propiamente, es decir, formular los aspectos de forma abstracta con lenguaje de matemáticas. 
5. Restringe el rango de soluciones para el problema. Por ejemplo, ¿dirías que el problema es supervizado/no supervizado, online/offline?
6. Cómo deberás medir la ejecución del modelo.
7. ¿La forma de medir la ejecución se alínea con los objetivos del negocio?
8. ¿Cuál es el nivel de ejecución mínima para cumplir con el objetivo del negocio?
9. ¿Se puede usar la solución en problemas *comparables*? ¿Se pueden usar la experiencia o las herramientas?
10. ¿Existe experticia humana disponible para el problema?
11. Lista las asunciones que has heco hasta ahora.
12. Verifica si las asunciones se cumplen.

## Obtener los datos

La obtención de datos suele ser un cuello de botella. Nececitas datos limpios, recientes, lo más sencillos de conseguir que puedas. Comenzamos con un paso 0 que deberías tener en cuenta desde el momento en el que comienzas a buscar datos. 

0. Automatiza tanto como puedas la obtención de datos, para tener datos frescos.
1. Documenta cómo obtuviste los datos.
2. Revisa cuánto espacio ocuparán.
3. Revisa las obligaciones legales de los datos, u obtén autorización para usarlos y/o publicar derivados de ellos.
4. Crea un espacio de trabajo (workspace) con espacio suficiente para almacenar los datos. 
5. Obtén los datos.
6. Convierte los datos en un formato que puedas manipular fácilmente (e.g., csv) sin cambiar los datos en sí.
7. **Asegúrate** de que la información sensible ha sido omitida (nombres, direcciones, etc; anonimízalos).
8. Revisa qué tipo de datos tienes (¿son series de tiempo, datos geofráficos, una combinación de diferentes tipos?).
9. Toma una muestra de prueba (test set), sepárala y no la uses. 

## Explorar datos

Si existen expertos en este tipo de datos, no dudes en buscar su ayuda.

1. Crea una copia de los datos para su exploración. Si tienes un conjunto muy pesado, toma una muestra (aleatoria) de un tamaño manejable. En esta parte solo querrás hacerte una idea de qué es lo que tienes, y una muestra aleatoria de tamaño manejable asegura que las propiedades estadísticas de los datos son representativas del conjunto original.
2. Crea una notebook de Jupyter o un archivo de Quarto para la exploración. Es preferible una combinación de texto y código para documentar el proceso.
3. Estudia todos los atributos
   1. Nombres
   2. Tipos de datos (categóricos/numéricos, enteros/puno flotante, restringidos o no restringidos, estructurados o no estructurados, etc).
   3. Porcentaje de datos perdidos.
   4. Ruido y su tipo (meramente estocástico, debido a error de redondeo, outliers posibles, o imposibles como pesos negativos, edades de 200 años, fechas imposibles, etc.)
   5. Tipo de distribución de los datos.
4. Para algoritmos de supervisión, **identifica** la/las variables objetivo.
5. Visualiza los datos.
6. Estudia la correlación (u otras dependencias no lineales; por ejemplo [esto](http://www.exploredata.net/)) entre atributos.
7. Estudia cómo podrías resolver el problema manualmente.
8. Estudia las transformaciones que podrías aplicar (e.g., si una log-transformación vuelve normales los datos, sería mejor).
9. Identifica si obtener más datos podría ser útil.
10. Documenta lo que has aprendido sobre los datos

## Preparar los datos