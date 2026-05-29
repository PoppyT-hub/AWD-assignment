<?php
class User {
    protected $Conn;

    // Store the database connection when the class is created
    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    // Create a new user account (registration)
    // Password is hashed before being stored for security
    public function createUser($user_data){
        $sec_password = password_hash($user_data['password'], PASSWORD_DEFAULT);

        $query = "INSERT INTO users (user_email, user_pass) 
                  VALUES (:user_email, :user_pass)";

        $stmt = $this->Conn->prepare($query);

        return $stmt->execute([
            'user_email' => $user_data['email'],
            'user_pass'  => $sec_password
        ]);
    }

    // Attempt to log a user in using email + password
    // Returns user data on success, false on failure
    public function loginUser($email, $password) {
        $query = "SELECT * FROM users WHERE user_email = :user_email";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(['user_email' => $email]);

        $attempt = $stmt->fetch();

        // Verify the provided password against the stored hash
        if ($attempt && password_verify($password, $attempt['user_pass'])) {
            return $attempt; // login successful
        } else {
            return false; // login failed
        }
    }

    // Fetch a single user's data by their ID
    public function getUser($user_id){
        $query = "SELECT * FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([':user_id' => $user_id]);

        return $stmt->fetch();
    }

    // Change the logged-in user's password
    public function changeUserPassword($current_pass, $new_pass){
        // Fetch the latest user data from the database
        $query = "SELECT user_pass FROM users WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute(['user_id' => $_SESSION['user_data']['user_id']]);
        $user = $stmt->fetch();

        // Verify the current password
        if (!$user || !password_verify($current_pass, $user['user_pass'])) {
            return false;
        }

        // Hash the new password
        $new_sec_pass = password_hash($new_pass, PASSWORD_DEFAULT);

        // Update the password in the database
        $query = "UPDATE users SET user_pass = :user_pass WHERE user_id = :user_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            'user_pass' => $new_sec_pass,
            'user_id'   => $_SESSION['user_data']['user_id']
        ]);

        // Update the session so the user stays logged in
        $_SESSION['user_data']['user_pass'] = $new_sec_pass;

        return true;
    }
}
