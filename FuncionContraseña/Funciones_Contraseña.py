# Archivo:Funciones_Contraseña
# Descripción:Elaborar programas
# Autor:Huiru Chen
# Fecha: 29/10/2026
def contraseña(cadena:str) -> bool :
    #Documentacion de la funcion para entender mejor la funcion.
    """ 
    Indica si una cadena es una contraseña segura.
    
    Parameters:

        cadena(str): Contraseña a evaluar.
        
    Returns:

        bool:True si la contraseña es segura , False si la contraseña no es segura o su longitud de caracteres sea menor que 5.

    Raises:
        
        TypeError: Si cadena no es una cadena.
    
    Examples:
    
        >>> esContrasenaSegura("Hola123!")
        True
        >>> esContrasenaSegura("12345")
        False
        >>> esContrasenaSegura("Hola123")
        False
        >>> esContrasenaSegura("Hc91.")
        True
    
    """
    if not isinstance(cadena,str):
        raise TypeError("Error , la contraseña debe ser de cadena.")

    mensaje = ""
    
    if len(cadena) < 5:
        mensaje += "mínimo 5 caracteres, "

    mayus = False
    minus = False
    num = False
    especial = False
    
    for i in cadena:
        if i.isupper():#Mayúscula
            mayus = True
        elif i.islower():#Minúscula
            minus = True
        elif i.isdigit():#Número
            num = True
        elif i in "!@#$%&*._-?()/=?'\¡¿}`]+~´¨[{^:,; ":
            especial = True
    
#     if not mayus:
#         mensaje += "letra mayúscula, "
#     if not minus:
#         mensaje += "letra minúscula, "
#     if not num:
#         mensaje += "número, "
#     if not especial:
#         mensaje += "carácter especial, "
#         
#     if mensaje == "":
#         print("Su contraseña es segura.")
#         return True
#     else:
#         # quitamos la ultima coma
#         mensaje = mensaje[:-2]
#         print(f"Su contraseña no es segura, le falta: {mensaje}.")
#         return False
    if mayus == True and minus == True and num == True and especial == True :
        print("Tu contraseña es segura")
    else:
        print("La contraseña no es segura")

if __name__ == "__main__":
    cadena = input("Escribir la contraseña: ")
    contraseña(cadena)
    