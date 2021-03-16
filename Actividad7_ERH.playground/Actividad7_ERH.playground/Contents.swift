import UIKit

// 2. Para la colección var costo_referencia:[Float] = [8.3,10.5,9.9], aplica el impuesto del 16% a través de recorrer la colección costo_referencia para aplicar el impuesto a cada cantidad.

var costo_referencia:[Float] = [8.3,10.5,9.9]
print(costo_referencia)
print("-------------------------------------------")

// 3. Crea una función impuesto que reciba como parámetro la colección y regrese aplicado el impuesto a cada cantidad.

func impuesto(Arreglo:[Float]) -> [Float]
{
    var costoConImpuesto:[Float] = []
    for n in Arreglo
    {
        costoConImpuesto.append(n * 0.16)
    }
    return costoConImpuesto
}

print(impuesto(Arreglo: costo_referencia))
print("-------------------------------------------")

// 4. Crea la función sumaTres que reciba una función con dos valores a sumar y un segundo parámetro para sumar el tercer número.

let Suma = {(x:Int, y:Int) -> Int in return x + y}

func sumaTres(a:Int, b: Int, c: Int) -> Int
{
    return Suma (a,b) + c
}

print(sumaTres(a: 30, b: 15, c: 7))
print("-------------------------------------------")

// 5. Crea una función genérica para intercambiar valores entre dos variables del mismo tipo.

func IntercambioValor( a: Int, b: Int) -> (Int,Int) {
  let temp = a
  let a = b
  let b = temp
return (a,b)
}

var valor1 = 10
var valor2 = 20

var (valor3) = IntercambioValor(a:valor1,b:valor2)
 
print(valor3)
print("-------------------------------------------")

// 6. Crea la función Transformar que reciba como parámetro una colección de tipo Int var datos = [3,7,9,2] y una función que transforme cada valor de la colección en una operación definida fuera de la función, regresando una colección transformada.

var datos = [3,7,9,2]

func Transformar(arreglo:[Int]) -> [Int]
{
    return arreglo
}

func CollectionTransform (arreglo:[Int]) -> [Int]
{
    var resultado:[Int] = []
    for Transformar in arreglo
    {
        resultado.append (Transformar + 2)
    }
    return resultado
}
print(Transformar(arreglo:datos))
print(CollectionTransform(arreglo: datos))
print("-------------------------------------------")

// 7. Aplica la función de librería de Swift map para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplica el impuesto de 16% y asígnala a la variable impuesto.

var precios = [4.2, 5.3, 8.2, 4.5]

var impuesto = precios.map{a in return a * 0.16}
print(impuesto)
print("-------------------------------------------")

// 8. Aplica la función de la librería de Swift filter para la colección resultante impuesto del paso A, en donde obtengas sólo los precios mayores a 6.0 y asígnalos a la variable precio_menor.

var precio_menor = impuesto.filter{a in a > 6.0}
print(precio_menor)

print("-------------------------------------------")
