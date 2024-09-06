import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(0, 2)
	var property  seguidor = silvestre

	


	method image() {
		return 
		if (self.estaEnElNido()) {"pepita-grande.png" }
		
		else if ((self.estaEncimaDeSilvestre() and self.estaPegadoASilvestre()) or self.estaCansada() ) { "pepita-gris.png"}
		
		else {"pepita.png"}
	}
	method estaEncimaDeSilvestre() {
		return self.position().x() == silvestre.position().x() 
	} 
	method estaPegadoASilvestre() {
		return self.position().y() <= 2
	} 

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method moverA(nuevaPosicion) {
		 
	  	self.vola(position.distance(nuevaPosicion))
		if (not self.estaCansada()){
			position = nuevaPosicion
		}
		silvestre.perseguirPepita()

	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		
		return self.position() == nido.position()
	}
	method vola(kms) {
		energia = energia - kms * 9
	}


}

