//func sum(a:Int , b:Int)->Int {
//    if a==b {
//        return (a+b)*3
//    }
//    else {
//        return a+b
//    }
//}
//
//var add:(Int,Int)->Int = sum
//print(sum(a:3,b:4))

//func diff(a:Int) -> Int
//{
//    if a>51 {
//        return (a-51)*2
//    }
//    else {
//        return 51-a
//    }
//}
//print(diff(a:32))

//func twen(a:Int ,b:Int)->Bool{
//    if ((a+b)==20) || a==20 || b==20
//    {
//            return true
//    }
//    return false
//}
//print(twen(a:17,b:3))

func neg(a:Int,b:Int)-> Bool{
    if (a>0&&b<0)||(a<0&&b>0){
        return true
    }
    else if(a<0 && b<0){
        return true
    }
    else
    {
        return false
    }
}
print(neg(a: 98, b: 9))
