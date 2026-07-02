Feature: VisualizarProgreso

Permite al estudiante consultar su progreso emocional y las actividades realizadas, para facilitar el seguimiento de su bienestar. (EP01 - US01)

@tag1
Scenario: Mostrar resumen del progreso
	Given que el universitario tiene registros emocionales y actividades completadas
	When accede a la sección de progreso
	Then el sistema muestra un resumen de su información
		Example:
		|periodo|sesionesCompletadas|actividadesCompletadas|tareasCompletadas|
		|total|20|40|39|

Scenario: Filtrar progreso por período
	Given que existen registros almacenados
	When el universitario selecciona un período específico}
		Example:
		|fechaInicio|fechaFinal|
		|21.6.2026|28.6.2026|
	Then el sistema muestra únicamente los datos correspondientes a dicho período
		Example:
		|periodo|sesionesCompletadas|actividadesCompletadas|tareasCompletadas|
		|21.6.2026-28.6.2026|4|8|5|