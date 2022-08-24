# Introducción
Se plantea hacer una matriz del tamaño de la imagen y con los datos anteriores convertir la imagen de color a escala de grises; pero antes de comenzar:

## ¿Qué es el procesamiento digital de imagenes (PDI)?
PDI se puede definir como el conjunto de procesamientos que se realizan sobre una imagen digital ya sea para realizar su almacenamiento, transmisión o tratamiento.

## Imagenes a color
Una imagen digital a color es una matriz tridimensional, que se compone por tres planos conocidos como **RGB (Red, Green, Blue)**; con la combinación de estos 3 elementos en las proporciones correspondientes se puede formar cualquier otro color

## Convertir una imagen de 8 bits a escala de grises
Los valores **RGB** se convierten a escala de grises mediante la formula **NISC (National Television Standards Comitee)**
$$
Img_{Gray}=0.299*R+0.587*G+0.114*B
$$

## Formatos de imagenes que soporta Matlab
|Formato|Extensión|
|-------|---------|
|  TIFF |  .tiff  |
|JPEG   | .jpeg   |
| GIF   |  .gif   |
|BMP    | .bpm    |
|PNG    | .png    |
|XWD    | .xwd    |

Ahora que conocemos lo basico del procesamiento digital de imágenes es hora de hablar de como se usa matlab para esto.

## Lectura de imágenes en matlab
Para leer una imágen en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imread.html"> **imread**</a> y se asigna a una variable que representara a la imágen

<code>imagen = imread('ruta/nombre de la imágen.extensión');</code>

## Mostrar una imágen
La función <a href="https://la.mathworks.com/help/images/ref/imshow.html?searchHighlight=imshow&s_tid=srchtitle_imshow_1">**imshow**</a> permite mostrar una imágen abierta, modificada o creada desde matlab (la imagen se visualiza en una ventana de matlab)

<code>imshow(imagen)</code>

## Guardar una imágen
Para guardar el contenido de una imagen la cual ha sido modificada o creada en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imwrite.html?s_tid=doc_ta">**imwrite**</a>

<code>imwrite(variable,'nombre del arvhivo.extención')</code>

En donde 'variable' representa la variable que contiene a la imágen, 'nombre del archivo', el nombre con el que se desea guardar seguido de un punto se indica el tipo de formato deseado

## Otras formas
Para obtener los 3 planos (RGB), se puede usar la función: <a href= "https://la.mathworks.com/help/images/ref/imsplit.html?searchHighlight=imsplit&s_tid=srchtitle_imsplit_1">**imsplit**</a>

Mientras que para obtener la imágen en escala de grises tambien se puede hacer uso de la función: <a href="https://la.mathworks.com/help/matlab/ref/rgb2gray.html?s_tid=doc_ta">**rgb2gray**</a>