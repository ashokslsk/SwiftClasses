// Play ground - initializer

class Player {
    // Properties
    var name : String
    var score : Int
    
    //Methods
    func description() ->String {
        return("Player \(name) has a score of \(score)")
    }
    // default initializer
    init(){
        name = "Ashok Kumar"
        score = 99
    }
    // initializer with parameter
    init(name:String)
    {
     self.name = name
     self.score = 110
    }
    
    deinit{
        // any necessary cleanup code
    }
}

var firstPlayer = Player() // init() is Automatically called
println(firstPlayer.description())

// use custom initializer
var secondPlayer = Player(name: "Ashu")
println(secondPlayer.description())

