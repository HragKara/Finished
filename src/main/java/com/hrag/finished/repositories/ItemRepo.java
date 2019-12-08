package com.hrag.finished.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hrag.finished.models.Item;

@Repository
public interface ItemRepo extends CrudRepository<Item, Long> {
	
	@Query(value = "SELECT * FROM items WHERE title LIKE ?1", nativeQuery = true)
	List<Item> findItems(String query);
	
}
