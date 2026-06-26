Feature: ConfiguracionTextual

Permite personalizar el tamaño, color y estilo de los textos de la aplicación para 
facilitar la lectura y adaptarse a las necesidades visuales de cada usuario. (RNF4 - US11)

@tag1
Scenario: Cambiar apariencia del texto
    Given que el usuario está en configuración textual
    When selecciona una nueva fuente y color
    Then la aplicación actualiza la apariencia de los textos

Scenario: Error al guardar configuración
    Given que el usuario modifica la configuración textual
    When ocurre un error al guardar
    Then la aplicación mantiene la configuración anterior