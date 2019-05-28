class NaveBaliza {
	var property velocidad = 0
	var property colorBaliza = "verde"

	method prepararViaje() {
		velocidad = (5000 + velocidad).min(300000)
		self.colorBaliza("verde")
	}
	
	method recibirAmenaza() {
		self.escapar()
		self.colorBaliza("rojo")
	}

	method escapar() {
		velocidad = (20000 + velocidad).min(300000)
	}

}

class NaveCombate {

	var property velocidad = 0
	var property visible = true
	var property misilesDesplegados = false
	var mensajesEmitidos = []

	method emitirMensaje(mensaje) {
		mensajesEmitidos.add(mensaje)
	}

	method esEscueta() = mensajesEmitidos.all({m => m.length() <= 30})

	method fueraDePeligro() = mensajesEmitidos.all({m => m.length() <= 10})

	method enModoAtaque() = not visible and misilesDesplegados

	method prepararViaje() {
		velocidad = (5000 + velocidad).min(300000)
		if (!self.enModoAtaque()) {
			visible = false
			misilesDesplegados = true
			self.emitirMensaje("Saliendo en misión")
		} else {			
			self.emitirMensaje("Volviendo a la base")
		}
	}

	method recibirAmenaza() {
		if (self.enModoAtaque()) {			
			self.emitirMensaje("Enemigo encontrado")
		} else {
			self.emitirMensaje("RETIRADAAAAAA")
			self.escapar()
		}
	}

	method escapar() {
		velocidad = (20000 + velocidad).min(300000)
		visible = true
		misilesDesplegados = false
	}

}

class NaveDePasajeros {

	var property velocidad = 0
	var cantidadDePasajeros = 0

	method racionesDeComidaNecesarias() = 4 * (cantidadDePasajeros + 4) + if (cantidadDePasajeros > 50) 20 else 0

	method racionesDeBebidaNecesarias() = 6 * (cantidadDePasajeros + 4)

	method prepararViaje() {
		velocidad = (5000 + velocidad).min(300000)
	}

	method recibirAmenaza() {
		self.escapar()
	}

	method escapar() {
		velocidad = (20000 + velocidad).min(300000)
	}
}

