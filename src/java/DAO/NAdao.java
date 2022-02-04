
package DAO;

import Model.NewApplication;
import java.util.List;


public interface NAdao {
    
    public List<NewApplication> getAllNAdao();
    public NewApplication getNAdao(String id);
    public void insertNAdao(NewApplication u);
    public void deleteNAdao(String id);
    public void updateNAdao(NewApplication u);  
}
