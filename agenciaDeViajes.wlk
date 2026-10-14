class Pack{

const duracion

const precioBase

const beneficiosVigentes = []

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

method esLugarDeInteres()

override method valorFinal() = super() * 1.20

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