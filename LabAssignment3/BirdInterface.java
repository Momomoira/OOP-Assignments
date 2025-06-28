package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class BirdInterface implements AnimalInterface {

    private int intAge; 
    private String strKind;

    public BirdInterface(int age) {
        this.intAge = age;
        this.strKind = "Bird"; 
    }
    
    @Override
    public void animalSound(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("TWIT!!! TWIT!!!");
        }
    }

    @Override
    public void animalSkin(String strKind) {
        if (strKind.equals(this.strKind)){
            System.out.println("Has feathers.");
        }
    }

    @Override
    public int animalAge(int intAge) {
        return intAge;
    }

    @Override
    public void animalFeet(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("2 feet.\n");
        }
    }
}
