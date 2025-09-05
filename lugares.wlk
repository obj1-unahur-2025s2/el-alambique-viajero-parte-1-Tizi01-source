import elAlambiqueViajero.*

// CIUDADES
object paris {
    method recuerdo() = "Llavero de torre Eiffel"

    method restricciones(vehiculo) = vehiculo.combustible() > 1
}

object buenosAires {
    method recuerdo() = mate

    method restricciones(vehiculo) = vehiculo.velocidad() > 10
}

object bagdad {
    var recuerdo = "bidón con petróleo crudo"
    method recuerdo() = recuerdo

    method cambiarRecuerdo(nuevoRecuerdo) {
      recuerdo = nuevoRecuerdo
    }

    method restricciones() = true
}

object lasVegas {
    var recuerdo = 0
    method recuerdo() = recuerdo

    method homenaje(ciudad) {
      recuerdo = ciudad.recuerdo()
      restricciones = ciudad.restricciones()
    }

     var restricciones = 0
     method restricciones() = restricciones

}



// RECUERDOS

object mate {
  var yerba = true

  method presidente(condicion) {
    yerba = false
  }
}





