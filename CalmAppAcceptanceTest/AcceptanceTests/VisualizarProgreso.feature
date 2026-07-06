Feature: VisualizarProgreso

Permite al estudiante consultar su progreso emocional y las actividades realizadas, para facilitar el seguimiento de su bienestar. (EP01 - US01)

@tag1
Scenario: Mostrar resumen del progreso
	Given que el universitario tiene registros emocionales y actividades completadas
	When accede a la sección de progreso
	Then el sistema muestra un resumen de su información
		|periodo|sesionesCompletadas|actividadesCompletadas|tareasCompletadas|
		|total|20|40|39|

Scenario: Filtrar progreso por período
	Given que existen registros almacenados
	When el universitario selecciona un período específico}
		|fechaInicio|fechaFinal|
		|21.6.2026|28.6.2026|
	Then el sistema muestra únicamente los datos correspondientes a dicho período
		|periodo|sesionesCompletadas|actividadesCompletadas|tareasCompletadas|
		|21.6.2026-28.6.2026|4|8|5|

Scenario: Mostrar mensaje cuando no existen registros
    Given que el universitario no tiene registros almacenados
    When accede a la sección de progreso
    Then el sistema informa que no existen datos disponibles
    And invita al usuario a registrar una actividad

Scenario Outline: Consultar progreso por diferentes períodos
    Given que existen registros emocionales
    When el usuario selecciona el período "<Período>"
    Then el sistema muestra la información correspondiente

Examples:
    | Período |
    | Semana  |
    | Mes     |
    | Año     |
