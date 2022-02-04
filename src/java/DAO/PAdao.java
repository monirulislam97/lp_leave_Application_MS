
package DAO;

import Model.PreviousApplication;
import java.util.List;


public interface PAdao {
    
    public List<PreviousApplication> getAllPAdao();
    public PreviousApplication getPAdao(String id);
    public void insertPAdao(PreviousApplication u);
    public void deletePAdao(String id);

    
    
}
