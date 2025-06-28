package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
public class CatInterface implements AnimalInterface {

    private int intAge; 
    private String strKind;

    public CatInterface(int age) {
        this.intAge = age;
        this.strKind = "Cat"; 
    }
    
    @Override
    public void animalSound(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("MEEOOOOWWWWW!!!");
        }
    }

    @Override
    public void animalSkin(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("Has fur.");
        }
    }

    @Override
    public int animalAge(int intAge) {
        return intAge;
    }

    @Override
    public void animalFeet(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("4 feet.\n");
        }
    }
}
