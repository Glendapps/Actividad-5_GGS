import UIKit

//CLASE

class Persona {
    var saludo = ""
    var nombre = ""
    var camino = 0
    
    init (nombre: String, saludo:String)
    {
        self.nombre = nombre
        self.saludo = saludo
    }

   func hablar(mensaje:String)
   {
       self.saludo = mensaje
   }
   func person(nombre:String)
   {
       self.nombre = nombre
   }
   func Caminar(pasos:Int)
   {
       self.camino = pasos
   }
}

//Instancias e inicializar
var glenda = Persona(nombre: "Glenda", saludo: "")
glenda.person(nombre:"Glenda")
glenda.hablar(mensaje:"mucho gusto")
glenda.Caminar(pasos: 20)

//Aplicar Clase

print("Hola \(glenda.nombre), \(glenda.saludo).")
print("Caminó \(glenda.camino) pasos.")


//ESTRUCTURAS

struct Pantalla
{
var alto:Int
var ancho:Int

init(alto:Int, ancho:Int)
{
    self.alto = alto
    self.ancho = ancho
}

func QueResolucion() -> (Int, Int)
{
    return (self.alto, self.ancho)
}

}

//Instanciar e instalar
var hd = Pantalla(alto:1024, ancho: 768)

//Aplicación de struct
var vga = Pantalla(alto: 480, ancho: 640)

hd.QueResolucion()
vga.QueResolucion()//Aplicación de struct

print(hd)
print(vga)

//EXTENSIONES

extension Int {
    func horas() -> Int {
        return self*24*60
    }

    var dias:Int {
    return self*7*24
    }
}

//horas a segundos
3.horas()

3.dias


import Foundation

//OPTIONAL

let dias = ["PUE":300, "MTY":100, "GLD":120, "CDMX":200]
let diasDF = ["DF":450]
var existe:Int?

//aplicación
existe = dias["DF"]
existe = dias["PUE"]

//puente
if dias["DF"] != nil{
    print(dias)
}else{
    print(diasDF)
}
