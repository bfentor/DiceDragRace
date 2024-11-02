public class diceSim {
    public static void main(String[] args) {
        int count = 0, total = 0;
        int side = 6;
        int numThrows = 500000;
        int[] arr = {0, 0, 0, 0, 0, 0};
        
        for (int i = 0; i < numThrows; i++) {
            int rand = (int)(Math.random()*side);
            arr[rand]++;
            total += rand+1;
        }
        
        System.out.println("Threw a 6-sided die 500,000 times.");
        System.out.println("Results:");
        System.out.printf("%-9s%-8d%-8d%-8d%-8d%-8d%-8d%n", "Side:", 1, 2, 3, 4, 5, 6);
        System.out.printf("%-9s%-8d%-8d%-8d%-8d%-8d%-8d%n", "Count:", arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]);
        System.out.println("Sum of throws: " + total);
    }
}
