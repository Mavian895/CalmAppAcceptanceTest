Feature: ExperienciaMascota

La mascota virtual obtiene puntos de experiencia cuando el usuario completa actividades de bienestar. (EP02 - US13)

@tag1
Scenario: Otorgar experiencia al completar una sesión
    Given que el usuario completa una sesión de bienestar
    When la sesión se registra como finalizada
    Then la mascota recibe experiencia

Scenario: No otorgar experiencia por sesión incompleta
    Given que el usuario abandona una sesión
    When el sistema detecta la interrupción
    Then no se otorga experiencia
