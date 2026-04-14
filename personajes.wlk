import armas.*
import elementos.*

// JUGADORES

object luisa {
  const personajeActivo = mario
  method aparece(_elemento) {personajeActivo.encontrar(_elemento)}
}

// PERSONAJES

object floki {
  var arma = jabalina             
  method encontrar(_elemento) {
    if (arma.estaCargada()) {
      _elemento.recibirAtaque(arma.potencia())
      arma.usar()
    }
  }
  method cambiarArma(_unArma) {arma = _unArma}
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = ningunElemento
  method encontrar(_elemento) {
    valorRecolectado += _elemento.valorOtorgado()
    _elemento.recibirTrabajo()
    ultimoElemento = _elemento
  }
  method ultimoElementoEncontrado() {return ultimoElemento}
  method esFeliz() =   
      valorRecolectado > 50 || ultimoElemento.altura() > 10
  method valorRecolectado() = valorRecolectado
}