import serial
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

def leer_puerto_serie(puerto_serie, tasa_baudios, num_datos_por_iteracion, output_file):
    continuar = True
    resultados_estadisticos = {'mean': [], 'median': [], 'mode': [], 'std_deviation': []}
    batch_size = 1000  # Tamaño del lote para la lectura de datos

    with serial.Serial(puerto_serie, tasa_baudios, timeout=0.1, bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE) as ser:
        while continuar:
            # Limpiar el buffer de entrada antes de cada iteración
            ser.reset_input_buffer()

            datos = bytearray()
            datos_recibidos = 0

            # Leer datos hasta alcanzar el número deseado por iteración
            while datos_recibidos < num_datos_por_iteracion:
                byte_chunk = ser.read(min(ser.in_waiting, num_datos_por_iteracion - datos_recibidos))
                datos.extend(byte_chunk)
                datos_recibidos += len(byte_chunk)

            if datos_recibidos > 0:
                datos_int = np.frombuffer(datos, dtype=np.uint8).astype(int)
                mean_value = np.mean(datos_int)
                median_value = np.median(datos_int)

                mode_result = stats.mode(datos_int)
                mode_value = mode_result.mode.item() if mode_result.count.item() > 1 else None

                std_deviation = np.std(datos_int)

                # Escribe los datos y estadísticas en el archivo de salida
                with open(output_file, 'a') as file:
                    file.write(f'Dato {len(resultados_estadisticos["mean"]) + 1}: {list(datos_int)}\n')
                    file.write(f'Mean: {mean_value:.2f}, Median: {median_value}, Mode: {mode_value}, Std Deviation: {std_deviation:.2f}\n\n')

                # Almacena las estadísticas
                resultados_estadisticos['mean'].append(mean_value)
                resultados_estadisticos['median'].append(median_value)
                resultados_estadisticos['mode'].append(mode_value)
                resultados_estadisticos['std_deviation'].append(std_deviation)

                # Imprime las estadísticas en la consola
                print(f'\nMean: {mean_value:.2f}, Median: {median_value}, Mode: {mode_value}, Std Deviation: {std_deviation:.2f}')

                # Pide al usuario que continúe o detenga la ejecución
                user_input = input('\nPress Enter to continue or type "stop" to stop: ')
                if user_input.lower() == 'stop':
                    continuar = False

    # Genera la gráfica al finalizar la lectura de datos
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
    num_datos_por_iteracion = 10000  # Cambiado a 1000 datos por corrida
    output_file = 'datos_registrados.txt'

    leer_puerto_serie(puerto_serie, tasa_baudios, num_datos_por_iteracion, output_file)
