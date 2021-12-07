import UIKit

import Foundation

func sumOfPositives(_ numbers: [Int] ) -> Int {
    // Your code here
    var sumNumbers = 0
    var i = 0
  
//    let arrayCount = numbers.count
    
    while i < numbers.count {
      if numbers[i] > 0 {
        sumNumbers += numbers[i]
      }
        print ("sum is = \(sumNumbers)")
        i+=1
    }
    

    return sumNumbers
}

var result = sumOfPositives([1,-2,5,6])
print(" res = \(result)")
