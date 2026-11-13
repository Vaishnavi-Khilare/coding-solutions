# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def partition(self, head, x):
      
        G1=ListNode(0)
        G2=ListNode(0)
        
        p1=G1
        p2=G2
        current=head
        while current:
            if current.val<x:
                p1.next =current
                p1=p1.next
            else:
                p2.next =current
                p2=p2.next
            current=current.next
        p2.next= None
        p1.next=G2.next
        return G1.next