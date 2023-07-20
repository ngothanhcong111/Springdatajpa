package r2s.empl.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import r2s.empl.entity.User;
import r2s.empl.repository.UserRepository;
@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	
	public List<User> getAllUsers() {
		return (List<User>) userRepository.findAll();
	}
	
	public boolean addUser(User user) {
		return userRepository.save(user) != null;
	}
	
	public boolean checkLogin(String username,String password) {
		Optional<User> optionalUser = findById(username);
		if(optionalUser.isPresent()
			&&optionalUser.get().getPassword().equals(password)){
			return true;
		}
		return false;
	}
	

	private Optional<User> findById(String username) {
		// TODO Auto-generated method stub
		return userRepository.findById(username);
	}
	
	
	
	
	public List<User> findAll(){
		return (List<User>) userRepository.findAll();
	}
	
	public void deleteById(String username) {
		 userRepository.deleteById(username);
	}
	
	public Optional<User> getUserById(String username) {
		return  userRepository.findById(username);
	}
	
	public User save(User user) {
		return userRepository.save(user);
	}
	
	
	
}
