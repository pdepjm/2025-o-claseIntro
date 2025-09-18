object homero {
  var donas = 0

  //getter
  method donas() = donas

  //setter
  method donas(cantidad){
    donas = cantidad
  }

  method comprarDonas() {
    donas += 12
  }

//homero.comerDona()
  method comerDona(){
    donas -= 1
  }

  //homero.estaDistraido()
  method estaDistraido() = donas < 2
}

//plantaNuclear.estaEnPeligro()

object plantaNuclear {
  var barrasDeUranio = 0
  var encargado = homero

  method estaEnPeligro() = (encargado.estaDistraido() and barrasDeUranio > 10000) or mrBurns.esPobre()

  method barrasDeUranio(cargamento){
    barrasDeUranio = cargamento
  }

  method encargado(nuevoEncargado){
    encargado = nuevoEncargado
  }

}

object patoBalancin {
  method estaDistraido() = false
}

object lenny {
  var cervezasTomadas = 0

  method estaDistraido() = cervezasTomadas > 3

  method tomarCerveza(cervezas) {
    cervezasTomadas += cervezas
  }
}

object mrBurns {
  var millonario = true

  method despojarseDeRiquezas(){
    millonario = false
  }

  method esPobre() = millonario.negate()
}
