Feature: AsistenciaEmocional

La mascota virtual detecta posibles estados de ansiedad o frustración y recomienda ejercicios o actividades de alivio. (EP02 - US15)

@tag1
Scenario: Recomendar ejercicios de alivio
    Given que el usuario presenta altos niveles de ansiedad
    When el sistema analiza la carga emocional
    Then se recomiendan ejercicios específicos

Scenario: Ignorar recomendaciones
    Given que la mascota ofrece una recomendación
    When el usuario decide ignorarla
    Then la mascota no insiste hasta un nuevo reporte