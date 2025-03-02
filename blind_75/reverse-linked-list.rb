# https://leetcode.com/problems/reverse-linked-list/

# LinkList problem will be run in leetcode otherwise
# We have to create LinkedList class to support this code
def reverse_list(head)
  prev, curr = nil, head 
  
  while curr
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end
  prev
end
