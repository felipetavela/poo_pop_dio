import UIKit
class Carro {
    enum ModeloCarro: String {
        case TSI = "TSI"
        case GTI = "GTI"
        case GLI = "GLI"
    }
    
    let marca: String
    let nome: String
    let modelo: ModeloCarro
    let cilindradas: Double
    let potencia: Double
    let ano: Int
    
    init(marca: String, nome: String, cilindradas: Double, modelo: ModeloCarro, potencia: Double, ano: Int) {
        self.marca = marca
        self.nome = nome
        self.cilindradas = cilindradas
        self.modelo = modelo
        self.potencia = potencia
        self.ano = ano
    }
    
    func nomeCarro() -> String {
        return "\(marca) \(nome) \(modelo) \(cilindradas)"
    }
    
    func precisaPagarIpva() -> Bool {
        let anoCorrente = Calendar.current.component(.year, from: Date())
        
        if (anoCorrente - ano) >= 15 {
            return false
        } else {
            return true
        }
    }
}

let uno = Carro(marca: "Fiat", nome: "Uno", cilindradas: 1.0, modelo: .GLI, potencia: 100, ano: 1992)
uno.nomeCarro()


