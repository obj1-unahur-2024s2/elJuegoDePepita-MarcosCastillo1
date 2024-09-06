import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {
	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
		config.configurarTeclas()
	}
}

object tutorial2 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}
}

object tutorial3 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}
}

object config {
	method configurarTeclas() {
		keyboard.left().onPressDo({ pepita.moverA(pepita.position().left(1))})
		keyboard.right().onPressDo({ pepita.moverA(pepita.position().right(1))})
		
		keyboard.up().onPressDo({pepita.moverA(pepita.position().up(1))})
		keyboard.down().onPressDo({pepita.moverA(pepita.position().down(1))})
		
		keyboard.m().onPressDo({ self.cambiarSeguidor() })
	}
	
	method cambiarSeguidor() {
		const seguidorActual = pepita.seguidor()
		const seguidorSiguiente = seguidorActual.siguiente()
		seguidorSiguiente.position(seguidorActual.position())
		game.removeVisual(seguidorActual)
		
		game.addVisual(seguidorSiguiente)
		pepita.seguidor(seguidorSiguiente)
	}
	
	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita) })
	}
}