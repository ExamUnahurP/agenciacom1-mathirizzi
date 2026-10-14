class Pack{

const duracion

const precioBase

const beneficiosVigentes = []

method agregarBeneficio(beneficio) {
    beneficiosVigentes.add(beneficio)
}

const coordinador

method totalCostosBeneficiosVigentes() = beneficiosVigentes.sum({b => b.costo()})

method valorFinal() = precioBase + self.totalCostosBeneficiosVigentes()

method esPremium()

}

class PackNacional inherits Pack{

const provinciaDestino

const actividadesIncluidas = []

override method esPremium() = duracion > 10 and coordinador.estaAltamenteCalificado()

}

class PackProvincial inherits PackNacional{
    
}

class PackInternacional inherits Pack{

const paisDestino

const cantidadEscalas

const esLugarDeInteres

override method valorFinal() = super() * 1.20

override method esPremium() = esLugarDeInteres == true and duracion > 20 and cantidadEscalas == 0

}

class Coordinador{

    var cantidadViajesRealizados

    var estaMotivado

    var experiencia

    var rol

    method cambiarRol(nuevoRol) {
        if(nuevoRol == guia or nuevoRol == asistenteLogistico or nuevoRol == acompanante){
            rol = nuevoRol
        } else raise.error("El rol es incorrecto")
    }

    method estaAltamenteCalificado() = (cantidadViajesRealizados > 20) and if(rol == guia) estaMotivado == true else if(rol == asistenteLogistico) experiencia >= 3

}

class BeneficioEspecial{

    const tipo

    const costo

    method costo() = costo

    var estaVigente

} 