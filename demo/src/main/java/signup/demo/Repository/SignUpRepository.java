package signup.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import signup.demo.Entity.SignUp;

@Repository
public interface SignUpRepository extends JpaRepository<SignUp, Integer> {
  SignUp findByEmail(String email);

  SignUp findSignUpByEmail(String email);
}
