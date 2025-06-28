package oop_activity4;

public class DogInterface implements AnimalInterface {

    private int intAge; 
    private String strKind;

    // Constructor that accepts age
    public DogInterface(int age) {
        this.intAge = age;
        this.strKind = "Dog"; 
    }
    
    @Override
    public void animalSound(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("WOOORFFF WOOORFFF!!!");
        }
    }

    @Override
    public void animalSkin(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("Very furry.");
        }
    }

    @Override
    public int animalAge(int intAge) {
        return this.intAge;
    }

    @Override
    public void animalFeet(String strKind) {
        if (strKind.equals(this.strKind)) {
            System.out.println("4 feet.\n");
        }
    }
}
