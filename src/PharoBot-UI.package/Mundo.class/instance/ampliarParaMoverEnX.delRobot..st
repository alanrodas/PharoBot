extenciones
ampliarParaMoverEnX: unaLongitud delRobot: unRobot

((unRobot left - unRobot mundo left)abs <= unaLongitud)
"Se extiende al oeste"
ifTrue: [ self extenderAlOeste: unaLongitud.
		self robot reasignarRobot .] .

(((unRobot left + unRobot extent x)-(unRobot mundo left + unRobot mundo extent x))abs <= unaLongitud) 
"Se extiende al este"
ifTrue: [ self extenderAlEste: unaLongitud.
		self robot reasignarRobot . ].