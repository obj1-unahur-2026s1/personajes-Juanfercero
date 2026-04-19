/* 
  UNIVERSIDAD NACIONAL DE HURLINGHAM
  INSTITUTO DE TECNOLOGIA E INGENIERÍA
  PROGRAMACIÓN CON OBJETOS 1 
  -----------------------------------------
  Objeto / Mensaje / Definiciones iniciales
  -----------------------------------------
*/

import armas.*
import elementos.*

// JUGADORES

object luisa {
  var personajeActivo = null
  method aparece(_elemento) {personajeActivo.encontrar(_elemento)}
  method asignarPersonaje(personaje){
    personajeActivo = personaje
    //Luisa no nace con ningún personaje activo, hay que asignarle uno.
  }
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