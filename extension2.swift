import UIKit
extension Double{
    func toString(to precesion:Int = 2)->String{
        return String(format: "%.\(precesion)f", self)
    }
}

var myDouble = 3.123456
var yourDouble = 6.12356
myDouble.toString()
yourDouble.toString(to: 2)

