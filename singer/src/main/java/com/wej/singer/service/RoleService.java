package com.wej.singer.service;

import java.util.List;

import com.wej.singer.entities.Role;

public interface RoleService {
	 List <Role> findAll();
	    
	 Role saveRole(Role r);
	 Role updateRole(Role r);
	     Role getRole (Long idRole);
}
