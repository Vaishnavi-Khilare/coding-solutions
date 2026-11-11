# Valid Anagram

![Difficulty](https://img.shields.io/badge/Difficulty-Easy-green)

## Problem

Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.

 

Original
Python
 **Example 1:** 

 **Input:**  s = "anagram", t = "nagaram"

 **Output:**  true

 **Example 2:** 

 **Input:**  s = "rat", t = "car"

 **Output:**  false

 

 **Constraints:** 

- 1 <= s.length, t.length <= 5 * 104
- s and t consist of lowercase English letters.

 

 **Follow up:**  What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

## Solution

**Language:** Python  
**Runtime:** 18 ms (beats 65.32%)  
**Memory:** 12.3 MB (beats 90.64%)  
**Submitted:** 2026-11-11T13:22:55.602Z  

```py
class Solution(object):
    def isAnagram(self, s, t):
        if len(s)!=len(t):
            return False
        count={}
        for char in s:
            count[char]=count.get(char,0)+1
        for char in t:
            if char not in count or count[char]==0:
                return False
            count[char]-=1
        return True
```

---

[View on LeetCode](https://leetcode.com/problems/valid-anagram/)