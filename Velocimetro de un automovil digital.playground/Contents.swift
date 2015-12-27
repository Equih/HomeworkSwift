//: Velocimetro de un automovil digital

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena:String){
        var leyenda : String = ""
        let actual = self.velocidad.rawValue
        switch self.velocidad{
        case .Apagado:
            leyenda = "Apagado"
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            leyenda = "Baja"
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            leyenda = "Media"
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            leyenda = "Alta"
            self.velocidad = .VelocidadMedia
        }
        let resultado = (actual, leyenda )
        return resultado
    }
}

//var velocidad = Velocidades(velocidadInicial: .Apagado)


/*var carro = Auto()
carro.velocidad
carro.velocidad = .VelocidadAlta
carro.velocidad*/

var auto = Auto()
for var i = 0; i < 20; i++ {
    var cambioDeVelocidad = auto.cambioDeVelocidad()
    print("Velocidad Actual: \(cambioDeVelocidad.actual). " + cambioDeVelocidad.velocidadEnCadena)
}