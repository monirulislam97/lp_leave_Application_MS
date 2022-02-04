
package DAO;

import Model.User;
import java.util.List;


public interface UserDAO {
    
    public List<User> getAllUserDAO();
    public User getUserDAO(String id);
    public User getUserDAO(String username, String pass);
    public void insertUserDAO(User u);
    public void deleteUserDAO(String id);
    public void updateUserDAO(User u);  
    
     
}
