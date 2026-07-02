Feature: Recordatorios

Ayuda al usuario a mantener una rutina de bienestar mediante notificaciones programadas. (EP01 - US03)

@tag1
Scenario: Enviar recordatorio programado
	Given que el usuario configuró una hora de recordatorio
		 |recordatorioID|horaProgramada|
		 |recordatorio001|9:00 p.m UTC-5|
		 |recordatorio002|22:00 UTC-5|
		 |recordatorio003|9:00 a.m UTC+5|
	When llega la hora programada
    Then el sistema envía una notificación
		|tituloNotificación|
		|Tienes 3 recordatorios pendientes|

Scenario: No enviar recordatorios desactivados
	Given que el usuario desactivó los recordatorios
	When llega una hora previamente programada
	Then el sistema no envía ninguna notificación