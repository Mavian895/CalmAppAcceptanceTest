Feature: ModoOscuro

Permite modificar la apariencia visual de la aplicación mediante modos oscuros y tonalidades cálidas, reduciendo la fatiga visual. (RNF2 - US05)

@tag1
Scenario: Activar modo oscuro
    Given que el usuario está en la pantalla principal
        |temaActual|
        |Claro|
    When presiona el botón de luna
    Then la aplicación cambia a colores oscuros
        |temaActual|
        |Oscuro|

Scenario: Cambiar colores desde configuración
    Given que el usuario ingresa a configuración
        |tipoDeConfiguracion|ajusteActual|
        |temaActual|Claro|
    When selecciona colores cálidos
        |colores|
        |temaRojizo|
        |temaAmarillento|
        |temaNaranja|

    Then la interfaz actualiza su apariencia
        |tipoDeConfiguracion|ajusteActual|
        |temaActual|temaRojizo|