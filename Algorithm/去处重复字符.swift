//
//  去处重复字符.swift
//  NodeCal
//
//  Created by pirensen on 2020/11/24.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

func remudep(_ inputString: String) -> String {
    var resS: String = ""
    var chac: Character = Array(inputString).first!
    for (_, char) in Array(inputString).enumerated() {
        if (char != chac || resS.count == 0) {
            resS.append(char)
        }
        chac = char
    }
    
    return resS
}
//print("\(remudep("ww22r"))")
