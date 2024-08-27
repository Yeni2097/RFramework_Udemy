import openpyxl

archivo=openpyxl.load_workbook(r"D:\Users\yenifer.alfaro\RF_Nivel1\RFramework_Udemy\Documentos\Datos Inicio Sesion PY.xlsx")

print(archivo.sheetnames)
print("pagina activa: " + archivo.active.title)

ac=archivo["Hoja1"]

print(ac['A2'].value)
print(ac['B2'].value)
print(ac['C2'].value)