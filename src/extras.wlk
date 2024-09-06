import pepita.*
import wollok.game.*
import comidas.*


object nido {
	
	method image() = "nido.png" 
	method position() = game.at(game.width() - 2, game.height() -2) 
}

object silvestre {
	var property position = game.at(3, 0)  
	
	method image() = "silvestre.png"

	method siguiente() = manzana 

	method perseguirPepita() {
		if(pepita.position().x()> 3)
		position = game.at( pepita.position().x(), self.position().y())
	  
	}


}

