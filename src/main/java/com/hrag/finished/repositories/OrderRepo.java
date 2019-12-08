package com.hrag.finished.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hrag.finished.models.Order;

@Repository
public interface OrderRepo extends CrudRepository<Order, Long> {

}
