package signup.demo.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "sign")
public class SignUp {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(name = "firstname")
  private String firstname;

  @Column(name = "lastname")
  private String lastname;

  @Column(name = "email")
  private String email;
  @Column(name = "number")
  private String number;
  @Column(name = "password")
  private String password;
  @Column(name = "confirmpassword")
  private String confirmpassword;

  public SignUp() {

  }

  public SignUp(String firstname, String lastname, String email, String number, String password,
      String confirmpassword) {
    super();
    this.firstname = firstname;
    this.lastname = lastname;
    this.email = email;
    this.number = number;
    this.password = password;
    this.confirmpassword = confirmpassword;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getFirstname() {
    return firstname;
  }

  public void setFirstname(String firstname) {
    this.firstname = firstname;
  }

  public String getLastname() {
    return lastname;
  }

  public void setLastname(String lastname) {
    this.lastname = lastname;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getNumber() {
    return number;
  }

  public void setNumber(String number) {
    this.number = number;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getConfirmpassword() {
    return confirmpassword;
  }

  public void setConfirmpassword(String confirmpassword) {
    this.confirmpassword = confirmpassword;
  }

}
