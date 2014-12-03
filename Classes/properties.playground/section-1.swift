// Playground - Computed Properties

import Foundation

class Person{
    
    // Stored properties
    var firstname :String
    var lastname : String
    
    // Computed Property
    
    var fullname : String{
        get{
            // return the computed property
            return firstname+" "+lastname
        }
        set{
            // Remodifies the data 
            // split "newValue" into two pieces
            var nameArray = newValue.componentsSeparatedByString(" ")
            firstname = nameArray[1]
            lastname = nameArray[2]
        }
    }
    
    init(first : String,last : String){
        self.firstname = first
        self.lastname = last
    }
}

var examplePerson = Person(first: "Ash",last:"Coder")
println(examplePerson.fullname)
examplePerson.fullname = " Ashok Kumar"
