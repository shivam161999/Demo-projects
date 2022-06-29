//
//func calculate(n1 : Int , n2 : Int , testFun:(Int,Int)->(Int) )->Int{
//    return n1 + n2
//}
//
//
//
//let result = calculate(n1: 2, n2: 5 ) {$0 * $1}

let array = [1,2,3,4,5,6,7]


print(array.map{ $0 + 1})

let newarray  = array.map{"\($0)"}
print(newarray)
