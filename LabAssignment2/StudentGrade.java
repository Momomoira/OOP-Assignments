package oop_activity;

class StudentGrade {
    private String strLastName = "Mulleno";
    private String strFirstName = "Jeshaiah Mae";
    private String strStudentNo = "2023-34019";
    private String strEmailAddress = "jmamulleno2023@plm.edu.ph";
    private String strCellPhoneNo = "09627112814";
    private int intCourseGrade = 0;
    private String strSubjectCode = "ICC 1.101";

    public String getStrLastName(){
        return strLastName;
    }

    public String getStrFirstName(){
        return strFirstName;
    }

    public String getStrStudentNo(){
        return strStudentNo;
    }

    public String getStrEmailAddress(){
        return strEmailAddress;
    }

    public String getStrCellPhoneNo(){
        return strCellPhoneNo;
    }

    public int getIntCourseGrade(int intCourseGrade){
        return intCourseGrade;
    }

    public String getStrSubjectCode(){
        return strSubjectCode;
    }

    public String setStrNewLastName(String strNewLastName){
        this.strLastName = strNewLastName;
        return strNewLastName;
    }

    public String setStrNewFirstName(String strNewFirstName){
        this.strFirstName = strNewFirstName;
        return strNewFirstName;
    }

    public String setStrNewStudentNo(String strNewStudentNo){
        this.strFirstName = strNewStudentNo;
        return strNewStudentNo;
    }

    public String setStrNewEmailAddress(String strNewEmailAddress){
        this.strEmailAddress = strNewEmailAddress;
        return strNewEmailAddress;
    }

    public String setStrNewCellPhoneNo(String strNewCellPhoneNo){
        this.strCellPhoneNo = strNewCellPhoneNo;
        return strNewCellPhoneNo;
    }

    public int setIntNewCourseGrade(int intNewCourseGrade){
        this.intCourseGrade = intNewCourseGrade;
        return intNewCourseGrade;
    }

    public String setStrNewSubjectCode(String strNewSubjectCode){
        this.strCellPhoneNo = strNewSubjectCode;
        return strNewSubjectCode;
    }
}
