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
public class BlogMaster {
    
    private String blogtitle;
    private String blogcontent;
    private String blogid;
    /**
     * @return the blogtitle
     */
    public String getBlogtitle() {
        return blogtitle;
    }

    /**
     * @param blogtitle the blogtitle to set
     */
    public void setBlogtitle(String blogtitle) {
        this.blogtitle = blogtitle;
    }

   
    /**
     * @return the blogcontent
     */
    public String getBlogcontent() {
        return blogcontent;
    }

    /**
     * @param blogcontent the blogcontent to set
     */
    public void setBlogcontent(String blogcontent) {
        this.blogcontent = blogcontent;
    }

    /**
     * @return the blogid
     */
    public String getBlogid() {
        return blogid;
    }

    /**
     * @param blogid the blogid to set
     */
    public void setBlogid(String blogid) {
        this.blogid = blogid;
    }
    
    public boolean saveBlogData()
    {
        boolean retVal= false;
        try
        {
        DataAccess objDac = new DataAccess();
             String stSql ="Insert into blogMaster(blogtitle, blogcontent) values('"+blogtitle+"','"+blogcontent+"')";
             System.out.print(stSql);
             
            retVal =objDac.saveBlogData(stSql);
            
           System.out.print("Return value:"+retVal);
      }
   
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
     public boolean updateblogData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="Update blogmaster set blogtitle='"+ blogtitle +"' ,blogcontent='"+blogcontent+"' where blogid=" +getBlogid();
             System.out.print(stSql);
             
            retVal =objDac.saveBlogData(stSql);
            
           System.out.print("Return value:"+retVal); 
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
   
    
    public ArrayList retriveBlogData()
    {
        boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
            DataAccess objDac = new DataAccess();
             String stSql ="select blogid, blogtitle, blogcontent, DisplayImageName, ActualImagename from blogmaster";
             System.out.print(stSql);
             
            objItemList =objDac.getBlogData(stSql);
            
           System.out.print("Return value:"+retVal); 
           
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
      }
    
    public ArrayList editBlogData(String blogid)
    {
       // boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        {
             DataAccess objDac = new DataAccess();
             String stSql ="select blogid, blogtitle, blogcontent, DisplayImageName, ActualImageName from blogmaster where blogid= "+blogid;
             System.out.print("Edit:" +stSql);
             
            objItemList =objDac.getBlogData(stSql);
            
           System.out.print("edit Return value:"+objItemList.get(0)); 
           
            
        }
        
        catch (Exception ex)
        {
            System.out.println("blog:" +ex.getMessage());
        }
        
        return objItemList;
      }
    
     public boolean deleteblogData()
    {
        boolean retVal= false;
        try
        {
            
            DataAccess objDac = new DataAccess();
             String stSql ="delete from blogmaster where blogid=" +getBlogid();
             System.out.print(stSql);
             
            retVal =objDac.deleteBlogData(stSql);
            
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
             String stSql ="Select count(*) from BlogMaster";
             System.out.print(stSql);
             
            retVal =objDac.getMaxSequenceNo(stSql);
            
           System.out.print("Return value:"+retVal); 
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return retVal+1;
      }
    public boolean saveImageDetails(String DisplayImageName, String ActualImageName, int icode)
    {
        boolean retVal= false;
        try
        {
        DataAccess objDac = new DataAccess();
             String stSql ="Update BlogMaster set DisplayImageName='"+DisplayImageName+"',ActualImageName='"+ActualImageName+"' where blogid="+icode;
                     
                    System.out.print(stSql);
             
            retVal =objDac.saveBlogData(stSql);
            
           System.out.print("Update image:"+retVal);
      }
   
        catch (Exception ex)
        {
            
        }
        
        return retVal;
      }
    
      public ArrayList displayBlogData(String strQry, int qryReq)
    {
        boolean retVal= false;
        ArrayList objItemList =new ArrayList();
        
        try
        { //strType, String strGender, String strDesc, String strBrand
            DataAccess objDac = new DataAccess();
            String stSql="";
            if(qryReq==1)
            {     
            stSql ="select blogid, blogtitle, blogcontent, displayimagename, actualimagename from blogmaster where blogcontent like '%"+strQry+"%'";
             }
            
            System.out.print(stSql);
             
            objItemList =objDac.getBlogData(stSql);
            
           System.out.print("Return value:"+retVal); 
           
            
        }
        
        catch (Exception ex)
        {
            
        }
        
        return objItemList;
    }
}

     
