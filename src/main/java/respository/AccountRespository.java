
package respository;

import jakarta.transaction.Transactional;
import model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRespository extends JpaRepository<Account, String> {
	boolean existsByUsernameAndPassword(String username, String password);
	
	Account findByUsername(String username);

	boolean existsByEmail(String email);
	@Modifying
	@Transactional
	@Query("UPDATE Account a SET a.password = :newPassword WHERE a.username = :account")
	int updateAccount(String account, String newPassword);
	@Modifying
	@Transactional
	@Query("UPDATE Account a SET a.role = :role WHERE a.username = :account")
	int updateRole(String account, int role);
}
