package oop_activity;

public class Area {
    private String strShapeType;
    private int intRadius, intLength, intWidth;
    private double dblRadius, dblLength, dblWidth;

    // Constructor for Circle with int radius
    Area(String shapeType, int intRadius) {
        this.strShapeType = shapeType;
        this.intRadius = intRadius;
    }

    // Constructor for Circle with double radius
    Area(String shapeType, double dblRadius) {
        this.strShapeType = shapeType;
        this.dblRadius = dblRadius;
    }

    // Constructor for Rectangle with int length and int width
    Area(String shapeType, int intLength, int intWidth) {
        this.strShapeType = shapeType;
        this.intLength = intLength;
        this.intWidth = intWidth;
    }

    // Constructor for Rectangle with double length and int width
    Area(String shapeType, double dblLength, int intWidth) {
        this.strShapeType = shapeType;
        this.dblLength = dblLength;
        this.intWidth = intWidth;
    }

    // Constructor for Rectangle with int length and double width
    Area(String shapeType, int intLength, double dblWidth) {
        this.strShapeType = shapeType;
        this.intLength = intLength;
        this.dblWidth = dblWidth;
    }

    // Constructor for Rectangle with double length and double width
    Area(String shapeType, double dblLength, double dblWidth) {
        this.strShapeType = shapeType;
        this.dblLength = dblLength;
        this.dblWidth = dblWidth;
    }

    //Method for computation of area of circle (int)
    public double computeArea(String strShapeType, int intRadius) {
        return Math.PI * Math.pow(this.intRadius, 2);
    }

    //Method for computation of area of circle (double)
    public double computeArea(String strShapeType, double dblRadius) {
        return Math.PI * Math.pow(this.dblRadius, 2);
    }

    //Method for computation of area of rectangle (int, int)
    public double computeArea(String strShapeType, int intLength, int intWidth) {
        return this.intLength * this.intWidth;
    }

    //Method for computation of area of rectangle (int, double)
    public double computeArea(String strShapeType, double dblLength, int intWidth) {
        return this.dblLength * this.intWidth;
    }

    //Method for computation of area of rectangle (double, int)
    public double computeArea(String strShapeType, int intLength, double dblWidth) {
        return this.intLength * this.dblWidth;
    }

    //Method for computation of area of rectangle (double, double)
    public double computeArea(String strShapeType, double dblLength, double dblWidth) {
        return this.dblLength * this.dblWidth;
    }
}

