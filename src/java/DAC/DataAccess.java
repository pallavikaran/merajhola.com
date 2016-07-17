/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAC;
import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;
//import java.util.ArrayList;

/**
 *
 * @author e3659
 */

public class DataAccess 
{
    
    public DataAccess()
    {
        
    }
    
   
    private Connection getConnection()
    {
       Connection con = null;

        try
        {
            
            String url = "jdbc:mysql://localhost:3306/";
            String db = "emarket";
            String driver = "com.mysql.jdbc.Driver";
            String userName ="root";
            String password="pallavi123";
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url+db,userName,password);

        }
        catch(Exception ex)
        {
            
        }
        return con;
    }
     
//***************************************User authentication**************************************************************    
    public boolean validateUser(String strSql)
    {
      
        boolean retVal =false;
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                   checkFlag=1; 
                }
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
    }
    
    
    //*****************************************shop Master data*******************************************************
    public boolean saveShopData(String strSql)
    {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
      
    //****************************************Item Master data************************************************
    //save update data
    public boolean saveItemData(String stSql)
   {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = stSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }

    //***************************************** for item shop link data*********************************
   public ArrayList retriveData(String strSql)
   {
         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                  
                    String strData ="";
                    strData=rs.getInt(1)+"," +rs.getString(2);
                    System.out.println("Data:"+strData);
                
                    objItemList.add(strData);
                    
                    checkFlag=1; 
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }

   
   public ArrayList getItemData(String strSql)
   {
         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                  
                    String strData ="";
                    strData=rs.getInt(1)+"," +rs.getInt(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5)+","+rs.getString(6)+","+rs.getString(7)+","+rs.getString(8)+","+rs.getString(9)+","+rs.getFloat(10)+","+rs.getString(11)+","+rs.getString(12);
                    System.out.println("Data:"+strData);
                
                    objItemList.add(strData);
                    
                    checkFlag=1; 
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            System.out.print("Exception:"+ex.getMessage());
        }
        
        return objItemList;
      }
   
   public ArrayList getShopData(String strSql)
   {
         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                  
                    String strData ="";
                    strData=rs.getInt(1)+"," +rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5)+","+rs.getString(6)+","+rs.getString(7)+","+rs.getString(8);
                    System.out.println("Data:"+strData);
                
                    objItemList.add(strData);
                    
                    checkFlag=1; 
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
        
  
        
  
        public boolean saveItemShopData(String stSql)
   {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = stSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      } 
        
        
public boolean deleteShopData(String strSql)
    {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }


public boolean deleteItemData(String strSql)
    {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
public boolean saveBlogData(String strSql)
    {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
      
   public ArrayList getBlogData(String strSql)
   {
         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                  
                    String strData ="";
                    strData=rs.getInt(1)+"," +rs.getString(2)+","+rs.getString(3)+","+rs.getString(4);
                    System.out.println("Data:"+strData);
                
                    objItemList.add(strData);
                    
                    checkFlag=1; 
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
   
   
public boolean deleteBlogData(String strSql)
    {
        boolean retVal =false;
        try
            
        {
              int checkFlag=0; 
              Connection con = null;
              // ArrayList objUserList =new ArrayList();
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                checkFlag = st.executeUpdate(query);
                
               
                if (checkFlag==1)
                {
                    retVal=true;
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
       
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }

public boolean checkLinkData(String strSql)
{         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                    checkFlag=1; 
                
                }
                if (checkFlag==1)
                { retVal=true;
                }
                else 
                { retVal=false;
                }
                
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            System.out.print("Exception:"+ex.getMessage());
        }
        
        return retVal;

}

public int getMaxSequenceNo(String strSql)
{         int retVal=0;
        
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
               // rs.moveToCurrentRow();
                while(rs.next())
                {
                //    checkFlag=1; 
                retVal=rs.getInt(1);
                }
                
                
                con.close();
    
                System.out.print("Sequence:"+retVal);
       }
        
        catch (Exception ex)
        {
            System.out.print("Exception:"+ex.getMessage());
        }
        
        return retVal;

}

   public ArrayList getShoplist(String strSql)
   {
         boolean retVal =false;
         ArrayList objItemList =new ArrayList();
         
        try
            
        {
             int checkFlag=0; 
             Connection con = null;
             // ArrayList objItemList =new ArrayList();
              
               con =getConnection(); 
               // int sumcount=0;
                Statement st;
                String query = strSql;
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next())
                {
                  
                    String strData ="";
                    strData=rs.getString(1)+"," +rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+","+rs.getString(5)+","+rs.getString(6)+","+rs.getString(7);
                    System.out.println("Data:"+strData);
                
                    objItemList.add(strData);
                    
                    checkFlag=1; 
                }
                con.close();
    
                System.out.print("Check Flag:"+checkFlag);
       }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
   
   

}

