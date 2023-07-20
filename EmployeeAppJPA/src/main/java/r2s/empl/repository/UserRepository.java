package r2s.empl.repository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import r2s.empl.entity.User;
@Repository
public interface UserRepository extends CrudRepository<User, String>{
	
	
}
