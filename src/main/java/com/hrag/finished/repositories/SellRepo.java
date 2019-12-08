package com.hrag.finished.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hrag.finished.models.Sell;

@Repository
public interface SellRepo extends CrudRepository<Sell, Long> {
	@Query(value = "SELECT * FROM selling WHERE size LIKE ?1 AND item_id LIKE ?2 AND sold = false ORDER BY price ASC LIMIT 1", nativeQuery = true)
    public Sell findSize(int size, Long id);
	
	@Query(value = "SELECT * FROM selling WHERE size LIKE ?1 AND item_id LIKE ?2 AND sold = false ORDER BY price ASC LIMIT 1", nativeQuery = true)
	public Sell findSizeHalf(double size, Long id);
	
	@Query(value = "SELECT * FROM selling WHERE item_id LIKE ?1 AND sold = false ORDER BY price ASC LIMIT 1", nativeQuery = true)
	public Sell lowestPrice(Long id);
}
