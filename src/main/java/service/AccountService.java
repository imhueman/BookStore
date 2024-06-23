package service;

import model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import respository.AccountRespository;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class AccountService {
	@Autowired(required = true)
	private AccountRespository accountRepository;

	public List<Account> getAll() {
		return accountRepository.findAll();
	}

	public long totalAccount() {
		return accountRepository.count();
	}

	public boolean validateAccount(String username, String password) {
		return accountRepository.existsByUsernameAndPassword(username, password);
	}
	public boolean setRole(String account, int role) {
		int updateRole = accountRepository.updateRole(account,role);
		return updateRole>0;
	}
	public void deleteAccount(String id) {
		accountRepository.deleteById(id);
	}
	public Optional<Account> getAccountById(String id) {
		return accountRepository.findById(id);
	}

	public Account savePerson(Account person) {
		return accountRepository.save(person);
	}



	public Account getAcc(String id) {
		return accountRepository.findById(id).get();
	}

	public boolean emailExists(String email) {
		// TODO Auto-generated method stub
		return accountRepository.existsByEmail(email);
	}

	public void save(Account account) {
		// TODO Auto-generated method stub
		accountRepository.save(account);
	}

	public boolean emailUser(String username) {
		// TODO Auto-generated method stub
		return accountRepository.existsById(username);
	}
}
