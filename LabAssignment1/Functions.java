package ooplabact1;
class Functions {
     /* Problem #1
          1. Display the area of a given circle.
             Ex. Enter radius = 10
             The area is 314.16 */

    //Non-Recursive Function
    public double areaOfCircleNonRecursive(int intRadius){
        double doubleAreaOfCircle = 0;
        doubleAreaOfCircle = Math.PI * intRadius * intRadius;
        return doubleAreaOfCircle;
    }

    //Recursive Function
    public double areaOfCircleRecursive(int intRadius) {
        if (intRadius == 0)
            return 0;
        else {
            return areaOfCircleRecursive(intRadius - 1) + 2 * Math.PI * intRadius - Math.PI;
        }
    }

    /* Problem #2
          2. Display the sum of the below series given n as the number of terms:
             2 + 4 + 6 + 8 + 10 + ….*/

    //Non-Recursive Function
    public int sumOfSeriesNonRecursive(int intNumTerm){
        int intSumOfSeries = 0;
        for(int intCounter = 1; intCounter <= intNumTerm; ++intCounter)
            intSumOfSeries += 2 * intCounter;
        return intSumOfSeries;
    }

    //Recursive Function
    public int sumOfSeriesRecursive(int intNumTerm) {
        if (intNumTerm <= 0)
            return 0;
        else
            return sumOfSeriesRecursive(intNumTerm - 1) + 2 * intNumTerm;
    }

    /* Problem #3
          3. Given n as an input, display the number of digit it has.
             Ex. n = 2345
             There are 4 digits in 2345 */

    //Non-recursive Function
    public int numberOfDigitsNonRecursive(int intNum) {
        int intCounter = 0;
        if (intNum == 0)
            return 1;

        while (intNum != 0) {
            intNum /= 10;
            intCounter++;
        }
        return intCounter;
    }

    //Recursive Function
    public int numberOfDigitsRecursive(int intNum) {
        if (intNum < 10)
            return 1;
        else
            return 1 + numberOfDigitsRecursive(intNum / 10);
    }

    /* Problem #4

          4. Given n as an input, display the reversed digits of n.
             Ex. n = 2345
             The reversed digits of 2345 is 5432 */

    //Non-recursive
    public int reverseDigitsNonRecursive(int intNum){
        int intReverse = 0;

        while(intNum != 0){
            intReverse = (intReverse * 10) + intNum % 10;
            intNum = intNum/10;
        }
        return intReverse;
    }

    //Recursive
    public int reverseDigitsRecursive(int intNum, int intReverse) {
        if (intNum == 0)
            return intReverse;

        intReverse = (intReverse * 10) + intNum % 10;
        return reverseDigitsRecursive(intNum / 10, intReverse);
    }

    /* Problem #5
      5. Given an array of characters, tell whether a search key is found on the array.
         Ex. array = "hello"
         search key = "e"
         e is found in the array */

    //Non-recursive
    public boolean searchKeyNonRecursive(char[] arrayChar, char charKey) {
        for (char charSearchForKey : arrayChar) {
            if (charKey == charSearchForKey) {
                return true;
            }
        }
        return false;
    }

    //Recursive
    public boolean searchKeyRecursive(char[] arrayChar, char charKey, int charIndex) {
        if (charIndex >= arrayChar.length)
            return false;
        if (arrayChar[charIndex] == charKey)
            return true;
        return searchKeyRecursive(arrayChar, charKey, charIndex + 1);
    }
}

