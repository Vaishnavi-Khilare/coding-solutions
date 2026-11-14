# Reverse Linked List II

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Given the `head` of a singly linked list and two integers `left` and `right` where `left <= right`, reverse the nodes of the list from position `left` to position `right`, and return  *the reversed list*.

 

 **Example 1:** 

```
Input: head = [1,2,3,4,5], left = 2, right = 4
Output: [1,4,3,2,5]

```

 **Example 2:** 

```
Input: head = [5], left = 1, right = 1
Output: [5]

```

 

 **Constraints:** 

- The number of nodes in the list is n.
- 1 <= n <= 500
- -500 <= Node.val <= 500
- 1 <= left <= right <= n

 

 **Follow up:**  Could you do it in one pass?

## Solution

**Language:** Python  
**Runtime:** 0 ms (beats 100.00%)  
**Memory:** 12.3 MB (beats 87.45%)  
**Submitted:** 2026-11-14T16:05:48.967Z  

```py
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def reverseBetween(self, head, left, right):
        dummy = ListNode(0)
        dummy.next = head
        prev = dummy 

        for i in range(left-1):
            prev= prev.next
        curr = prev.next

        for i in range (right- left):
            temp = curr.next
            curr.next= temp.next
            temp.next =prev.next
            prev.next = temp
        return dummy.next       
```

---

[View on LeetCode](https://leetcode.com/problems/reverse-linked-list-ii/)