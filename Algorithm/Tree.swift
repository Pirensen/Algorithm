//
//  Tree.swift
//  TESTDEMO2
//
//  Created by pirensen on 2021/1/9.
//

import Foundation

//二叉搜索树(BST):根结点左边的值都小于根节点值,根结点右边的值都大于根节点值

//Definition for a binary tree node.
public class BinaryTreeNode {
    public var val: Int
    public var left: BinaryTreeNode?
    public var right: BinaryTreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

//多叉树
public class MutTreeNode {
    public var val: Int
    public var children: [BinaryTreeNode]?
    
    public init(_ val: Int) {
        self.val = val
        self.children = nil
    }
}
