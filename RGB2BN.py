"""
Programa equivalente al de Matlab solo que usando OpenCV (4.7.0)
"""
#Importamos las bibliotecas necesarias
import cv2
import numpy as np

#Leer la imagen
img=cv2.imread("Gera.jpg")

#Mostrar la imagen a color
"""
Por defecto openCV abre los ficheros en BGR (no en RGB)
"""
cv2.imshow("Gera",img)

#Dimensiones de la imagen y creacion de las matrices
#[f,c,p]=img.shape

#Descomponemos la imagen en sus planos R:Rojo, G:Verde, B:Azul
R=img[:,:,2]
G=img[:,:,1]
B=img[:,:,0]

#Mostramos los planos RGB
cv2.imshow('R',R)
cv2.imshow('G',G)
cv2.imshow('B',B)

cv2.waitKey(0)
cv2.destroyAllWindows()