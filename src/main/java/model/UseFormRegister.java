package model;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UseFormRegister {
	@Valid
	@NotBlank(message = "không được để trống")
    private String username;
	@NotBlank(message = "không được để trống")
    private String password;
	@NotBlank(message = "không được để trống")
    private String againPassword;
    private Date dob;
    @Email(message = "Địa chỉ email không hợp lệ")
    @NotBlank(message = "không được để trống")
    private String email;
    private String address;

    
    
	
}
