package com.hrag.finished.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hrag.finished.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {

	User findByEmail(String email);
}
