package oop_activity;

public class CircleInterface implements FigureInterface {
    public void sides() {
        System.out.println("A circle has 0 sides");
    }

    public void shapeName() {
        System.out.println("Shape - Circle");
    }

    public void description() {
        System.out.println("All figures have dimensions!\n");
    }
}
