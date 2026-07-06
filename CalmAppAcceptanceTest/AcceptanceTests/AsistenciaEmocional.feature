Feature: AsistenciaEmocional

La mascota virtual detecta posibles estados de ansiedad o frustración y recomienda ejercicios o actividades de alivio. (EP02 - US15)

@tag1
Scenario: Recomendar ejercicios de alivio
    Given que el usuario presenta altos niveles de ansiedad
        |nivelAnsiedad|nivelFrustracion|Estado|
        |Alto         |Medio           |Estres|
    When el sistema analiza la carga emocional
    Then se recomiendan ejercicios específicos
        |Ejercicio|Descripcion|
        |Respiración en caja|Inhala por 5 segundos, manten por 5, exhala por 5 segundos. Repite 3 veces.|
        |Meditación|Encuentra un lugar tranquilo, siéntate cómodamente y enfócate en tu respiración. Mantén esta posición durante 10 minutos.|
        |Conversacion analitica|Intenta analizar tus emociones y pensamientos con la mascota virtual.|
        
Scenario: Ignorar recomendaciones
    Given que la mascota ofrece una recomendación
        |Ejercicio|Descripcion|
        |Respiración en caja|Inhala por 5 segundos, manten por 5, exhala por 5 segundos. Repite 3 veces.|
        |Meditación|Encuentra un lugar tranquilo, siéntate cómodamente y enfócate en tu respiración. Mantén esta posición durante 10 minutos.|
        |Conversacion analitica|Intenta analizar tus emociones y pensamientos con la mascota virtual.|
    When el usuario decide ignorarla
    Then la mascota no insiste hasta un nuevo reporte
        |accion|prompt|
        |no insistir|La mascota virtual no insistirá en la recomendación hasta otro analisis critico en el reporte|

Scenario: Mostrar recomendaciones según el nivel de estrés
    Given que el usuario registra un nivel alto de estrés
    When la mascota analiza el registro emocional
    Then el sistema muestra una recomendación personalizada
    And ofrece un acceso directo al ejercicio sugerido
        
Scenario Outline: Recomendar ejercicios según la emoción
    Given que el usuario registra la emoción "<Emoción>"
    When el sistema analiza su estado emocional
    Then recomienda el ejercicio "<Ejercicio>"

    Examples:
    | Emoción   | Ejercicio               |
    | Ansiedad  | Respiración guiada      |
    | Estrés    | Estiramiento rápido     |
    | Frustración | Meditación breve      |
