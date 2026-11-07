class Solution(object):
    def twoSum(self, nums, target):
    
        view={}

        for i, n in enumerate(nums):
            a= target - n

            if a in view:
                return [view[a],i]

            view[n]= i        
          