// FUNCTIONS

// define a function
func sum(x: Int, y: Int) -> Int {
    return x + y
}

// execute a function
sum(x: 3, y: 2)

// define a constant
let books = [
    "Dieci piccoli indiani",
    "Il Ritratto di Dorian Gray",
    "Poirot sul Nilo"
]

// define a function with external and internal parameters
func getItem(with id: Int) -> String {
    // use the internal parameter inside
    return books[id]
}

// run the function using the external parameter
getItem(with: 0)

// define a function with ext/int parameters and default parameter
func getItemWithDefault(with id: Int = 0) -> String {
    return books[id]
}

// run the function with a parameter
getItemWithDefault(with: 2)

// run the function with the default parameter
getItemWithDefault()
