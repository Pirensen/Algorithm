//
//  公共祖先.swift
//  Algorithm
//
//  Created by pirensen on 2020/12/25.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation
//class Solution {
//    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//
//      if root == nil || root === p || root === q {
//        return root
//      }
//      //! 1.
//      let leftNode = lowestCommonAncestor(root?.left,p,q)
//      //! 2
//      let rightNode = lowestCommonAncestor(root?.right,p,q)
//    
//      if leftNode != nil && rightNode != nil {
//        return root
//      }
//      return (leftNode != nil) ? leftNode : rightNode
//    }
//}
