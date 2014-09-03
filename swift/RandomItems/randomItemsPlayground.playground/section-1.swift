// Playground - noun: a place where people can play

import Cocoa

class Item{
    let itemName:String
    let valueInDollars:Int
    let serialNumber:String
    
    init(name:String,value:Int, serialNumber:String){
        self.itemName = name
        self.valueInDollars = value
        self.serialNumber = serialNumber
    }
    
    convenience init(name:String){
        self.init(name: name,value: 0,serialNumber: "")
    }
    
    convenience init(){
        self.init(name: "Item")
    }
    
    class func randomItem() -> Item{
        let randomAdjectivesList = ["Fluffy","Rusty","Shiny"]
        let randomNounList = ["Bear","Spork","Mac"]
        
        let adjectiveIndex = Int(arc4random()) % randomAdjectivesList.count
        let nounIndex = Int(arc4random()) % randomNounList.count
        
        let randomName = "\(randomAdjectivesList[adjectiveIndex]) \(randomNounList[nounIndex])"
        
        let randomValue = Int(arc4random()) % 100
        
        let randomSerialNumber = "\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)\(arc4random() % 10)"
        
        let newItem:Item = Item(name: randomName, value: randomValue, serialNumber: randomSerialNumber)
        
        return newItem
    }
    
}

var items = [Item]()

for index in 1...10{
    items.append(Item.randomItem())
}

for index in items{
    println(index.serialNumber)
}


