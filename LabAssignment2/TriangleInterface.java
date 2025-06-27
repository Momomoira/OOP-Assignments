package oop_activity;

public class TriangleInterface implements FigureInterface {
    public void sides() {
        System.out.println("A triangle has 3 sides");
    }

    public void shapeName() {
        System.out.println("Shape - Triangle");
    }

    public void description() {
        System.out.println("All figures have dimensions.\n");
    }
}
