
package com.enitec.repasitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.enitec.vo.Token;

public interface TokenRepository extends JpaRepository<Token, String> {

	@Query(value = "SELECT * FROM enitec.email_token where c_id=:c_id", nativeQuery = true)
	Token expireToken(@Param("c_id") String c_id);
}
