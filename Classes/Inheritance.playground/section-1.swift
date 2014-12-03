 //Playground - Inheritance

// Playground - Inheritance

class Player {
    // properties
    var name : String
    var score : Int
    // methods
     func description() -> String {
        return("Player \(name) has a score of \(score)")
    }
    // init
    init() {
        self.name = "John Doe"
        self.score = 0
    }
    // init with parameter
    init(name : String) {
        self.name = name
        self.score = 500
    }
}
class PremierPlayer : Player{
    // Additional properties 
    var memberLevel :String
    
    override init() {
        memberLevel = "Gold"
        super.init()
    }
    
    override func description() -> String {
        let originalMessage = super.description()
        return("\(originalMessage)and is a \(memberLevel) member")
    }
    
    //additional methods
    func calculateBonus(){
        self.score += 1000
        println("New Score is \(self.score)")
    }
}

 var newPlayer = PremierPlayer()
newPlayer.description()
newPlayer.calculateBonus()


var jake = Player()
println(jake.description())



 
