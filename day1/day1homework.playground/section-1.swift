// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"// 内存管理系统会根据变量的类型来给变量分配内存空间，以更高效地利用内存空间。


var array = [1,2,3,4,5]

array[0]

/*为什么数组要从0开始？
这是一个程序语言设计的问题，以C为例，数组下标通常是一个指针，是为了索引这个变量值在内存中的位置。所以，表达式Array[n]指的是在这N个元素中它离初始元素的距离.


{
以“以行为主序”的分配为例：设数组的基址为LOC(a c1 c2)，每个数组元素占据l 个地址单元，那么aij 的物理地址可用一线性寻址函数计算：
LOC(aij)=LOC(a c1 c2)+( (i- c1) *( d2 - c2 + 1)+ (j- c2) )*l
推广到一般的三维数组：A[c1..d1] [c2..d2] [c3..d3]，则aijk 的物理地址为：
LOC(i,j,k)=LOC(a c1 c2 c3)+( (i- c1) *( d2 - c2 + 1)* (d3- c3 + 1)+ (j- c2) *( d3- c3 + 1)+(k- c3))*l
显然，此处的c1 c2 c3 为0 会大大简化计算
}

这一段根本没看懂！


计算机科学家Dijkstra是这么回答的：
假设我们要表达1～10这组自然数，我们有以下4种表达方式
a) 1<= i <=10
b) 1<= i <11
c) 0< i <=10
d) 0< i <11
1. 如果两个边界的差正好等于数组中数的个数显然更美，所以答案b)和c）更有优势。
2. 当我们希望这个表达是能够表达任何自然数集合，那么下边界如果是i-1就会出现非自然数的情况（例如，如果你的数组中包含0，那么下边界就会变成－1），这会变的不美。所以答案a)和b)会更有优势
综上，我们会更加倾向于b)表达式。

同样的，在计算机中，如果我们要表达一个含有N个数字的序列，如果我们从1开始编号，那么它的表达式就会变成1<= i < N+1
但如果我们从0开始，我们就会得到
    0<= i < N
显然第二个表达式更美，所以我们应该从0开始编号。同时，这也是对0作为一个自然数的尊重。


*/

var tangzhifeng = ["account": "sheldontang", "password": "123", "Age": 23]

tangzhifeng["account"]
/*
字典这种数据结构在数据库中有什么样的应用？
相对于数组而言，字典允许非Int类型的索引，这个通常被称为Key，而这个key会对应一个或一组值（Value），
这样就会组成一个键值对（Key-Value-Pair）。由于Key必须是Hashable的，所以用户对同一个Key赋值后仅保留最后一次的值。
这在数据库中可用于用户数据的保存
*/



var n:Int=2

if n%2 == 0{
    println("n是一个偶数")
}else{
    println("n是一个奇数")
}


/*
二维数组是什么？如何生成一个二维数组

二维数组就是一个矩阵，或者可认为是数组的数组。

*/

var NumColumns = 9
var NumRows = 9
var array4 = Array<Array<Int>>()
var value = 1

for column in 0...NumColumns {
    var columnArray = Array<Int>()
    for row in 0...NumRows {
        columnArray.append(value++)
    }
    array4.append(columnArray)
}

println("array4 \(array4)")

array4[0][0]





var array3 = [1,2,3,4,8]
for index in array3{

println("\(index) 5 times is \(index * 5)")

}


for (index, element) in enumerate(array3) {
    println("Item \(index): \(element)")
}






