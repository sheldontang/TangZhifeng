import UIKit



//作业0
var String:String = "345"

var Int: Int = String.toInt()!


class Node<T: Equatable> {   //第一个class，构建brick
    var value: T
    var next:Node<T>? = nil
    

    init (_ value: T) { //初始化class
    
        self.value = value
    }
    
}

class LinkList<T: Equatable> {
    var head:Node<T>? = nil    //head继承类Node
    
    func insertTail(value:T) {
        
        if head == nil{
            head = Node(value)
        
        }else{
            var lastValue = head
            while lastValue?.next != nil {
                lastValue = lastValue?.next
            
            }
            let newNode = Node(value)   //为什么要先赋值给newNode？
            lastValue?.next = newNode
        
        }
    
    }
    
    func insertHead(value:T) {
        
        if head == nil{
            self.head = Node(value)
        
        }else{
            let newNode = Node(value)
            newNode.next = head   // head和self.head有什么区别？
            self.head = newNode
        
        }
    
    }
    
    func remove(value:T) {
        if head != nil{
            var node = head
            var preNode:Node<T>? = nil
            while node?.value != value && node?.next != nil {  //从头开始找和value值相同的node
                preNode = node
                node = node?.next
                
            }
            if node?.value == value {
                if node?.next != nil{
    //做一个判断，如果这个node是最后一个，那么把prenode的下一个索引设为nil，如果不是，就把node的next的值赋值给prenode.next
                    
                    preNode?.next = node?.next
                }else{
                    preNode?.next = nil
                }
            
            }
        
        }
        
    }
    
    var description: String {
        
        var node = head
        var description = "\(node!.value)"
        while node?.next != nil {
            node = node?.next
            description += " \(node!.value)"
        
        }
            return description
    }
   //作业1

    
    
}

var linklist  = LinkList<String>()

linklist.insertTail("I")
linklist.insertTail("am")
linklist.insertTail("a")
linklist.insertTail("student.")
linklist.description

var adDescription = ""

func adverse(value:Node<String>?) -> String{
    
    
        if value?.value != nil {
            
            adverse(value?.next)
            adDescription += " \(value!.value)"
        }
    
        
        return adDescription
}
    

adverse(linklist.head)

println("************")


//第四题

func minx(array:Array<Int>, k:Int) ->Array<Int> {
    var min = []
    for var loop = 0; loop < k; loop++ {
        var minNum = array[0]
        for loop2 = 0
        
        
    }
    
}

var num = [12,13,43,64,75,223,546]




