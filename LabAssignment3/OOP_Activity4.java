package oop_activity4;

/* BSCS 2 -1 (Sept. 23, 2024)
   CALLANGAN, MOIRA
   DELA ROSA, PIERRE
   MULLENO, JESHAIAH MAE
 */

public class OOP_Activity4 {
    public static void main(String args[]) {
        System.out.println("Problem 1:\n");

        Functions clIntFunctions = new Functions(6);
        Functions clDblFunctions = new Functions(2.5);
        Functions clTwoIntFunctions = new Functions(2,2);
        Functions clDbl2Functions = new Functions(6, 1.5);
        Functions clDbl1Functions = new Functions(2.5, 2);
        Functions clTwoDblFunctions = new Functions(2.5, 1.5);

        // Print out the areas for various inputs
        System.out.println("Area of 3 and 6 (int, int): " + clTwoIntFunctions.area(6, 2));
        System.out.println("Area of 3 and 5.6 (int, double): " + clDbl2Functions.area(6, 1.5));
        System.out.println("Area of 5.3 and 5 (double, int): " + clDbl1Functions.area(2.5, 2));
        System.out.println("Area of 4.3 and 4.5 (double, double): " + clTwoDblFunctions.area(2.5, 1.5));

        System.out.println(clIntFunctions.perfectNumber(6) + " is a perfect number");
        System.out.println("Fibonacci of 3: " + clIntFunctions.fibonacciRecursion(6));

        // Print out the area of a single number (square)
        System.out.println("Area of 3 (single int): " + clIntFunctions.area(6));
        
        System.out.println("\nProblem 2:\n");
        OverrideFunction clArea = new OverrideFunction();
        int result = clArea.area(10, 3);
        System.out.println("10 % 3 = " + result);
        
        // Problem #3:
        //abstract
        //dog
        System.out.println("\nProblem 3:\n");
        AnimalAbstract clDog = new DOG(5);
        clDog.animalSound(clDog.strKind);
        clDog.animalSkin(clDog.strKind);
        
        int ageInMonths = clDog.animalAge(clDog.intAge);
        System.out.println(ageInMonths + " months old.");
        
        clDog.animalFeet(clDog.strKind);
        
        //cat
        AnimalAbstract clCat = new Cat(9);
        clCat.animalSound(clCat.strKind);
        clCat.animalSkin(clCat.strKind);
        
        ageInMonths = clCat.animalAge(clCat.intAge);
        System.out.println(ageInMonths + " months old.");
        
        clCat.animalFeet(clCat.strKind);
        
        //bird
        AnimalAbstract clBird = new Bird(3);
        clBird.animalSound(clBird.strKind);
        clBird.animalSkin(clBird.strKind);
        
        ageInMonths = clBird.animalAge(clBird.intAge);
        System.out.println(ageInMonths + " months old.");
        
        clBird.animalFeet(clBird.strKind);
        
        //fish
        AnimalAbstract clFish = new Fish(1);
        clFish.animalSound(clFish.strKind);
        clFish.animalSkin(clFish.strKind);
        
        ageInMonths = clBird.animalAge(clFish.intAge);
        System.out.println(ageInMonths + " months old.");
        
        clFish.animalFeet(clFish.strKind);
        
        //Problem #4
        System.out.println("Problem 4: \n");
        Logarithmic clLog = new Logarithmic(3);
        System.out.println("The natural logarithm of 3! is: " + clLog.computeLn(3));
        
        //Problem #5:
        //interface
        //dog
        System.out.println("\nProblem 5:\n");
        AnimalInterface clDogInterface = new DogInterface(5);
        
        clDogInterface.animalSound("Dog");
        clDogInterface.animalSkin("Dog");
        
        int ageInYears = clDogInterface.animalAge(5);
        System.out.println(ageInYears + " years old.");
        
        clDogInterface.animalFeet("Dog");
        
        //cat
        AnimalInterface clCatInterface = new CatInterface(9);
        
        clCatInterface.animalSound("Cat");
        clCatInterface.animalSkin("Cat");
        
        ageInYears = clCatInterface.animalAge(9);
        System.out.println(ageInYears + " years old.");
        
        clCatInterface.animalFeet("Cat");
        
        //bird
        AnimalInterface clBirdInterface = new BirdInterface(3);
        
        clBirdInterface.animalSound("Bird");
        clBirdInterface.animalSkin("Bird");
        
        ageInYears = clBirdInterface.animalAge(3);
        System.out.println(ageInYears + " years old.");
        
        clBirdInterface.animalFeet("Bird");
        
        //fish
        AnimalInterface clFishInterface = new FishInterface(1);
        
        clFishInterface.animalSound("Fish");
        clFishInterface.animalSkin("Fish");
        
        ageInYears = clFishInterface.animalAge(1);
        System.out.println(ageInYears + " years old.");
        
        clFishInterface.animalFeet("Fish");
    }
}

