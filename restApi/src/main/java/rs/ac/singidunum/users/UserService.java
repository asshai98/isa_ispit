package rs.ac.singidunum.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.users.RegistrationRepository;
import rs.ac.singidunum.users.Users;

@Service
public class UserService {

    @Autowired
    private RegistrationRepository repository; //injektovan repozitorijum

    public Users saveUser(Users user){
        return repository.save(user);  //uzima User objekat i cuva u bazi
    }

    public Users fetchUserByEmail(String email){
        return repository.findByEmail(email);
    }

    public Users fetchUserByUsername(String username){
        return repository.findByUsername(username);
    }

    public Users fetchUserByUsernameAndPassword(String username, String password){
        return repository.findByUsernameAndPassword(username, password);
    }






}
