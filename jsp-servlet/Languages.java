package Beans;
public class Languages {
    protected String rollno;
    protected String lang1;
    protected String lang2;
    protected String lang3;
    protected String lang4;
    protected String lang5;
    public Languages() {}
public Languages(String rollno, String lang1, String lang2, String lang3, String lang4, String lang5) {
        super();
        this.rollno = rollno;
        this.lang1 = lang1;
        this.lang2 = lang2;
        this.lang3 = lang3;
        this.lang4 = lang4;
        this.lang5 = lang5;
    }
    public String getRollno() {
        return rollno;
    }
    public String getLang1() {
        return lang1;
    }
    public String getLang2() {
        return lang2;
    }
    public String getLang3() {
        return lang3;
    }
    public String getLang4() {
        return lang4;
    }
    public String getLang5() {
        return lang5;
    }
    public void setRollno(String rollno) {
        this.rollno = rollno;
    }
    public void setLang1(String lang1) {
        this.lang1 = lang1;
    }
    public void setLang2(String rollno) {
        this.lang2 = lang2;
    }
    public void setLang3(String rollno) {
        this.lang3 = lang3;
    }
    public void setLang4(String rollno) {
        this.lang4 = lang4;
    }
    public void setLang5(String rollno) {
        this.lang5=lang5;
    }
}