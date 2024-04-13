module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero


--Ejemplo Aplicacion Parcial de una Funcion

esMayorDeEdad :: Number -> Bool
esMayorDeEdad edad = edad >= 18

type Persona = (String, Number)

edadPersona :: Persona -> Number
--edadPersona persona = snd persona
edadPersona = snd

--Saber si una persona es mayor de edad

personaMayorDeEdad :: Persona -> Bool
--personaMayorDeEdad persona = (esMayorDeEdad . edadPersona) persona
personaMayorDeEdad = esMayorDeEdad . edadPersona



