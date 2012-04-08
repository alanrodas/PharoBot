ui building
buildWorldArea

	"TODO eliminar codigo de prueba"
	| world laBateria elRobot elMundo sp |
	world := Mundo crearMundo: 560@560.
	laBateria:= Bateria crearBateriaConCargaMaxima: 1000.
	elRobot:= RobotMorph crearRobotConMundo: world conBateria: laBateria. 
	elRobot inicializarRobot.
	sp := ScrollPane new.
	sp scroller addMorph: world.
	^sp