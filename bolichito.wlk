import objetos.*
import personas.*

object bolichito {
  var objetoEnMostrador = pelota
  var objetoEnVidriera = remera

  method objetoEnMostrador(unObjetoEnMostrador) {
    objetoEnMostrador = unObjetoEnMostrador
  }
  method objetoEnVidriera(unObjetoEnVidriera) {
    objetoEnVidriera = unObjetoEnVidriera
  }
  method objetoEnMostrador() = objetoEnMostrador
  method objetoEnVidriera() = objetoEnVidriera

  method esBrillante() = objetoEnMostrador.esBrillante() and objetoEnVidriera.esBrillante()
  method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()
  method estaEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
  method tieneUnObjetoDeColor(unColor) = objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
  method puedeMejorar() = not self.estaEquilibrado() || self.esMonocromatico()
  method puedeOfrecerAlgoA(unaPersona) = unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
}
