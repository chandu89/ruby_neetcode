# https://leetcode.com/problems/merge-two-sorted-lists/

def merge_two_lists(list1, list2)
  dummy = node = LinkedList.new # assuming clas already present

  while list1 && list2
    if list1.val < list2.val
      node.next = list1
      list1 = list1.next
    else
      node.next = list2 
      list2 = list2.next 
    end
    node = node.next
  end
  node.next = list1 || list2

  dummy.next
end