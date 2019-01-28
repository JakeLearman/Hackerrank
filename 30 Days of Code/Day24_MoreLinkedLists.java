    public static Node removeDuplicates(Node head) {
      //Write your code here
        if(head == null)
    return null;
Node s = head;
while(s.next != null){
    if(s.data == s.next.data)
        s.next = s.next.next;
    else
        s = s.next;
} 