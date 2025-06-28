package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class FishInterface implements AnimalInterface {

    private int intAge; 
    private String strKind;

    public FishInterface(int age) {
        this.intAge = age;
        this.strKind = "Fish"; 
    }
    
    @Override
    public void animalSound(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("BLUBLUBBLUBBB!!!");
        }
    }

    @Override
    public void animalSkin(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("Scaly.");
        }
    }

    @Override
    public int animalAge(int intAge) {
        return intAge;
    }

    @Override
    public void animalFeet(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("Cannot Distinguish.\n");
        }
    }
}
