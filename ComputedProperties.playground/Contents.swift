import UIKit

// STORED PROPERTIES: properties manually set
let pizzaInInches1: Int = 10
var numberOfSlices1: Int = 6

// we can access stored properties and read them
print("Stored properties")
print(numberOfSlices1)

// COMPUTED PROPERTIES: their value depends on other properties
var pizzaInInches2: Int = 14
var numberOfSlices2: Int {
    return pizzaInInches2 - 4
}

// we can access stored properties and read them
print("Computed properties")
print(numberOfSlices2)

// if the variable changes, the computed property that uses that variable changes too
pizzaInInches2 = 12
print("Variables influence computed properties")
print(numberOfSlices2)

// a computed properties ia actually a getter which we can write in its full form
var pizzaInInches3: Int = 20
var numberOfSlices3: Int {
    get {
        return pizzaInInches3 - 4
    }
}

print("A computed property is a Getter")
print(numberOfSlices3)
pizzaInInches3 = 12
print(numberOfSlices3)

// computed properties can have setters in addition
var pizzaInInches4: Int = 10
var numberOfSlices4: Int {
    get {
        print("The get has been called")
        return pizzaInInches4 - 4
    }
    // the set is executed whenever this property gets a new value set to it
    set {
        // newValue is a special property that consists in the new value that has been given to the variable
        print("Number of slices now has a new value: \(newValue)")
    }
}

print("The set is executed when a new value is given to the property")
numberOfSlices4 = 25

print("The get is executed when a new value needs to be calculated")
let test = numberOfSlices4 + 34


// complex behaviors can be implemented with computed properties
print("Computed properties can implement complex behaviors")
let pizzaInInches5: Int = 10
var numberOfPeople5: Int = 6
let slicesPerPerson5: Int = 5
var numberOfSlices5: Int {
    get {
        return pizzaInInches5 - 4
    }
}
var numberOfPizza5: Int {
    get {
        let numberOfPeopleFedPerPizza5 = numberOfSlices5 / slicesPerPerson5
        return numberOfPeople5 / numberOfPeopleFedPerPizza5
    }
    set {
        let totalSlices5 = numberOfSlices5 * newValue
        numberOfPeople5 = totalSlices5 / slicesPerPerson5
    }
}

print(numberOfPizza5)
numberOfPizza5 = 4
print(numberOfPeople5)
print(numberOfPizza5)

// OBSERVE PROPERTY
// You can trigger code when a property's value is changed
print("Observe property")
var myProperty: Int = 5 {
    // property observers
    
    willSet {
        print("The value will be changed")
        print(myProperty)
        print(newValue)
    }
    
    didSet {
        print("The value is changed")
        print(myProperty)
        print(oldValue)
    }
}

myProperty = 10
