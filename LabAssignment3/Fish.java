package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class Fish extends AnimalAbstract{
    
    public Fish(int age) {
        this.intAge = age;
        this.strKind = "Fish";
    }

    @Override
    public void animalSound(String strKind) {
        System.out.println("BLUBLUBBLUBBB!!!");
    }

    @Override
    public void animalSkin(String strKind) {
        System.out.println("Scaly.");
    }

    @Override
    public int animalAge(int intAge) {
        return intAge * 12;
    }

    @Override
    public void animalFeet(String strKind) {
        System.out.println("Cannot distinguish.\n");
    }  
}
