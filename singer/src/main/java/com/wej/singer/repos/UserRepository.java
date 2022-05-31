package com.wej.singer.repos;
import org.springframework.data.jpa.repository.JpaRepository;

import com.wej.singer.entities.User;
public interface UserRepository extends JpaRepository<User, Long> {
User findByUsername (String username);
}