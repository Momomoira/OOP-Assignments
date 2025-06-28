package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class Cat extends AnimalAbstract {

    public Cat(int age) {
        this.intAge = age;
        this.strKind = "Cat";
    }

    @Override
    public void animalSound(String strKind) {
        System.out.println("MEEOOOOWWWWW!!!");
    }

    @Override
    public void animalSkin(String strKind) {
        System.out.println("Has fur.");
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
