object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalCobrado=0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){totalCobrado+=sueldo}
	method totalCobrado(){return totalCobrado}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero = 0
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() {return cantidadEmpanadasVendidas * montoPorEmpanada}
	method cobrarSueldo(){}
	method gastar(cuanto){
		if(dinero < cuanto )
		 {deuda+= cuanto-dinero
		  dinero=0	
		 }
		 else{dinero-=cuanto}
	}
	method totalDeuda(){return deuda}
	method totalDinero(){return dinero}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
    }
}