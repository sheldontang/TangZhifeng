class Recursion {
    func printNumber(N: Int){
        println(N)
        
        if N > 1{
        
            printNumber(N-1)
        
        }
        
        
    
    }

}

var tempR = Recursion()

tempR.printNumber(5)



func fibonacci(i: Int) -> Int {
    if i <= 2 {
        return 1
    
    }else{
        return fibonacci(i - 1) + fibonacci(i - 2)
    }

}

fibonacci(10)


func factorial (j: Int) -> Int {
    if j == 1 {
        return 1
    
    }else {
        return j * factorial(j-1)
    }

}

factorial(20)

func pow(i: Int, j: Int) -> Int {
    if j == 0{
        return 1
    }else{
    
        return pow(i, j-1)*i
    }
}

pow(5,4)

func gongyue(a: Int, b:Int) -> Int {
    if b == 0{
        return a
    }else{
        if a > b{
            return gongyue(a-b, b)
        }else{
            return gongyue(a, b - a)
        }
        
    }

}

gongyue(28, 35)
