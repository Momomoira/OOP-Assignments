package ooplabact1;
import java.util.Scanner;

/* BSCS 2 -1 (Sept. 08, 2024)
   CALLANGAN, MOIRA
   DELA ROSA, PIERRE
   MULLENO, JESHAIAH MAE
 */

public class OOPLabAct1 {
    public static void main(String[] args){
        Functions functions = new Functions();
        Scanner scanner = new Scanner(System.in);

        /* Problem #1 */
        System.out.print("Enter radius = ");
        int intRadius = scanner.nextInt();
        System.out.printf("1A.[Non-recursive] The area of the circle is: %.2f\n", functions.areaOfCircleNonRecursive(intRadius));
        System.out.printf("1B.[Recursive] The area of the circle is: %.2f\n", functions.areaOfCircleRecursive(intRadius));

        /* Problem #2 */
        System.out.print("\nEnter the nth term = ");
        int intNumTerm = scanner.nextInt();
        System.out.println("2A.[Non-recursive]: The sum of the series is: " + functions.sumOfSeriesNonRecursive(intNumTerm));
        System.out.println("2B.[Recursive]: The sum of the series is: " + functions.sumOfSeriesRecursive(intNumTerm));

        /* Problem #3 */
        System.out.print("\nEnter number = ");
        int intCountDigits = scanner.nextInt();
        System.out.println("3A.[Non-recursive]: The number of digits in " + intCountDigits + " is: " + functions.numberOfDigitsNonRecursive(intCountDigits));
        System.out.println("3B.[Recursive]: The number of digits in " + intCountDigits + " is: " + functions.numberOfDigitsRecursive(intCountDigits));

        /* Problem #4 */
        System.out.print("\nEnter number to reverse = ");
        int intNumToReverse = scanner.nextInt();
        System.out.println("4A.[Non-recursive]: The reversed digits of " + intNumToReverse + " is: " + functions.reverseDigitsNonRecursive(intNumToReverse));
        System.out.println("4B.[Recursive]: The reversed digits of " + intNumToReverse + " is: " + functions.reverseDigitsRecursive(intNumToReverse, 0));


        /* Problem #5 */
        System.out.print("\nEnter a word = ");
        String stringUserInputWord = scanner.next();

        char[] arrayChar = stringUserInputWord.toCharArray();

        System.out.print("\nEnter key to search = ");
        char charKey = scanner.next().charAt(0);

        if (functions.searchKeyNonRecursive(arrayChar, charKey)) {
            System.out.println("5A.[Non-recursive]: " + charKey +  " is found in the array");
        } else {
            System.out.println("5A.[Non-recursive]: " + charKey +  " is not found in the array");
        }

        if (functions.searchKeyRecursive(arrayChar, charKey, 0)) {
            System.out.println("5B.[Recursive]: " + charKey +  " is found in the array");
        } else {
            System.out.println("5B.[Recursive]: " + charKey +  " is not found in the array");
        }

        scanner.close();
    }
}