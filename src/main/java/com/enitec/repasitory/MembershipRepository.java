package com.enitec.repasitory;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enitec.vo.Membership;

public interface MembershipRepository extends JpaRepository<Membership, String > {

}
