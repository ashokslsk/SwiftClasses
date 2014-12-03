// Playground - Observers
import UIKit

func getDailyBonus() -> Int{
    println("Performing complicated task....")
    return random()
}

class Player{
    // Properties
    var name : String = "Ashok Kumar" {
        willSet{
            println("About to change name to \(newValue)")
            
        }
        didSet{
            println("Have changed name from \(oldValue)")
        }
    }
    var score = 0
    lazy var bonus = getDailyBonus()
    
    //methods
    func description() -> String{
        return("Player \(name) has a score of \(score)")
    }
}

var newPlayer = Player()

newPlayer.name = "Shelly Evans"
