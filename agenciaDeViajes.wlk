class Pack{

const duracion

const precioBase

// beneficios especiales

// coordinador

method valorFinal() = precioBase + beneficios

}

class PackNacionales inherits Pack{

const provinciaDestino

const actividadesIncluidas = []

}

class PackInternacionales inherits Pack{

const paisDestino

const cantidadEscalas

method esLugarDeInteres()

}

class Coordinador{

    var cantidadViajesRealizados

    method estaMotivado()

    var experiencia

    var rol

    method cambiarRol(nuevoRol) {
        
    }

}

class beneficiosEspeciales{

    const tipo

    const costo

    method costo() = costo

    method estaVigente()
}