import plagas.*

object nivelDeProduccion {
	var property nivel =0
}
class Hogar{
	var property mugre
	var property nivelConfort
method esBueno(){
 return mugre <= nivelConfort *0.5
}
method recibirAtaque(plaga){
	mugre +=plaga.nivelDeDanio()
}
}


class Huerta{
	const property nivel = nivelDeProduccion
	var property capacidadDeProduccion
	
method esBueno(){
	return capacidadDeProduccion > nivel.nivel()
}
method recibirAtaque(plaga){
	 produccion -= plaga.nivelDeDanio()*0.1
	if(plaga.transmiteEnfermedad()){
		 produccion -= 10
	}
}
}


class Mascotas{
	var property nivelDeSalud
method nivelDeSaludable(){
	return nivelDeSalud
}
method esBuena(){
	return nivelDeSalud >250
}
method recibirAtaque(plaga){
	if(plaga.transmiteEnfermedad()){
		nivelDeSalud = 0.max(nivelDeSalud - plaga.nivelDeDanio())
	}
}
}
class Barrio{
	const property elementos =[]
method agregarElements(elemento){elementos.add(elemento)}
method sacarElemento(elemento){elementos.remove(elemento)}
method esCopado()= return elementos.count({c=>c.esBueno()}) > elementos.count({e=> not e.esBueno()})
}
