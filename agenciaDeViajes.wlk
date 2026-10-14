class Pack{

const duracion

const precioBase

const beneficiosVigentes = []

method agregarBeneficio(beneficio) {
    beneficiosVigentes.add(beneficio)
}

// coordinador

method totalCostosBeneficiosVigentes() = beneficiosVigentes.sum({b => b.costo()})

method valorFinal() = precioBase + self.totalCostosBeneficiosVigentes()

}

class PackNacional inherits Pack{

const provinciaDestino

const actividadesIncluidas = []

}

class PackInternacional inherits Pack{

const paisDestino

const cantidadEscalas

const esLugarDeInteres

override method valorFinal() = super() * 1.20

}

class Coordinador{

    var cantidadViajesRealizados

    var estaMotivado

    var experiencia

    var rol

    method cambiarRol(nuevoRol) {
        
    }

}

class BeneficioEspecial{

    const tipo

    const costo

    method costo() = costo

    var estaVigente

} 