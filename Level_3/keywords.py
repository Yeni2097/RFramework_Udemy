#https://docs.python.org/3/library/os.html
import os


def Crear_Folder():
    # Usando una cadena de texto cruda (r"...") para evitar problemas con las barras invertidas
    ruta_carpeta = r"D:\Users\yenifer.alfaro\RF_Nivel1\RFramework_Udemy\CARPETA_PYTHON"

    # Verificar si la carpeta ya existe para evitar errores
    if not os.path.exists(ruta_carpeta):
        os.mkdir(ruta_carpeta)
        print(f"Carpeta creada en {ruta_carpeta}")
    else:
        print(f"La carpeta ya existe en {ruta_carpeta}")

