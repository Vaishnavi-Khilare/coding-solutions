# Group Anagrams

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Given an array of strings `strs`, group the anagrams together. You can return the answer in  **any order**.

 

Original
Python
 **Example 1:** 

 **Input:**  strs = ["eat","tea","tan","ate","nat","bat"]

 **Output:**  [["bat"],["nat","tan"],["ate","eat","tea"]]

 **Explanation:** 

- There is no string in strs that can be rearranged to form "bat".
- The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
- The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.

 **Example 2:** 

 **Input:**  strs = [""]

 **Output:**  [[""]]

 **Example 3:** 

 **Input:**  strs = ["a"]

 **Output:**  [["a"]]

 

 **Constraints:** 

- 1 <= strs.length <= 104
- 0 <= strs[i].length <= 100
- strs[i] consists of lowercase English letters.

## Solution

**Language:** Python  
**Runtime:** 38 ms (beats 11.44%)  
**Memory:** 18.2 MB (beats 13.02%)  
**Submitted:** 2026-11-11T15:46:36.584Z  

```py
class Solution(object):
    def groupAnagrams(self, strs):
        
        groups={}
        for word in strs:
            count=[0]*26
            for char in word:
                index = ord(char)-ord('a')
                count[index]+=1
            key=tuple(count)
            if key not in groups:
                groups[key]=[]
            groups[key].append(word)
        return list(groups.values())
            
```

---

[View on LeetCode](https://leetcode.com/problems/group-anagrams/)