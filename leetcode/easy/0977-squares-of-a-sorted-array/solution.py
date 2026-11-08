class Solution(object):
    def sortedSquares(self, nums):
        result=[]
        for i in nums:
            sqr=i*i
            result.append(sqr)
        result.sort()
        return result
                