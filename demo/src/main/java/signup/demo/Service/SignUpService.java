package signup.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import signup.demo.Entity.SignUp;
import signup.demo.Repository.SignUpRepository;

@Service
public class SignUpService {
  @Autowired
  public SignUpRepository signUpRepository;

  public SignUp saveSignup(SignUp signUp) {
    return signUpRepository.save(signUp);
  }

  public SignUp fetchUserByEmail(String email) {
    return signUpRepository.findByEmail(email);
  }
}
