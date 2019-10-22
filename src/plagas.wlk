import elementos.*

class Plaga{
var property poblacion
method transmiteEnfermedad(){
	return poblacion > 10
}
	
}



class Cucaracha inherits Plaga{
	
	var property pesoPromedio
method transmiteEnfermedad(){
	return pesoPromedio > 10 && super()
}
method nivelDeDanio(){
	return poblacion*0.5
}
}



class Mosquitos{
	var property pesoPromedio
	var property poblacion
}



class Pulgas{
	var property pesoPromedio
	var property poblacion
method nivelDeDanio(){
	return poblacion*0.5
}
}


class Garrapatas{
	var property pesoPromedio
	var property poblacion
}