import UIKit


enum Velocidades : Int{
    
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self  = velocidadInicial
    }
}
class Auto{
    var velocidad : Velocidades
    init() {
        self.velocidad = Velocidades.apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var velocidadCadena : String
        let velocidadActual :Velocidades = self.velocidad
        
        switch self.velocidad {
        case Velocidades.apagado:
            velocidadCadena  = "Apagado"
             self.velocidad = Velocidades.velocidadBaja
        case Velocidades.velocidadBaja:
           velocidadCadena = "Velocidad baja"
             self.velocidad = Velocidades.velocidadMedia
        case Velocidades.velocidadMedia:
            velocidadCadena = "Velocidad media"
            self.velocidad = Velocidades.velocidadAlta
        default:
            velocidadCadena = "Velocidad alta"
            self.velocidad = Velocidades.velocidadMedia
        }
        return( velocidadActual.rawValue, velocidadCadena)
        
    }
}
var auto  = Auto()
for _ in 0..<20{
   let velocidad = auto.cambioDeVelocidad()
    print ("\(velocidad.actual) , \(velocidad.velocidadEnCadena)")
}
