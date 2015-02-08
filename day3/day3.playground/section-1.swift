class Stack<Int> {
    var items: [Int]? = []
    
    //这个函数用于在栈中增加一个元素，简单的调用数组append函数就能实现
    func push(value: Int) {
        items?.append(value)
    
    }
    
    //为什么Int后要用“？”
    //如果申明为Int变量，那么它的返回值只能为数字而不能是nil
    //这个函数栈中的一个元素
    func pop() -> Int?{
        if let value = self.top(){  //判断是否为空？？？
            items?.removeLast()
            return value
        
        }
        return nil
    }

    func top() -> Int?{
        if let value = items?.last{   // 取出最后一个值
            return value
        
        }
        return nil
    }
}

var stack = Stack<Int>()


stack.push(0)
stack.push(1)
stack.push(2)

stack.top()
stack.pop()!
stack.top()

println("**********************")
println()



class  Queue<Int> {
    var items:[Int]? = []
    
    func enqeue(value:Int){
        items?.append(value)
    
    }
    
    func dequeue() -> Int?{   //从队列中取出一个值，先进先出，后进后出
        if items?.count > 0 {   //同样判断这个队列不为空，这个栈的判断有什么区别？
            let obj = items?.removeAtIndex(0) //为什么运行了3次？
            return obj
        }else{
            return nil
        }
    
    }
    
    var isEmpty: Bool{
        if let items = self.items {    //调用数组中“isEmpty”的函数
            return items.isEmpty
        
        }else{
            return true
        }
    }
    
    var description:String {
        var description:String = ""
        if let tempItems  = self.items{  //把数组备份
            while !(self.isEmpty){
                description += "\(self.dequeue()!) " // 把数组中的元素全部拿出来
            
            }
                self.items = tempItems
            
        }
        return description
    }
}
var queue = Queue<Int>()


queue.description

println("***************")

class Node<T: Equatable> {    //Equatable是什么？ 表示类型T遵循Equatable协议（可相等）
    var value: T
    var next: Node? = nil
    
    init(_ value: T) {     //这段代码的意义？
        self.value = value
    }
}


class LinkedList<T: Equatable>{
    var head: Node<T>? = nil
    
    func insertTail(value: T){
        if head == nil {
            head = Node(value)
        
        }else{
            var lastValue = head
            while lastValue?.next != nil{
                lastValue  = lastValue?.next
            
            }
            let newNode  = Node(value)
            lastValue?.next = newNode
        
        }
    
    }
    
    func insertHead(value: T) {
        if head == nil {
            self.head = Node(value)
        
        }else{
            let newNode = Node(value)
            newNode.next = head
            self.head = newNode
        }
    }
    
    
    func remove(value: T){
        if head != nil {
            var node = head
            var preNode: Node<T>? = nil
            while node?.value != value && node?.next != nil {
                preNode  = node
                node = node?.next
            }
            if node?.value == value {
                if node?.next != nil{
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
        while node?.next != nil{
            node = node?.next
            description += " \(node!.value)"
        }
        return description
    
    }
    
}

var linkedList = LinkedList<String>()

linkedList.insertHead("Apple")
linkedList.insertTail("is")
linkedList.insertHead("an")
linkedList.insertTail("gift")

linkedList.remove("is")

linkedList.description



println("**************")












