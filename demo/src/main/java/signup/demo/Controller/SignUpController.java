package signup.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import signup.demo.Entity.SignUp;
import signup.demo.Repository.SignUpRepository;
import signup.demo.Service.SignUpService;

@RestController
public class SignUpController {
  @Autowired
  private SignUpRepository signUpRepository;
  @Autowired
  private SignUpService signUpService;

  @CrossOrigin(origins = "http://localhost:4200")
  @PostMapping("/signup")
  public SignUp saveSignup(@RequestBody SignUp signUp) throws Exception {
    String tempEmail = signUp.getEmail();
    if (tempEmail != null && !"".equals(tempEmail)) {

      SignUp user = signUpService.fetchUserByEmail(tempEmail);
      if (user != null) {
        throw new Exception("This is Email Id" + tempEmail + "Already exist");
      }

    }
    SignUp userobj = null;
    userobj = signUpService.saveSignup(signUp);
    return userobj;
  }

  @CrossOrigin(origins = "http://localhost:4200")
  @GetMapping("/userdetails")
  public SignUp getUserDetails(@RequestParam("email") String email) {
    return signUpRepository.findSignUpByEmail(email);
  }
}
