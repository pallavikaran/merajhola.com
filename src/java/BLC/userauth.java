/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BLC;
import DAC.DataAccess;

/**
 *
 * @author e3659
 */
public class userauth {
    
   private String  username;
   private String  userpwd;
   int id ;
    
    public userauth()
    {
        username ="";
        
        userpwd="";
    }
    
    public  String getUsername()
    {
      return username;
   
    }
    
    public void setUsername (String username) 
    {
        this.username =username;
        
    }
    
    public String getUserpwd()
    {       
        return userpwd;
    }
    public void setUserpwd (String userpwd) 
    {
        this.userpwd =userpwd;
        
    }
    
    
    public boolean validateUser()
    {
        boolean retVal=false;
        try
        {
             DataAccess objDac = new DataAccess();
             String strSql ="select userid from emarket.usermaster where username ='" +username +"' and userpassword ='" + userpwd +"'";
             System.out.print(strSql);
             
            retVal =objDac.validateUser(strSql);
            
            System.out.print("Return value:"+retVal);
        }
        
        
        catch (Exception ex)
        {
            String errMsg ="";
            errMsg= ex.getMessage();
        }
        return retVal;
    }
    }
    
    
    
    
