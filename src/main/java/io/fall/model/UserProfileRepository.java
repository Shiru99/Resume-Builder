package io.fall.model;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserProfileRepository extends JpaRepository<UserProfile,Integer> {
    Optional<UserProfile> findByUserName(String username);
}
