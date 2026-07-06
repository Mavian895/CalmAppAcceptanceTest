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
        |mensaje|
        |Los cambios no fueron guardados|

Scenario: Restablecer la configuración predeterminada
    Given que el usuario modificó la configuración textual
    When selecciona la opción "Restablecer"
    Then el sistema recupera la configuración predeterminada
    And actualiza la apariencia de los textos
        
Scenario Outline: Aplicar diferentes tamaños de fuente
    Given que el usuario selecciona el tamaño "<Tamaño>"
    When guarda la configuración
    Then la aplicación aplica el tamaño "<Tamaño>"

Examples:
    | Tamaño |
    | Pequeño |
    | Mediano |
    | Grande |
