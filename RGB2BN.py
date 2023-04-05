"""
Programa equivalente al de Matlab solo que usando OpenCV (4.7.0)
"""
#Importamos las bibliotecas necesarias
import cv2

#Leer la imagen
img=cv2.imread("Gera.jpg")

#Mostrar la imagen
cv2.imshow("Gera",img)
cv2.waitKey(0)
cv2.destroyAllWindows()