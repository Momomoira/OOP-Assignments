package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class Functions {

    public int intNumber = 0;
    int intSum = 0;
    int intProduct = 1;

    //Constructors
    Functions(int intNum1) {
        this.intNumber = intNum1;
    }

    Functions(double dblNum1) {
        this.intNumber = (int) dblNum1;
    }

    Functions(int intNum1, int intNum2) {
        this.intNumber = intNum1;
        this.intNumber = intNum2;
    }

    Functions(int intNum1, double dblNum2) {
        this.intNumber = intNum1;
        this.intNumber = (int) dblNum2;
    }

    Functions(double dblNum1, int intNum2) {
        this.intNumber = (int) dblNum1;
        this.intNumber = intNum2;
    }

    Functions(double dblNum1, double dblNum2) {
        this.intNumber = (int) dblNum1;
        this.intNumber = (int) dblNum2;
    }

    public int area(int intNum1, int intNum2){
        return intNum1 * intNum2;
    }

    public double area(int intNum1, double dblNum2){
        return intNum1 * dblNum2;
    }

    public double area(double dblNum1, int intNum2){
        return dblNum1 * intNum2;
    }

    public double area(double dblNum1, double dblNum2){
        return dblNum1 * dblNum2;
    }

    public int perfectNumber(int intNum1){
        for(int intCounter =1; intCounter < intNum1; ++intCounter) {
            if (intNum1 % intCounter == 0)
                intSum += intCounter;
        }

        return intSum;
    }

    public int fibonacciRecursion(int intNum1){
        if (intNum1 <= 1){
            return intNum1;
        }
        return fibonacciRecursion(intNum1-1) + fibonacciRecursion(intNum1 - 2);
    }

    public int area(int intNum1){
        return intNum1 * intNum1;
    }
}