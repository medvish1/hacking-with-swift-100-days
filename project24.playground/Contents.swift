import UIKit
import CoreGraphics

var text = "Hello, playground"

for letter in text {
    print(letter)
}

let letter = text[text.index(text.startIndex, offsetBy: 3)]

extension String {
    subscript(i: Int) -> String {
        return String(self[self.index(self.startIndex, offsetBy: i)])
    }
}
let x = text[3]


// -----------------------------------

let numbers = "12345"
numbers.hasPrefix("12")
numbers.hasSuffix("45")

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
    
    func deletingSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else { return self }
        return String(self.dropLast(suffix.count))
    }
}

print("12345".deletingPrefix("12"))


// -----------------------------------

extension String {
    var capitalizedFirst: String {
        guard let firstLetter = self.first else { return "" }
        return firstLetter.uppercased() + self.dropFirst()
    }
}

print("um teste aqui".capitalized)
print("um teste aqui".capitalizedFirst)

// -----------------------------------


let textao = "swift is awesome but kinda complicated"
let arr = ["swift", "c#", "java"]

print(arr.contains(where: textao.contains))

// ------------------------------------

let test = "this is a test"
let attributes: [NSAttributedString.Key: Any] = [
    .foregroundColor: UIColor.white,
    .backgroundColor: UIColor.red,
    .font: UIFont.boldSystemFont(ofSize: 36)
]
let attributedString = NSAttributedString(string: test, attributes: attributes)

// ------------------------------------
let mutableAttributedString = NSMutableAttributedString(string: "hello test test test")

mutableAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 8), range: NSRange(location: 0, length: 5))
mutableAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 24), range: NSRange(location: 6, length: 4))
mutableAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 32), range: NSRange(location: 12, length: 4))
mutableAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 40), range: NSRange(location: 15, length: 4))

