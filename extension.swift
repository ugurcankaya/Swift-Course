import UIKit
extension String{ //to give extra functionality into String or whatever Type
    func removeWhiteSpace() -> String{
        components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F G"
print(alphabet) //returns A B C D E F G
print(alphabet.removeWhiteSpace()) //returns ABCDEFG
