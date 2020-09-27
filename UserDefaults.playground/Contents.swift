import UIKit

let defaults = UserDefaults.standard

// standard datatype benn saved in UserDefaults
defaults.set(0.24, forKey: "volume")
defaults.set(true, forKey: "musicOn")
defaults.set("Amerigo", forKey: "playerName")
defaults.set(Date(), forKey: "AppLastOpenedByUser")

// collections
let array = [1,2,3]
defaults.set(array, forKey: "myArray")

let dictionary = ["name": "Amerigo"]
defaults.set(dictionary, forKey: "myDictionary")


// retrieve the data
let volume = defaults.float(forKey: "volume")
let appLastOpened = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int] // the downcast is safer
let myDictionary = defaults.dictionary(forKey: "myDictionary")

