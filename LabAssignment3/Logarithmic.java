package oop_activity4;
import java.lang.Math;
public class Logarithmic {
   private int intNum1 = 0;

    public Logarithmic() {
    }

    Logarithmic(int intNum1){
        this.intNum1 = intNum1;
    }

    public int getNumber(){
        return this.intNum1;
    }

    public void setNumber(int intNum1){
        this.intNum1 = intNum1;
    }

    public double computeLn(int intNum1) {
        double lnFactorial = 0.0;

        // Compute ln(n!)
        for (int intCounter = 1; intCounter <= intNum1; intCounter++) {
            lnFactorial += Math.log(intCounter);
        }

        return lnFactorial;
    }
}
