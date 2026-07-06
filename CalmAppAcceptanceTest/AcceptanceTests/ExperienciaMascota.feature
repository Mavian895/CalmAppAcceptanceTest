Feature: ExperienciaMascota

La mascota virtual obtiene puntos de experiencia cuando el usuario completa actividades de bienestar. (EP02 - US13)

@tag1
Scenario: Otorgar experiencia al completar una sesión
    Given que el usuario completa una sesión de bienestar
        |sesion|actividad|puntos|estado|
        |sesion001|Meditación|10|completado|
        |sesion001|Diario de reflexion|40|completado|
    When la sesión se registra como finalizada
    Then la mascota recibe experiencia
        |experienciaGanada|nivel|
        |50|1|

Scenario: No otorgar experiencia por sesión incompleta
    Given que el usuario abandona una sesión
        |sesion|actividad|puntos|estado|
        |sesion001|Meditación|10|completado|
        |sesion001|Diario de reflexion|40|noCompletado|
    When el sistema detecta la interrupción
    Then no se otorga experiencia
        |experienciaGanada|nivel|
        |0|1|

Scenario: Subir de nivel al alcanzar la experiencia necesaria
    Given que la mascota está próxima a subir de nivel
    When recibe la experiencia restante
    Then la mascota aumenta de nivel
    And el sistema actualiza la barra de experiencia

Scenario Outline: Asignar experiencia según la actividad
    Given que el usuario completa la actividad "<Actividad>"
    When la sesión finaliza correctamente
    Then la mascota recibe "<EXP>" puntos de experiencia

Examples:
    | Actividad      | EXP |
    | Yoga           | 20  |
    | Respiración    | 15  |
    | Estiramiento   | 10  |
