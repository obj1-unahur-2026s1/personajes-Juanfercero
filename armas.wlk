/* 
  UNIVERSIDAD NACIONAL DE HURLINGHAM
  INSTITUTO DE TECNOLOGIA E INGENIERÍA
  PROGRAMACIÓN CON OBJETOS 1 
  -----------------------------------------
  Objeto / Mensaje / Definiciones iniciales
  -----------------------------------------
*/

// LAS ARMAS

object ballesta {
  var flechas = 10
  method estaCargada() = flechas > 0
  method potencia() = 4
  method usar() {flechas -= 1}
}

object jabalina {
  var estaCargada = true
  method potencia() = 30
  method usar() {estaCargada = false}
  method estaCargada() = estaCargada
}