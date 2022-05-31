package com.wej.singer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wej.singer.entities.User;
import com.wej.singer.repos.UserRepository;
@Service
public class UserServiceImpl implements UserService{

	 @Autowired
	    private UserRepository userRepository;

	    @Override
	    public List <User> findAll() {
	        return userRepository.findAll();
	    }

		@Override
		public User saveUser(User u) {
			return userRepository.save(u);
		}

		@Override
		public User updateUser(User u) {
			return userRepository.save(u);
		}

		@Override
		public void deleteUser(User u) {
			userRepository.delete(u);
		}

		@Override
		public void deleteUserById(Long idU) {
			userRepository.deleteById(idU);
		}

		@Override
		public User getUser(Long idU) {
			return userRepository.findById(idU).get();
		}

}
