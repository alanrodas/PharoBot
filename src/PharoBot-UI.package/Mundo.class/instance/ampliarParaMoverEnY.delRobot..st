extenciones
ampliarParaMoverEnY: unaLongitud delRobot: unRobot

((unRobot top - unRobot mundo top)abs <= unaLongitud) 
"Se extiende al norte"
ifTrue: [ self extenderAlNorte:  unaLongitud.
		self robot reasignarRobot  .] .

(((unRobot top + unRobot extent y)-(unRobot mundo top + unRobot mundo extent y))abs <= unaLongitud)
"Se extiende al sur"
ifTrue: [ self extenderAlSur:  unaLongitud.
		self robot reasignarRobot  .]