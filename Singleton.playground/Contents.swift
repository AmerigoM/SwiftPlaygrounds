import UIKit

// class with a singeton object
class Car {
    var colour = "red"
    
    static let singletonCar = Car()
}

// initialize objects with singleton
let myCar = Car.singletonCar
myCar.colour = "blue"

let yourCar = Car.singletonCar
print(yourCar.colour)


// works with classes too!
class A {
    init() {
        Car.singletonCar.colour = "brown"
    }
}

class B {
    init() {
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()
