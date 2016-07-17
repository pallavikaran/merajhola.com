/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BLC;

import DAC.DataAccess;
import java.util.ArrayList;

/**
 *
 * @author Pallavi
 */
public class ItemShopLink {
    private String shopno; //this is itemid basically
    private String itemno; // this is basically shopid
  
    
    public String getShopno() {
        return shopno;
    }
     public void setShopno(String shopno) {
        this.shopno = shopno;
    }
    public String getItemno() {
        return itemno;
    }

    public void setItemno(String itemno) {
        this.itemno = itemno;
    }
    
    public boolean saveItemShopData()
    {
        boolean retVal= false;
        try
        {
            DataAccess objDac = new DataAccess();
             String stSql ="Insert into item_shop_link(itemid ,shopid) values('" +itemno+"','"+ shopno+"')";
             System.out.print(stSql);
             
            retVal =objDac.saveShopData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
public ArrayList retriveItemData()
    {
        boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
            DataAccess objDac = new DataAccess();
             String stSql ="select itemid, itemname from itemmaster";
             System.out.print(stSql);
             
            objItemList =objDac.retriveData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
    
    
    
     public Boolean checkLinkData()
    {
        boolean retVal= false;
        
        
        try
        {
            DataAccess objDac = new DataAccess();
             String stSql ="select itemid, shopid from item_shop_link where itemid= "+itemno+  " and shopid=" +shopno;
             System.out.print(stSql);
             
            retVal =objDac.checkLinkData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
    
    
    
     public ArrayList retriveShopData()
    {
           boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
            DataAccess objDac = new DataAccess();
             String stSql ="select shopid, shopno from shopmaster";
             System.out.print(stSql);
             
            objItemList =objDac.retriveData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
    
}

}