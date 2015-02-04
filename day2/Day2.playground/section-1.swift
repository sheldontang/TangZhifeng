public class dog {
    public func bark() {
        println("Open Mouth")
        println("Wang!")
        println("Shut Mouth")
    
    }
    private var color = " "
    private var IsPreg: Bool
    
    public init() {
        self.IsPreg = false
    
    }
}
public class chicken{
    public func bark(){
        println("Open Mouth")
        println("Ge ge ge!")
        println("Shut Mouth")
    
    }

}

public class chiwawa:dog{
    public func shaking(){
        println("I am shaking!")
        
    }
    public override func bark() {
        println("Open Mouth")
        println("Meow!")
        println("Shut Mouth")
        
    }
    
}


public class huntaway:dog{


}
var Dahuang = huntaway()

Dahuang.bark()
Dahuang.color = "Yellow"
Dahuang.IsPreg = true

println(Dahuang.color)
println(Dahuang.IsPreg)
var Xiaohuang = dog()



var Xiaobai = chiwawa()

Xiaobai.bark()

var Lust = chicken()

Lust.bark()

println("***************************")

//建立一个汽车Auto类，包括轮胎个数，汽车颜色，车身重量、速度等成员变量。并通过不同的构造方法创建实例。至少要求：汽车能够加速，减速，停车。再定义一个小汽车类Car，继承Auto，并添加空调、CD等成员变量，覆盖加速，减速的方法

public class auto{
    
    public var tire:Int = 4
    private var color = " "
    private var weight:Int!
    private var speed:Int!
    public func accerate(acc: Int) ->Int{
        return acc+1
    
    }
    public func slowdown(slow:Int) ->Int{
        if slow > 0 {
            return slow-1
        }else{
            return 0
        }
    
    }
    public func stop() {
        self.speed = 0
    }

}

public class car:auto{
    public var aircondition:Bool  = false
    public var cd:Bool = false
    
    public override func slowdown(slow: Int) -> Int {
        if slow > 0 {
            return slow-1
        }else{
            return 0
        }
    
    }
    
    public override func accerate(acc:Int) ->Int {
        
        return acc+1
        
    }


}


var myauto = auto()

myauto.speed = 12
myauto.color = "Red"
myauto.weight = 100
while myauto.speed < 13{
myauto.speed =  myauto.accerate(myauto.speed)
}


myauto.stop()




