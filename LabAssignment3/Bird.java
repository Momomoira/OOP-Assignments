package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class Bird extends AnimalAbstract{
    
    public Bird(int age) {
        this.intAge = age;
        this.strKind = "Bird";
    }

    @Override
    public void animalSound(String strKind) {
        System.out.println("TWIT!!! TWIT!!!");
    }

    @Override
    public void animalSkin(String strKind) {
        System.out.println("Has feathers.");
    }

    @Override
    public int animalAge(int intAge) {
        return intAge * 12;
    }

    @Override
    public void animalFeet(String strKind) {
        System.out.println("2 feet.\n");
    }
}
