Feature: VisualizarProgreso

Permite al estudiante consultar su progreso emocional y las actividades realizadas, para facilitar el seguimiento de su bienestar. (EP01 - US01)

@tag1
Scenario: Mostrar resumen del progreso
	Given que el universitario tiene registros emocionales y actividades completadas
	When accede a la sección de progreso
	Then el sistema muestra un resumen de su información

Scenario: Filtrar progreso por período
	Given que existen registros almacenados
	When el universitario selecciona un período específico
	Then el sistema muestra únicamente los datos correspondientes a dicho período