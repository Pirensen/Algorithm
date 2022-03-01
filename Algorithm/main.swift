//
//  main.swift
//  NodeCal
//
//  Created by pirensen on 2020/3/6.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

extension String {
    /// Returns whether the string is a pangram or not
    public func isPangram() -> Bool {
        var tempCharacter: [String] = []
        let sentenceArr: [Character] = Array(self)
        for currentCharacter: Character in sentenceArr {
            let upperC = currentCharacter.uppercased()
            if (upperC >= "A" && upperC <= "Z" && !tempCharacter.contains("\(upperC)")) {
                tempCharacter.append("\(upperC)")
            }
        }
        
        return (tempCharacter.count == 26)
    }
}



struct PolygonCount {
    var rhombus: Int
    var parallelogram: Int
    var polygon: Int
    var invalid: Int
}

struct Solutions {
    static func polygonCount(from lines: [String]) -> PolygonCount {
        var pc: PolygonCount = PolygonCount(rhombus: 0, parallelogram: 0, polygon: 0, invalid: 0    )
        for line in lines {
            if !isCanShape(lines: line) {
                pc.invalid = pc.invalid + 1
                continue
            }
            if isRhombi(lines: line) {
                pc.rhombus = pc.rhombus + 1
                continue
            }
            if isParalleloGrams(lines: line) {
                pc.parallelogram = pc.parallelogram + 1
                continue
            }
            
            pc.polygon = pc.polygon + 1
        }
        
        return pc
    }

    static func isRhombi(lines: String) -> Bool {
        let lineValue: [String] = lines.components(separatedBy: " ")
        guard lineValue.count == 4 else {
            return false
        }
        let lengthValue = Int(lineValue.first ?? "0") ?? 0
        for lineNumString in lineValue {
            let lineNum: Int = Int(lineNumString) ?? 0
            if (lengthValue != lineNum) {
                return false
            }
        }
        return true
    }

    static func isParalleloGrams(lines: String) -> Bool {
        let lineValue: [String] = lines.components(separatedBy: " ")
        guard lineValue.count == 4 else {
            return false
        }
        var maxValue = 0
        var minvalue = 0
        for lineNumString in lineValue {
            let lineNum: Int = Int(lineNumString) ?? 0
            if (maxValue != 0 && minvalue != 0 && minvalue != lineNum && maxValue != lineNum) {
                return false
            }
            
            if (lineNum > maxValue) {
                minvalue = maxValue
                maxValue = lineNum
                continue
            }
            
            if (lineNum > maxValue) {
                minvalue = lineNum
                continue
            }
        }
        return true
    }
    
    static func isCanShape(lines: String) -> Bool {
        let lineValue: [String] = lines.components(separatedBy: " ")
        guard lineValue.count == 4 else {
            return false
        }
        var maxValue = 0
        var sumMinValue = 0
        for lineNumString in lineValue {
            let lineNum: Int = Int(lineNumString) ?? 0
            if (lineNum < 0) {
                return false
            }
            if (maxValue < lineNum) {
                maxValue = lineNum
                sumMinValue = sumMinValue + lineNum
            } else {
                sumMinValue = sumMinValue + lineNum
            }
        }
        
        guard (sumMinValue > (maxValue - sumMinValue)) else {
            return false
        }
        
        return true
    }
}


//Solutions.polygonCount(from: ["36 30 36 30", "15 15 15 15", "46 96 90 100", "86 86 86 86", "100 200 100 200", "-100 200 -100 200"])



//class Price {
//    var basePrice: Decimal = 0.0
//    func rounded(_ insignificantPlaces: Int) -> Int {
//        if (self.basePrice == 0) {
//            return 0
//        }
//        var temp = pow(10, insignificantPlaces)
//        let resMun = 0
//        let numval = abs(self.basePrice)
//        if (insignificantPlaces == 1) {
//            let numTemp = numval / temp
//            let num1  = numval % temp;
//        } else {
//
//        }
//
//    }
//}





//- (NSInteger)rounded:(NSInteger)insignificantPlaces {
//    if (self.basePrice == 0) {
//        return 0;
//    }
//
//    NSInteger temp = pow(10,insignificantPlaces);
//    NSInteger resNum = 0;
//    NSInteger numval = fabs(self.basePrice);
//    if (insignificantPlaces == 1) {
//        NSInteger  numTemp  = numval/temp;
//        NSInteger  num1  = numval%temp;
//        if (num1 >= 5) {
//            numTemp += 1;
//            resNum = numTemp * temp;
//        }
//    }else {
//        NSInteger numTemp  =numval/temp;
//        resNum = numTemp * temp;
//    }
//
//    if (self.basePrice < 0) {
//        resNum =  resNum * -1;
//    }
//
//    return resNum;
//}




//print("\(tra)")

//func trailingZeroes(n: inout Int) -> Int {
//    var count = 0;
//    while(n >= 5) {
//        n = n/5;
//        count += n;
//    }
//
//    return count;
//}


//calculate(array: [1000,0,100])

var inputarr = [12, 10, 11]
quickSort(data: &inputarr, low: 0, high: 2)
print(inputarr)

