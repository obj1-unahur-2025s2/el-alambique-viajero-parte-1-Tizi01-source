import lugares.*


object luke {
  var lugaresVisitados = 0
  var ultimoRecuerdo = 0
  var vehiculoActual = alambiqueVeloz

  method lugaresVisitados() = lugaresVisitados
  method ultimoRecuerdo() = ultimoRecuerdo
  method vehiculoActual() = vehiculoActual

  method cambiarVehiculo(nuevoVehiculo) {
    vehiculoActual = nuevoVehiculo
  }
  
  method viajar(ciudad) {
    if(ciudad.restricciones(vehiculoActual) == true){
        lugaresVisitados =+ 1
        alambiqueVeloz.viajar()
        ultimoRecuerdo = ciudad.recuerdo()
    }
  }
}

// Vehiculos

object alambiqueVeloz {
    var combustible = 5
    method combustible() = combustible
    method velocidad() = 20

    method estadoInterno() = "Vesloz"

    method viajar() {
        combustible =- 1
    }
}

object superChatarraEspecial {
    var combustible = 10
    method combustible() = combustible
    method velocidad() = 15

    method estadoInterno() = "Tiene cañones y municiones"

    method viajar() {
        combustible =- 2
    }
}

object antiguallaBlindada {
    var combustible = 10
    method combustible() = combustible
    method velocidad() = 10

    var gangsters = 10
    method estadoInterno() = gangsters

    method viajar() {
        combustible =- 1
        gangsters =- 1
    }
}

object superConvertible {
    var autoConvertido = alambiqueVeloz

    method cambiarAuto(nuevoAuto) {
        autoConvertido = nuevoAuto
    }

    method combustible() = autoConvertido.combustible()
    method velocidad() = autoConvertido.velocidad()
    method estadoInterno() = autoConvertido.estadoInterno()
    method viajar() = autoConvertido.viajar()

}