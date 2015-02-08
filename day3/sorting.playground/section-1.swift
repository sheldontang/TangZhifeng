var numberList = [9,12,45,32,6]


func insertionSort(){
    var x, y, key :Int
    
    for (x = 0; x < numberList.count; x++){
        key = numberList[x]
        for (y = x; y > -1; y = y-1){
            if (key < numberList[y]){
                numberList.removeAtIndex(y + 1)
                numberList.insert(key, atIndex: y)
        
            }
        }
    
    }

}

insertionSort()
numberList

func bubblesort(){
    

}


func quickSort(var newArray: Array<Int>) -> Array<Int> {
    
    var less:[Int] = []
    var equal:[Int] = []
    var more: [Int] = []
    
    if newArray.count > 1 {
        var pivot = newArray[0]
        
        for x in newArray{
            
            if x < pivot {
                less.append(x)
            }else if x > pivot{
                more.append(x)
            }else{
                equal.append(x)
            }
            
        }
        return (quickSort(less) + equal + quickSort(more))
        
    }else{
        return newArray
    }
}

