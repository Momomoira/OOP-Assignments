package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class DOG extends AnimalAbstract {
     public DOG(int age) {
        this.intAge = age;
        this.strKind = "Dog";
    }

    @Override
    public void animalSound(String strKind) {
        System.out.println("WOOORFFF WOOORFFF!!!");
    }

    @Override
    public void animalSkin(String strKind) {
        System.out.println("Very furry.");
    }

    @Override
    public int animalAge(int intAge) {
        return intAge * 12;
    }

    @Override
    public void animalFeet(String strKind) {
        System.out.println("4 feet.\n");
    }
}
