import xlsxwriter

# Creamos un pandas Excel writer usando la biblioteca xlsxwriter [1:]
writer = pd.ExcelWriter("GastoSocialCalificado_01.04.2020.xlsx", engine='xlsxwriter')

# Convertimos nuestro data frame a un objeto  XlsxWriter Excel
base_output.to_excel(writer, sheet_name='Base Calificada', startrow=1, index=False)

# Generamos los objetos xlsxwriter workbook y worksheet
workbook  = writer.book
worksheet = writer.sheets['Base Calificada']

# Definimos el formato de los encabezados

header_format = workbook.add_format({
    'bold': True,
    'text_wrap': True,
    'valign': 'top',
    'fg_color': '#D7E4BC',
    'align': 'center',
    'valign': 'vcenter',
    'border': 1})

header_format.set_font_size(10)

# Aplicamos el formato de encabezado a cada columna
for col_num, value in enumerate(base_output.columns.values):
    worksheet.write(1, col_num , value, header_format)

# Definimos el tamaño del alto de los encabezados
worksheet.set_row(1, 80)

# Definimos el ancho de las columnas
worksheet.set_column('A:W', 15)


#### Definimos el formato de las celdas que están combinadas
# Lista de los colores a usar
hex_color=['#b7ded2','#f6a6b2','#f7c297','#ffecb8','#90d2d8','#3b83bd']
# Lista de los nombres de las columnas combinadas
nombre_columnas=['FIN','PROPÓSITO','NOMBRE DEL PROGRAMA','ACTIVIDAD INSTITUCIONAL','ETIQUETADO FINAL']
# Rangos de cada columna combinada
columnas_excel=['L1:M1','N1:O1','P1:Q1','R1:S1','T1:U1']

for i in range(5):
    # Definimos el formato a utilizar
    merge_format = workbook.add_format({
        'bold': 1,
        'border': 1,
        'fg_color': hex_color[i],
        'align': 'center',
        'valign': 'vcenter'})

    # Combinamos las celdas
    worksheet.merge_range(columnas_excel[i], nombre_columnas[i], merge_format)


# Cerramos el Pandas Excel writer y guardamos la salida como un archivo Excel
writer.save()
