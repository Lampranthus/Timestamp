import serial
import sys

# Configuración del puerto serial
puerto_serial = serial.Serial('COM3',  
                               baudrate=115200,
                               bytesize=serial.EIGHTBITS,
                               parity=serial.PARITY_NONE,
                               stopbits=serial.STOPBITS_ONE)

# Leer de 16 en 16 bits y mostrar en binario
while True:
    # Leer 2 bytes del puerto serial (16 bits)
    datos_leidos = puerto_serial.read(2)
    
    # Si no se reciben datos, salir del bucle
    if not datos_leidos:
        print("No se recibieron más datos. Saliendo del bucle.")
        break
    
    # Imprimir los datos en binario, con un espacio entre los bytes
    sys.stdout.write('{:08b} {:08b}\n'.format(datos_leidos[0], datos_leidos[1]))
