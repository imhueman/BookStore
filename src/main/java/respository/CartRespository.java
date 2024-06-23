package respository;

import model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CartRespository extends JpaRepository<Cart, Long> {

	 @Query("SELECT DISTINCT c FROM Cart c WHERE c.username = :username")
	public List<Cart> findByUsername( String username);

}
