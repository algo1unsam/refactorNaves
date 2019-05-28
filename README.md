# Naves espaciales

El objetivo de este ejercicio es hacer un _refactor_ de la implementación actual. Esto significa que se debe cambiar su implementación (evitando los errores conceptuales que se encuentren) sin cambiar su funcionalidad.

# Enunciado

Debemos armar un modelo de naves espaciales.
 
## Tipos de nave
Existen 3 tipos de naves:
1. **Naves-baliza**  
Son naves cuya principal responsabilidad es mostrar una baliza de un determinado color y su _velocidad_, expresada en kms/seg.
    - Al `prepararViaje()` debe aumentar su velocidad 5000 kms/seg y cambiar el color de la baliza a "verde".
    - Al `recibirAmenaza()` debe escapar, aumentando su velocidad 20000 kms/seg, y cambiar el color de la baliza a "rojo".
    

1. **Naves de combate**  
Conocemos su velocidad y los mensaje emitidos. Posee 2 modos posibles: _En ataque_ y _En reposo_. Nos interesa saber
    - Si `esEscueta()` que se cumple cuando no emitió ningún mensaje de más de 30 caracteres.
    - Si está `fueraDePeligro()` que se cumple cuando no emitió ningún mensaje de más de 10 caracteres.
    - Si es `visible()`. Solamente es visible en modo reposo.
    - Si tiene `misilesDesplegados()`. Solamente los depliega cuando está en modo ataque.
    - Al `prepararViaje()` debe aumentar su velocidad 5000 kms/seg y 
        - Si está en modo ataque debe emitir el mensaje `"Volviendo a la base"`.
        - Si está en modo reposo debe pasar a modo ataque y emitir el mensaje `"Saliendo en misión"`.
    - Al `recibirAmenaza()`:
        - Si está en modo ataque debe emitir el mensaje `"Enemigo encontrado"`.
        - Si está en modo reposo debe escapar, aumentando su velocidad 20000 kms/seg, y emitir el mensaje `"RETIRADAAAAAA"`.
    

1. **Naves de pasajeros**  
Se conoce la cantidad de pasajeros que lleva y su _velocidad_, expresada en kms/seg. También llevan una sirena para activar en caso de emergencia. Queremos
    - saber las `racionesDeComidaNecesarias()` que son 4 por cada pasajero en la nave (a los pasajeros que lleva se le suman 4 del personal que trabaja en la nave) + un plus de 20 raciones si lleva más de 50 pasajeros.
    - saber las `racionesDeBebidaNecesarias()` que son 6 por cada pasajero en la nave (teniendo en cuenta al personal también).
    - Al `prepararViaje()` debe aumentar su velocidad 5000 kms/seg.
    - Al `recibirAmenaza()` debe escapar, aumentando su velocidad 20000 kms/seg, y activar su sirena.
    
    
**IMPORTANTE:** ninguna nave puede superar los 300000 kms/seg, siendo este el máximo alcanzable. 
