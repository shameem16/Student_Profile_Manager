package Beans;
public class Certificates {
	protected String rollno;
	protected String cert1;protected String proof1;protected String cert2;protected String proof2;
	protected String cert3;protected String proof3;protected String cert4;protected String proof4;
	protected String cert5;protected String proof5;
	public Certificates(String rollno, String cert1, String proof1, String cert2, String proof2, String cert3,String proof3, String cert4, String proof4, String cert5, String proof5) {
		super();
		this.rollno = rollno;
		this.cert1 = cert1;
		this.proof1 = proof1;
		this.cert2 = cert2;
		this.proof2 = proof2;
		this.cert3 = cert3;
		this.proof3 = proof3;
		this.cert4 = cert4;
		this.proof4 = proof4;
		this.cert5 = cert5;
		this.proof5 = proof5;
	}
	public String getRollno() {
		return rollno;
	}
	public void setRollno(String rollno) {
		this.rollno = rollno;
	}
	public String getCert1() {
		return cert1;
	}
	public void setCert1(String cert1) {
		this.cert1 = cert1;
	}
	public String getProof1() {
		return proof1;
	}
	public void setProof1(String proof1) {
		this.proof1 = proof1;
	}
	public String getCert2() {
		return cert2;
	}
	
	public void setCert2(String cert2) {
		this.cert2 = cert2;
	}
	public String getProof2() {
		return proof2;
	}
	public void setProof2(String proof2) {
		this.proof2 = proof2;
	}
	public String getCert3() {
		return cert3;
	}
	public void setCert3(String cert3) {
		this.cert3 = cert3;
	}
	public String getProof3() {
		return proof3;
	}
	public void setProof3(String proof3) {
		this.proof3 = proof3;
	}
	public String getCert4() {
		return cert4;
	}
	public void setCert4(String cert4) {
		this.cert4 = cert4;
	}
	public String getProof4() {
		return proof4;
	}
	public void setProof4(String proof4) {
		this.proof4 = proof4;
	}
	public String getCert5() {
		return cert5;
	}
	public void setCert5(String cert5) {
		this.cert5 = cert5;
	}
	public String getProof5() {
		return proof5;
	}
	public void setProof5(String proof5) {
		this.proof5 = proof5;
	}
}
