package com.wej.singer.repos;
import org.springframework.data.jpa.repository.JpaRepository;

import com.wej.singer.entities.Role;
public interface RoleRepository extends JpaRepository<Role, Long>  {

}
