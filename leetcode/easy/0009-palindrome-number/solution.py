class Solution(object):
    def isPalindrome(self, x):
        if x<0:
            return False
        n=x
        p=0
      
        while n>0:
            r=n%10
            p=p*10+r
            n=n//10
        if p==x:
            return True
        else:
            return False

            
    