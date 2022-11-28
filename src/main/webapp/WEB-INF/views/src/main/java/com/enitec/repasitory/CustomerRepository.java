package com.enitec.repasitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enitec.vo.CustomerVo;
@Repository
public interface CustomerRepository extends JpaRepository<CustomerVo, String>{

}
