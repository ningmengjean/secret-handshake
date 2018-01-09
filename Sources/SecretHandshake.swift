//Solution goes in Sources
import Foundation

class SecretHandshake {
    var input = 0
    init(_ input: Int) {
        self.input = input
    }
    
    let steps = ["wink",
                 "double blink",
                 "close your eyes",
                 "jump",
                 ]
    
    var commands: [String] {
        var handShake: [String] = []
        let binary = String(input,radix: 2).reversed()
        for (b,s) in zip(binary,steps) {
            if b == "1" {
                handShake.append(s)
            }
        }
        if binary.count >= 5 {
            return handShake.reversed()
        } else {
            return handShake
        }
    }
}
