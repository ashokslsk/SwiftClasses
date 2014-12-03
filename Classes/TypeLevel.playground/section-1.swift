 // Playground - Creating Type Properties and Type Methods

class BankAccount {

    //strored properties
    let accountNumber : Int
    let routingCode = 12345678
    var balance : Double
    
    class var interstRate : Float {
        return 2.0
    }
    
    init(num : Int, initialBalance : Double){
        self.accountNumber = num
        self.balance = initialBalance
    }
    func deposit(amount : Double){
        balance += amount
    }
    
    func withdraw(amount : Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        }else{
            println("Insufficient funds")
            return false
        }
    }
    class func example(){
        // type Methods CANNOT access instance data
        println("Interest rate is \(self.interstRate)")
    }
    
    // etc...
}

 var firstAccount = BankAccount (num: 11221122, initialBalance: 1000.00)
 var secondAccound = BankAccount(num: 22113322, initialBalance: 4543.54)
 
 BankAccount.interstRate