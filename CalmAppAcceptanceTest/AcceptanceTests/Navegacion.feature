Feature: Navegacion

Garantiza que los usuarios naveguen fácilmente entre las distintas secciones de la aplicación y 
regresar rápidamente a la pantalla principal. (RNF1 - US04)

@tag1
Scenario: Acceder a una sección desde el menú
    Given que el usuario está en la pantalla principal
    When selecciona una opción del menú
        |opciones|
        |Alertas|
        |Mascota|
        |Configuración|
    Then el sistema lo dirige a la sección correspondiente
        |pantallaActual|
        |Mascota|

Scenario: Regresar al inicio
    Given que el usuario se encuentra en cualquier sección
    When presiona el botón de inicio
    Then el sistema vuelve a la pantalla principal

Scenario: Acceder al perfil desde el menú principal
    Given que el usuario está en la pantalla principal
    When selecciona la opción "Perfil"
    Then el sistema muestra la información del usuario
    And mantiene disponible el botón de inicio

Scenario Outline: Navegar entre diferentes secciones
    Given que el usuario está en la pantalla principal
    When selecciona la opción "<Sección>"
    Then el sistema muestra la pantalla "<Sección>"

Examples:
    | Sección       |
    | Progreso      |
    | Configuración |
    | Reportes      |
