import mysql.connector

# Diccionario con los valores por defecto
default_values = {
    "host": "localhost",
    "user": "root",
    "password": "esekuele24",
    "database": "multideportivo"
}

# Establecer la conexión a la base de datos y retornar el error si sucede
def conexion():
    try:
        multideportivo = mysql.connector.connect(
            host=default_values["host"],
            user=default_values["user"],
            password=default_values["password"],
            database=default_values["database"]
        )
        print("Conexión exitosa")
        return multideportivo
    except mysql.connector.Error as error:
        print("Error al conectarse a la base de datos: {}".format(error))
        return None 

def dbchange():
    # "global" modifica la variable global osea por fuera de la funcion
    global default_values 
    print("Valores actuales:")
    for key, value in default_values.items():
        #fstrings permiten insertar variables dentro de la cadena de texto)
        print(f"{key}: {value}")
    # Solicitar al usuario que ingrese nuevos valores
    new_values = {}
    for key in default_values:
        new_value = input(f"Ingrese el nuevo valor para {key}, o presione enter para mantener el valor por defecto ({default_values[key]}): ")
        if new_value:
            new_values[key] = new_value
        else:
            new_values[key] = default_values[key]
    # Actualizar los valores por defecto con los nuevos valores ingresados
    default_values.update(new_values)
    print("Valores actualizados correctamente.")

