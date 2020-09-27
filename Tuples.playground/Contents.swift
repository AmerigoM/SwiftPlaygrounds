import UIKit

let touple1 = ("Amerigo", 28)

print(touple1.0)
print(touple1.1)

let touple2 = (name: "Amerigo", age: 12)

print(touple2.name)
print(touple2.age)

var touple3: (name: String, age: Int)
touple3.name = "Amerigo"
touple3.age = 18

print(touple3.name)
print(touple3.age)

touple3 = (name: "Antonio", age: 12)

print(touple3.name)
print(touple3.age)
