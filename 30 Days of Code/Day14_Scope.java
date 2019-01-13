    // Add your code here
public Difference(int[] elements) {
    this.elements = elements;
}

public void computeDifference() {
    int max=1, min=100;
    for (int e: elements) {
        max = Math.max(max, e);
        min = Math.min(min, e);
    }
    maximumDifference = max - min;   
}
