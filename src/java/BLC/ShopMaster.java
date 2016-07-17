/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BLC;
import java.util.ArrayList;

import DAC.DataAccess;

/**
 *
 * @author e3659
 */
public class ShopMaster {
     private String  shopno;
     private String  shopname;
     private String  shoplocation;
     private String  shopdesc;
     private String  shopcountry;
     private String  shopstate;
     private String  shopdist;
     private String shopid;

    /**
     * @return the shopno
     */
    public String getShopno() {
        return shopno;
    }

    /**
     * @param shopno the shopno to set
     */
    public void setShopno(String shopno) {
        this.shopno = shopno;
    }

    /**
     * @return the shopname
     */
    public String getShopname() {
        return shopname;
    }

    /**
     * @param shopname the shopname to set
     */
    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    /**
     * @return the shoplocation
     */
    public String getShoplocation() {
        return shoplocation;
    }

    /**
     * @param shoplocation the shoplocation to set
     */
    public void setShoplocation(String shoplocation) {
        this.shoplocation = shoplocation;
    }

    /**
     * @return the shopdesc
     */
    public String getShopdesc() {
        return shopdesc;
    }

    /**
     * @param shopdesc the shopdesc to set
     */
    public void setShopdesc(String shopdesc) {
        this.shopdesc = shopdesc;
    }

    /**
     * @return the shopcountry
     */
    public String getShopcountry() {
        return shopcountry;
    }

    /**
     * @param shopcountry the shopcountry to set
     */
    public void setShopcountry(String shopcountry) {
        this.shopcountry = shopcountry;
    }

    /**
     * @return the shopstate
     */
    public String getShopstate() {
        return shopstate;
    }

    /**
     * @param shopstate the shopstate to set
     */
    public void setShopstate(String shopstate) {
        this.shopstate = shopstate;
    }

    /**
     * @return the shopdist
     */
    public String getShopdist() {
        return shopdist;
    }

    /**
     * @param shopdist the shopdist to set
     */
    public void setShopdist(String shopdist) {
        this.shopdist = shopdist;
    }
 
    
    
    
    public boolean saveShopData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Insert into shopMaster(shopno ,shopname ,shoplocation , shopdesc ,shopcountry , shopstate, shopdist) values('" +shopno+"','"+ shopname +"','"+shoplocation+"','"+  shopdesc +"','"+ shopcountry+"','"+ shopstate+"','"+ shopdist +"')";
             System.out.print(stSql);
             
            retVal =objDac.saveShopData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
    public boolean updatshopData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Update shopmaster set shopname='"+ shopname +"' ,shoplocation='"+shoplocation+"' , shopdesc='"+  shopdesc +"' ,shopcountry='"+ shopcountry+"' , shopstate='"+ shopstate+"', shopdist='"+ shopdist +"' where shopid=" +getShopid();
             System.out.print(stSql);
             
            retVal =objDac.saveShopData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
    /**
     *
     * @return
     */
    
    public ArrayList editShopData(String shopid)
    {
       // boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
             DataAccess objDac = new DataAccess();
             String stSql ="select shopid, shopno, shopname, shoplocation, shopdesc, shopcountry, shopstate, shopdist from shopmaster where shopid= "+shopid;
             System.out.print("Edit:" +stSql);
             
            objItemList =objDac.getShopData(stSql);
            
           System.out.print("edit Return value:"+objItemList.get(0)); 
           
            
        }
        
        catch (Exception ex)
        {
            System.out.println("Shp:" +ex.getMessage());
        }
        
        return objItemList;
      }
    
    public ArrayList retriveShopData()
    {
        boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
             DataAccess objDac = new DataAccess();
             String stSql ="select shopid, shopno, shopname, shoplocation, shopdesc, shopcountry, shopstate, shopdist from shopmaster";
             System.out.print(stSql);
             
            objItemList =objDac.getShopData(stSql);
            
           System.out.print("Return value:"+retVal); 
           
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }

    /**
     * @return the shopid
     */
    public String getShopid() {
        return shopid;
    }

    /**
     * @param shopid the shopid to set
     */
    public void setShopid(String shopid) {
        this.shopid = shopid;
    }
    
    public boolean deleteshopData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="delete from shopmaster where shopid=" +getShopid();
             System.out.print(stSql);
             
            retVal =objDac.deleteShopData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
   public ArrayList getShoplist(String itemid)
    {
       // boolean retVal= false;
        ArrayList objItemList =new ArrayList();
              
        try
        {
             DataAccess objDac = new DataAccess();
             String stSql ="select shopno, shopName,shopdesc,shopLocation,shopdist,shopState,shopCountry from shopmaster, item_shop_link where shopmaster.shopid=item_shop_link.shopid and item_shop_link.itemid="+itemid;
             System.out.print("Edit:" +stSql);
             
            objItemList =objDac.getShoplist(stSql);
            
            System.out.print("edit Return value:"+objItemList.get(0)); 
           
            
        }
        
        catch (Exception ex)
        {
            System.out.println("Item:" +ex.getMessage());
        }
        
        return objItemList;
      }
    
       
}