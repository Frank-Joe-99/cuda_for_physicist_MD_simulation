class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None


def creatListNode(list_):
    dummy = ListNode(-1)
    p = dummy

    for i in list_:
        p.next = ListNode(i)
        p = p.next

    return dummy.next


l = [0,1,2,3,4]
a = creatListNode(l)
print(a)