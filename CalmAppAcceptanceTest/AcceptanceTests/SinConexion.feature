Feature: SinConexion

La aplicación puede seguir ofreciendo ciertas funciones cuando no existe conexión a internet, almacenando información localmente 
e informando al usuario cuando una función requiere conectividad. (RNF3 - US10)

@tag1
Scenario: Guardar información sin internet
    Given que el usuario no tiene conexión a internet
    When registra una emoción
    Then la información se almacena localmente
        |emocion|fecha|descripcion|
        |enojo|21.7.2026|Volvi a procrastinar varias horas antes de un examen|

Scenario: Intentar acceder a una función en línea
    Given que el usuario no tiene conexión a internet
    When intenta acceder a una función que requiere internet
    Then la aplicación muestra un mensaje de advertencia
        |mensaje|
        |No se puede cargar esta funcion porque no hay conexion a internet|

Scenario: Sincronizar registros al recuperar la conexión
    Given que existen registros almacenados localmente
    When el dispositivo recupera la conexión a internet
    Then el sistema sincroniza la información automáticamente
    And confirma que los datos fueron enviados

Scenario Outline: Registrar actividades sin conexión
    Given que el usuario no tiene acceso a internet
    When registra la actividad "<Actividad>"
    Then la información queda almacenada localmente

Examples:
    | Actividad          |
    | Registro emocional |
    | Actividad diaria   |
    | Sesión de bienestar|
