
import App




def menu():
    print(" --- Menu ---")
    print("1. Agregar Participantes")
    print("2. Agregar Deportes")
    print("3. Agregar Encuentros")
    print("4. Agregar Eventos")
    print("5. Consultar Eventos")
    print("6. Consultar Encuentros y sus Participantes")
    print("7. Consultar Eventos y sus Encuentros")
    print("8. Consultar Participantes por rango etario")
    print("9. Consultar Participantes por Genero y Deporte ")
    print("10. Consultar Proximos Encuentros")
    print("11. Cambiar credenciales de la base de datos")
    print("0. Salir")

    

# Bucle de menu, navegacion y respectiva llamada a funciones, break
def crud():
    while True:
        menu()
        try:
            index = int(input("Ingrese la opcion de menu elegida: "))
            if index == 0:
                print("Saliendo del programa...")
                break
            elif 1 <= index < len(App.funciones):
                funcion = App.funciones[index]
                if callable(funcion):
                    while True:
                        funcion()
                        again = input("Si desea volver a utilizar esta funcion, ingrese '1'. Si desea volver al menu, ingrese '0': ")
                        if again == '0':
                            break
                        elif again != '1':
                            print("Opción inválida")
                            break
                else:
                    print("Hubo un error, intentelo nuevamente")
            else:
                print("La opcion seleccionada no es correcta, intentelo nuevamente")
        except ValueError:
            print("Entrada inválida. Por favor, ingrese un número.")

crud() # inicio del programa
