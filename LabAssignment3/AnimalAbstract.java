package oop_activity4;

/**
 *
 * @author Dela Rosa
 */
abstract class AnimalAbstract {
    protected int intAge = 10;
    protected String strKind = null;
    
    public abstract void animalSound(String strKind);
    public abstract void animalSkin(String strKind);
    public abstract int animalAge(int intAge);
    public abstract void animalFeet(String strKind);
}
