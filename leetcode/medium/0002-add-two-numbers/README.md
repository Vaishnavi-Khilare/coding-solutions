# Add Two Numbers

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You are given two  **non-empty**  linked lists representing two non-negative integers. The digits are stored in  **reverse order**, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 

 **Example 1:** 

```
Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.

```

 **Example 2:** 

```
Input: l1 = [0], l2 = [0]
Output: [0]

```

 **Example 3:** 

```
Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]

```

 

 **Constraints:** 

- The number of nodes in each linked list is in the range [1, 100].
- 0 <= Node.val <= 9
- It is guaranteed that the list represents a number that does not have leading zeros.

## Solution

**Language:** Python  
**Runtime:** 9 ms (beats 48.61%)  
**Memory:** 12.2 MB (beats 86.31%)  
**Submitted:** 2026-11-07T18:43:41.601Z  

```py

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        dummy=ListNode(0)
        curr=dummy
        carry=0
        while l1 or l2 or carry:
            a=l1.val if l1 else 0
            b=l2.val if l2 else 0

            total=a+b+carry
            carry =total//10
            digit =total % 10

            curr.next=ListNode(digit)
            curr = curr.next

            if l1:
                l1=l1.next
            if l2:
                l2=l2.next
        return dummy.next



        


```

---

[View on LeetCode](https://leetcode.com/problems/add-two-numbers/)