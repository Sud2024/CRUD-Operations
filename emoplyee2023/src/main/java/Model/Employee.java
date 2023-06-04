package Model;

public class Employee {
	
		private String Firstname;
		private String Lastname;
		private String Username;
		private String email;
		private String password;
		private String gender;
		private String designation;
		public String getFirstname() {
			return Firstname;
		}
		public void setFirstname(String firstname) {
			Firstname = firstname;
		}
		public String getLastname() {
			return Lastname;
		}
		public void setLastname(String lastname) {
			Lastname = lastname;
		}
		public String getUsername() {
			return Username;
		}
		public void setUsername(String username) {
			Username = username;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getDesignation() {
			return designation;
		}
		public void setDesignation(String designation) {
			this.designation = designation;
		}
		@Override
		public String toString() {
			return "Employee [Firstname=" + Firstname + ", Lastname=" + Lastname + ", Username=" + Username + ", email="
					+ email + ", password=" + password + ", gender=" + gender + ", designation=" + designation + "]";
		}

		
		}

	


