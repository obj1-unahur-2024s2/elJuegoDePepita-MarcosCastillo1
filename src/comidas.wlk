import wollok.game.*
import extras.*


object manzana {
var property position = game.at(0, 4) 
method image() =  "manzana.png" 
method siguiente() = alpiste
}

object alpiste {
var property position = game.at(0, 4) 
method image() =  "alpiste.png" 
method siguiente() = silvestre


}

