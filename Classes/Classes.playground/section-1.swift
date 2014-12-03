// Playground - Classes

class Player {
    // properties
    var name : String = "Ashok"
    var score : Int = 99
    
    // Methods
    func description() -> String {
        return("Player \(name) has a score of \(score)")
    }
}


// instantiate the class

var ashu = Player()

// Use dot syntax 

println(ashu.description())
