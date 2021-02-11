import UIKit

//this is a comment, try commenting more
var str:String = "Hello, playground"
print(str)
str = "some data"
print(str)

//let is constant
let con = "more data"

var b:Bool = true
print(b)

var i:Int = 32 //while asigning first time, we asign data type aswell 32 iz INT
i = 0
i = -10

var f:Double = 0.3493

// LESSON 6
func sayHello(_ name:String,_ age:Int) { //if we put _ before param, no call with its name
    
    print("Hello \(name). Ti imas \(age) godine.") // dakle konkatenacija ide sa \(nesto) , ali valjda samo u print
    
}



sayHello("Demco",23) //Dakle samo u funckiji stavit _ pre parametra ! ARGUMENT LABEL


func addFourTo (x:Int) -> Int { // -> znaci return value
    return x+4
}

print(addFourTo(x: 5))

class Spaceship{

    var fuelLevel = 100
    var name = ""
    func cruise() {
        print("Cruising is initiated for \(name).")
    }

    func thrust(){
        print(fuelLevel)
    }
    
}

var myShip = Spaceship()
myShip.name = "Demco"
myShip.cruise()
