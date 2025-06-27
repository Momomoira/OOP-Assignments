package oop_activity;

/* CALLANGAN, Moira
   DELA ROSA, Pierre
   MULLENO, Jeshaiah Mae

   09-16-2024
 */

public class OOP_Activity {
    public static void main (String[] args) {
        System.out.println("Problem 1\n");
        StudentGrade clStudentGrade = new StudentGrade();
        System.out.println(clStudentGrade.getStrLastName());
        System.out.println(clStudentGrade.getStrFirstName());
        System.out.println(clStudentGrade.getStrStudentNo());
        System.out.println(clStudentGrade.getStrEmailAddress());
        System.out.println(clStudentGrade.getStrCellPhoneNo());
        System.out.println(clStudentGrade.getIntCourseGrade(90));
        System.out.println(clStudentGrade.getStrSubjectCode() + "\n");

        System.out.println(clStudentGrade.setStrNewLastName("Callangan"));
        System.out.println(clStudentGrade.setStrNewFirstName("Moira"));
        System.out.println(clStudentGrade.setStrNewStudentNo("2023-34003"));
        System.out.println(clStudentGrade.setStrNewEmailAddress("mcallangan@plm.edu.ph"));
        System.out.println(clStudentGrade.setStrNewCellPhoneNo("09327192032"));
        System.out.println(clStudentGrade.setIntNewCourseGrade(90));
        System.out.println(clStudentGrade.setStrNewSubjectCode("ICC 102.2"));
        
        System.out.println(clStudentGrade.setStrNewLastName("Dela Rosa"));
        System.out.println(clStudentGrade.setStrNewFirstName("Pierre Andrei"));
        System.out.println(clStudentGrade.setStrNewStudentNo("2023-34030"));
        System.out.println(clStudentGrade.setStrNewEmailAddress("pabdelarosa@plm.edu.ph"));
        System.out.println(clStudentGrade.setStrNewCellPhoneNo("09295690798"));
        System.out.println(clStudentGrade.setIntNewCourseGrade(90));
        System.out.println(clStudentGrade.setStrNewSubjectCode("ICC 102.2"));

        System.out.println("\nProblem 2\n");

        Area clCircleInt = new Area ("Circle",10);
        Area clCircleDouble = new Area ("Circle",10.0);
        Area clRectangleInt = new Area ("Circle",10, 10);
        Area clRectangleDoubleInt = new Area ("Circle",10.0, 10);
        Area clRectangleIntDouble = new Area ("Circle",10, 10.0);
        Area clRectangleDouble = new Area ("Circle",10.0, 10.0);
        
        System.out.println("Area of Circle: " + clCircleInt.computeArea("Circle", 10));
        System.out.println("Area of Circle: " + clCircleDouble.computeArea("Circle", 10.0));
        System.out.println("Area of Rectangle: " + clRectangleInt.computeArea("Rectangle", 10, 10));
        System.out.println("Area of Rectangle: " + clRectangleDoubleInt.computeArea("Rectangle", 10.0, 10));
        System.out.println("Area of Rectangle: " + clRectangleIntDouble.computeArea("Rectangle", 10, 10.0));
        System.out.println("Area of Rectangle: " + clRectangleDouble.computeArea("Rectangle", 10.0, 10.0));
    
        System.out.println("\nProblem 3\n");
     //abstract
        
        Figure clCircle = new CircleAbstract();
        clCircle.sides();
        clCircle.shapeName();
        clCircle.description();

        Figure clTriangle= new TriangleAbstract();
        clTriangle.sides();
        clTriangle.shapeName();
        clTriangle.description();

        //interface

        FigureInterface clCircleInterface = new CircleInterface();
        clCircleInterface.sides();
        clCircleInterface.shapeName();
        clCircleInterface.description();

        FigureInterface clTriangleInterface = new TriangleInterface();
        clTriangleInterface.sides();
        clTriangleInterface.shapeName();
        clTriangleInterface.description();
    }
}        
        
