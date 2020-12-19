//
//  最大子序和.swift
//  Algorithm
//
//  Created by pirensen on 2020/12/19.
//  Copyright © 2020 pirensen. All rights reserved.
//

import Foundation

//https://leetcode-cn.com/problems/maximum-subarray/
// [-2,1,-3,4,-1,2,1,-5,4]
//print("\(Solution().maxSubArray([-2,1,-3,4,-1,-1,2,1,-5,4]))")
//将每一个数取在num 第一次放在 sum中， 后面比较sum是否大于0 ，大于0 就接着加上去。小于0 就说明加上去 还比之前小了，就不加了呗，直到找到下一个大于0的才接着加。 如果全负数 ，就等于挨个比较谁最大

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
       if nums.count == 0 {
            return 0
        }
        
        var ans = nums[0];
        var sum = 0
        for num in nums {
            if sum > 0 {
                sum += num
            } else {
                sum = num
            }
            ans = max(ans, sum)
        }
        
        return ans
    }
}

