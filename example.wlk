//Ejercicio Sueldo de Pepe
//El sueldo se pepe se calcula así: sueldo = neto + bono x presentismo + bono x resultados.
object pepe{
	var sueldo=0
	method sueldo(categoria, bono, bono1){	
		sueldo = categoria.neto() + bono.presentismo() + bono1.resultado(categoria)
		return sueldo
	
	}
}

object gerente{
	method neto(){
		return 1000
	}
}
object cadete{
	method neto(){
		return 1500
	}
}

object falta{
	var faltas=0
	method presentismo(dias){
		faltas=dias
	}
	method presentismo(){
		if(faltas>0){
			return 0
		}
		else return 100
	}
}	

object bonosobreneto{	
	method resultado(categoria){	
		return (categoria.neto()*10)/100
	}
}	
object bonofijo{
	method resultado(categoria){
		return 80
	}
}
object bononada{
	method resultado(categoria){
		return 0	
	}
}
