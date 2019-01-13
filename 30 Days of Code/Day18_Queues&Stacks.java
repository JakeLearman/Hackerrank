public class Solution {
    Stack<Character> p;
    Queue<Character> q;
    public Solution(){
        p  = new Stack<Character>();
        q =  new LinkedList<Character>();
    }
    
    public void pushCharacter(Character ch){
       p.push(ch);
    }
    public void enqueueCharacter(char ch){
        q.add(ch);
    }
    public char popCharacter(){
        return p.pop();
    }
    public char dequeueCharacter(){
        return q.remove();
    }