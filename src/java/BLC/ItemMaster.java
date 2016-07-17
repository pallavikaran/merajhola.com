/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BLC;

import DAC.DataAccess;
import java.util.ArrayList;

/**
 *
 * @author e3659
 */
public class ItemMaster 
{
    
     private String  itemcode;
     private String  itemname;
     private String  itemtype;
     private String  itemgender;
     private String  itembrand;
     private String  itemcolour;
     private String  itemsize;
     private  float  itemprice;
     private String itemdesc;
     private String itemid;
     /**
     * @return the itemcode
     */
    public String getItemcode() {
        return itemcode;
    }

    /**
     * @return the itemname
     */
    public String getItemname() {
        return itemname;
    }

    /**
     * @return the itemtype
     */
    public String getItemtype() {
        return itemtype;
    }

    /**
     * @return the itemgender
     */
    public String getItemgender() {
        return itemgender;
    }

    /**
     * @return the itembrand
     */
    public String getItembrand() {
        return itembrand;
    }

    /**
     * @return the itemcolour
     */
    public String getItemcolour() {
        return itemcolour;
    }

    /**
     * @return the itemsize
     */
    public String getItemsize() {
        return itemsize;
    }

    /**
     * @return the itemprice
     */
    public float getItemprice() {
        return itemprice;
    }

    /**
     * @param itemcode the itemcode to set
     */
    public void setItemcode(String itemcode) {
        this.itemcode = itemcode;
    }

    /**
     * @param itemname the itemname to set
     */
    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    /**
     * @param itemtype the itemtype to set
     */
    public void setItemtype(String itemtype) {
        this.itemtype = itemtype;
    }

    /**
     * @param itemgender the itemgender to set
     */
    public void setItemgender(String itemgender) {
        this.itemgender = itemgender;
    }

    /**
     * @param itembrand the itembrand to set
     */
    public void setItembrand(String itembrand) {
        this.itembrand = itembrand;
    }

    /**
     * @param itemcolour the itemcolour to set
     */
    public void setItemcolour(String itemcolour) {
        this.itemcolour = itemcolour;
    }

    /**
     * @param itemsize the itemsize to set
     */
    public void setItemsize(String itemsize) {
        this.itemsize = itemsize;
    }

    /**
     * @param itemprice the itemprice to set
     */
    public void setItemprice(float itemprice) {
        this.itemprice = itemprice;
    }
    
    public String getItemdesc() {
        return itemdesc;
    }

  
    public void setItemdesc(String itemdesc) {
        this.itemdesc = itemdesc;
    }

    
    /**
     * @return the itemid
     */
    public String getItemid() {
        return itemid;
    }

    /**
     * @param itemid the itemid to set
     */
    public void setItemid(String itemid) {
        this.itemid = itemid;
    }
    
  
  public boolean saveItemData()
    {
        boolean retVal= false;
        try
        {
        DataAccess objDac = new DataAccess();
             String stSql ="Insert into itemMaster(itemcode ,itemcolour, itembrand ,itemname , itemdesc ,itemtype ,itemgender, itemsize, itemprice) values('" +itemcode+"','"+itemcolour+"','"+ itembrand +"','"+itemname+"','"+  itemdesc +"','"+ itemtype+"','"+ itemgender+"','"+ itemsize +"','"+ itemprice+"')";
             System.out.print(stSql);
             
            retVal =objDac.saveItemData(stSql);
            
           System.out.print("Return value:"+retVal);
      }
   
        catch (Exception ex)
        {
            System.out.println("Item Data:" +ex.getMessage());
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
             String stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname,imageactualname from itemmaster";
             System.out.print(stSql);
             
            objItemList =objDac.getItemData(stSql);
            
           System.out.print("Return value:"+retVal); 
           
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
    
     
     
    public boolean updateitemData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Update itemmaster set itemcode='"+ itemcode +"' ,itemname='"+itemname+"' , itemtype='"+  itemtype +"' ,itemgender='"+ itemgender+ "' , itembrand='"+ itembrand+"', itemcolour='"+ itemcolour +"',itemsize='"+ itemsize+ "',itemdesc='"+ itemdesc+"',itemprice='"+ itemprice+"' where itemid="+ itemid;
             System.out.print(stSql);
             
            retVal =objDac.saveItemData(stSql);
            
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
    
    public ArrayList editItemData(String itemid)
    {
       // boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
             DataAccess objDac = new DataAccess();
             String stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname, imageactualname from itemmaster where itemid= "+itemid;
             System.out.print("Edit:" +stSql);
             
            objItemList =objDac.getItemData(stSql);
            
            System.out.print("edit Return value:"+objItemList.get(0)); 
           
            
        }
        
        catch (Exception ex)
        {
            System.out.println("Item:" +ex.getMessage());
        }
        
        return objItemList;
      }

    public boolean deleteitemData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Delete from itemmaster where itemid=" +getItemid();
             System.out.print(stSql);
             
            retVal =objDac.deleteItemData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
    
     
    public int getImageSequenceNo()
    {
        int retVal=0;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Select count(*) from ItemMaster";
             System.out.print(stSql);
             
            retVal =objDac.getMaxSequenceNo(stSql);
            
           System.out.print("Return value:"+retVal); 
            
            
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal+1;
      }
    public boolean saveImageDetails(String imageDisplayName, String imageActualName, int icode)
    {
        boolean retVal= false;
        try
        {
        DataAccess objDac = new DataAccess();
             String stSql ="Update ItemMaster set imageDisplayName='"+imageDisplayName+"',imageActualName='"+imageActualName+"' where itemid="+icode;
                     
                    System.out.print(stSql);
             
            retVal =objDac.saveItemData(stSql);
            
           System.out.print("Update image:"+retVal);
      }
   
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
  
    
     public ArrayList displayItemData(String strQry, int qryReq)
    {
        boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        { //strType, String strGender, String strDesc, String strBrand
            DataAccess objDac = new DataAccess();
            String stSql="";
            if(qryReq==1)
            {     
            stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname, imageactualname from itemmaster where itemtype='"+strQry+"'";
            }
            else if(qryReq==2)
            {     
            stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname, imageactualname from itemmaster where itemgender='"+strQry+"'";
            }
            
            else if(qryReq==3)
            {     
            stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname, imageactualname from itemmaster where itemdesc like '%"+strQry+"%'";
            }
            
            else if(qryReq==4)
            {     
            stSql ="select itemid, itemcode, itemname, itemtype, itemgender, itembrand, itemcolour, itemsize, itemdesc, itemprice, imagedisplayname, imageactualname from itemmaster where itembrand='"+strQry+"'";
            }
            
           
            System.out.print(stSql);
             
            objItemList =objDac.getItemData(stSql);
            
           System.out.print("Return value:"+retVal); 
           
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
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

     
