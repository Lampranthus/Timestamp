import serial
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

def leer_puerto_serie(puerto_serie, tasa_baudios, num_datos_por_iteracion, output_file):
    continuar = True
    resultados_estadisticos = {'mean': [], 'median': [], 'mode': [], 'std_deviation': []}
    bytes_por_iteracion = 2  # 16 bits de datos

    with serial.Serial(puerto_serie, tasa_baudios, timeout=0.1, bytesize=serial.EIGHTBITS, parity=serial.PARITY_EVEN, stopbits=serial.STOPBITS_ONE) as ser:
        while continuar:
            # Limpiar el buffer de entrada antes de cada iteración
            ser.reset_input_buffer()

            datos = bytearray()
            datos_recibidos = 0

            # Leer datos hasta alcanzar el número deseado por iteración
            while datos_recibidos < num_datos_por_iteracion * bytes_por_iteracion:
                byte_chunk = ser.read(min(ser.in_waiting, num_datos_por_iteracion * bytes_por_iteracion - datos_recibidos))
                datos.extend(byte_chunk)
                datos_recibidos += len(byte_chunk)

            if datos_recibidos > 0:
                # Convertir los bytes a un array de enteros
                datos_int = np.frombuffer(datos, dtype=np.uint8).astype(int)

                # Concatenar los bytes en números de 16 bits
                valores = []
                for i in range(0, datos_recibidos, bytes_por_iteracion):
                    valor = datos_int[i] << 8 | datos_int[i+1]
                    valores.append(valor)

                # Realizar cálculos estadísticos
                mean_value = np.mean(valores)
                median_value = np.median(valores)

                mode_result = stats.mode(valores)
                mode_value = mode_result.mode.item() if mode_result.count.item() > 1 else None

                std_deviation = np.std(valores)

                # Escribir los datos y estadísticas en el archivo de salida
                with open(output_file, 'a') as file:
                    file.write(f'Dato {len(resultados_estadisticos["mean"]) + 1}: {valores}\n')
                    file.write(f'Mean: {mean_value:.2f}, Median: {median_value}, Mode: {mode_value}, Std Deviation: {std_deviation:.2f}\n\n')

                # Almacenar las estadísticas
                resultados_estadisticos['mean'].append(mean_value)
                resultados_estadisticos['median'].append(median_value)
                resultados_estadisticos['mode'].append(mode_value)
                resultados_estadisticos['std_deviation'].append(std_deviation)

                # Imprimir las estadísticas en la consola
                print(f'\nMean: {mean_value:.2f}, Median: {median_value}, Mode: {mode_value}, Std Deviation: {std_deviation:.2f}')

                # Pedir al usuario que continúe o detenga la ejecución
                user_input = input('\nPress Enter to continue or type "stop" to stop: ')
                if user_input.lower() == 'stop':
                    continuar = False

    # Generar la gráfica al finalizar la lectura de datos
    if resultados_estadisticos['mean']:
        corridas = np.arange(1, len(resultados_estadisticos['mean']) + 1)
        mean_values = resultados_estadisticos['mean']
        std_dev_values = resultados_estadisticos['std_deviation']

        plt.figure(figsize=(10, 6))
        plt.errorbar(corridas, mean_values, yerr=std_dev_values, linestyle='None', marker='^', color='b', label='Datos con barras de error')
        plt.title('Resultados Estadisticos por Corrida con Barras de Error')
        plt.xlabel('Corrida')
        plt.ylabel('Valor TDC')
        plt.legend()
        plt.grid(True)
        plt.show()

if __name__ == '__main__':
    puerto_serie = 'COM3'
    tasa_baudios = 115200  # 115200 baudios
    num_datos_por_iteracion = 65536  # 65536 datos por corrida (debido a que cada dato es de 16 bits)
    output_file = 'datos_registrados.txt'

    leer_puerto_serie(puerto_serie, tasa_baudios, num_datos_por_iteracion, output_file)
