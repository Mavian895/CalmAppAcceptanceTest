Feature: ConfiguracionTextual

Permite personalizar el tamaño, color y estilo de los textos de la aplicación para 
facilitar la lectura y adaptarse a las necesidades visuales de cada usuario. (RNF4 - US11)

@tag1
Scenario: Cambiar apariencia del texto
    Given que el usuario está en configuración textual
        |fuenteActual|colorActual|
        |Verdana|#000000|
    When selecciona una nueva fuente y color
        |fuente|color|
        |Arial|#000000|
        |Verdana|#FF5733|
        |Times New Roman|#4CAF50|

    Then la aplicación actualiza la apariencia de los textos
        |fuenteActual|colorActual|
        |Arial|#000000|

Scenario: Error al guardar configuración
    Given que el usuario modifica la configuración textual
        |fuenteActual|colorActual|
        |Verdana|#000000|
    When ocurre un error al guardar
    Then la aplicación mantiene la configuración anterior
        Example:
        |mensaje|
        |Los cambios no fueron guardados|
