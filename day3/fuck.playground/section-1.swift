// Playground - noun: a place where people can play

//General Suggestions: use a count for the stack's height, remove all wrapping stuff.

import UIKit

var arr = [1,2,3,4,5]


var str = "Hello, playground"

class Stack<Int> {
    var arr = [1,3,4]
    
    var test:String {
        self.arr.last
        
        if self.arr.last > 3 {
            return "successful"
        }
        return "fail"
    
    }
    var items:Array<Int> = []
    
    func push(value: Int) {
        items.append(value)
    }
    
    
    func pop() -> Int?{
        if var value = self.top(){
            items.removeLast()
            return value
            
        }
        return nil
    }
    
    func top() -> Int? {
        
        if items.count > 0 {
            return items.last
        } else {
            return nil
        }
    }
//    
    func min() -> Int{
        var backup = self.items
        
        var tempMin = items.last!
        

//        
        while (items.count > 0) {
            var topNum = items.last!
            println(self.top()!)
        
            if tempMin < 2 {
                tempMin = self.items.last!
            }
////////            if topNum < tempMin {
////////                
////////            }
//////            self.pop()
//////        }
////       
        return tempMin
    }
}

var stack:Stack<Int> = Stack()

stack.push(1)
stack.push(2)
stack.push(4)


    
//stack.top()!
stack.test
