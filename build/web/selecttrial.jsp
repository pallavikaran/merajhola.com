<%-- 
    Document   : selecttrial
    Created on : Mar 11, 2013, 5:20:15 PM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
      <script type="text/javascript">
$(function(){
    $('#coolMenu').find('> li').hover(function(){
        $(this).find('ul')
        .removeClass('noJS')
        .stop(true, true).slideToggle('fast');
    });
});


function search()
{
    
    
}
</script>
       <link rel="stylesheet" type="text/css" href="pubstyle.css" > 
    </head>
    <body>
        <form method="post" name="form" action="search.jsp">
        <table table width ="60%" align ="center">
            <tr>
                <td> 
        <img src="images/merajhola.jpg" >
                </td>
                <td>
                    Search: 
                    <input type="text" name="search" value="" size="40" />    
                    <input type="submit" value="Search" name="search"  />
                   </td>
            </tr>
        </table>
        </form>
        <table align="center">
            <tr>
                <td>
<div class="container">
<ul id="coolMenu">

<li><a href="currenttrend.jsp">Current Trend</a>
</li>

<li><a href="#">Shoe Guide</a>
<ul>
        <li><a href="bootforms.jsp?" target="display">Boot forms</a></li>
        <li><a href="bootstyles.jsp" target="display">Boot styles</a></li>
        <li><a href="bootequestrian.jsp" target="display">Boots Equestrian</a></li>
        <li><a href="bootsformen.jsp" target="display">Boots for men</a></li>
        <li><a href="dressshoesformen.jsp" target="display">Dress shoes for men</a></li>
        <li><a href="leathersformen.jsp" target="display">Leathers for men</a></li>
        <li><a href="loafersformen.jsp" target="display">Loafers for men</a></li>
        <li><a href="dressshoesforwomen.jsp" target="display">Dress Shoes for women</a></li>
        <li><a href="flatshoesforwomen.jsp" target="display">Flat shoes for women</a></li>
        <li><a href="flipflopsforwomen.jsp" target="display">Flip-Flops for women</a></li>
        <li><a href="heelsizesforwomen.jsp" target="display">Heel sizes for women</a></li>
        <li><a href="heeltypesforwomen.jsp" target="display">Heel types for women</a></li>
        <li><a href="mulesforwomen.jsp" target="display">Mules for women</a></li>
        <li><a href="shoesoles.jsp" target="display">Shoe soles</a></li>
    </ul>
</li>
<li>
    <a href="#">Men</a>
    <ul>
        <li><a href="itemDisplay.jsp?req1=Athletic Shoes&req2=1" target="display">Athletic Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Boat Shoes&req2=1" target="display">Boat shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Boots&req2=1" target="display">Boots</a></li>
        <li><a href="itemDisplay.jsp?req1=Casual Shoes&req2=1" target="display">Casual Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Comfort Shoes&req2=1" target="display">Comfort shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Dress Shoes&req2=1" target="display">Dress shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Ethnic shoes&req2=1" target="display">Ethnic shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Loafers&req2=1" target="display">Loafers</a></li>
        <li><a href="itemDisplay.jsp?req1=Oxfords&req2=1" target="display">Oxfords</a></li>
        <li><a href="itemDisplay.jsp?req1=Sandals&req2=1" target="display">Sandals</a></li>
        <li><a href="itemDisplay.jsp?req1=Slippers&req2=1" target="display">Slippers</a></li>
        <li><a href="itemDisplay.jsp?req1=Wide-Width Shoes&req2=1" target="display">Wide-Width Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Work Boots and shoes&req2=1" target="display">Work Boots and shoes</a></li>
    </ul>
</li>
<li><a href="#">Women</a>
    <ul>               
        <li><a href="itemDisplay.jsp?req1=Athletic Shoes&req2=1" target="display">Athletic Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Boat Shoes&req2=1" target="display">Boat shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Boots&req2=1" target="display">Boots</a></li>
        <li><a href="itemDisplay.jsp?req1=Casual Shoes&req2=1" target="display">Casual Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Clogs&req2=1" target="display">Clogs</a></li>
        <li><a href="itemDisplay.jsp?req1=Comfort&req2=1" target="display">Comfort shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Dress shoes&req2=1" target="display">Dress shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Ethnic Shoes&req2=1" target="display">Ethnic shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Flats&req2=1" target="display">Flats</a></li>
        <li><a href="itemDisplay.jsp?req1=Flip-Flops&req2=1" target="display">Flip-Flops</a></li>
        <li><a href="itemDisplay.jsp?req1=Loafers&req2=1" target="display">Loafers</a></li>
        <li><a href="itemDisplay.jsp?req1=Oxfords&req2=1" target="display">Oxfords</a></li>
        <li><a href="itemDisplay.jsp?req1=Peep toes&req2=1" target="display">Peep toes</a></li>
        <li><a href="itemDisplay.jsp?req1=Platforms&req2=1" target="display">Platforms</a></li>
        <li><a href="itemDisplay.jsp?req1=Pumps and heels&req2=1" target="display">Pumps & heels</a></li>
        <li><a href="itemDisplay.jsp?req1=Rain boots&req2=1" target="display">Rain boots</a></li>
        <li><a href="itemDisplay.jsp?req1=Sandals&req2=1" target="display">Sandals</a></li>
        <li><a href="itemDisplay.jsp?req1=Slippers&req2=1" target="display">Slippers</a></li>
        <li><a href="itemDisplay.jsp?req1=Wedges&req2=1" target="display">Wedges</a></li>
        <li><a href="itemDisplay.jsp?req1=Wide-Width shoes&req2=1" target="display">Wide-Width Shoes</a></li>
        <li><a href="itemDisplay.jsp?req1=Work boots and shoes&req2=1" target="display">Work Boots and shoes</a></li>
    </ul>
    </li>
    
<li><a href="#">Seasons</a>
    <ul>
        <li><a href="itemDisplay.jsp?req1=Summer&req2=3" target="display">Summer</a></li>
        <li><a href="itemDisplay.jsp?req1=Spring&req2=3" target="display">Spring</a></li>
        <li><a href="itemDisplay.jsp?req1=Rain&req2=3" target="display">Rain</a></li>
        <li><a href="itemDisplay.jsp?req1=Winter&req2=3" target="display">Winter</a></li>
        <li><a href="itemDisplay.jsp?req1=Autumn&req2=3" target="display">Autumn</a></li>
        <li><a href="itemDisplay.jsp?req1=Weddings&req2=3" target="display">Weddings</a></li>
        <li><a href="itemDisplay.jsp?req1=Festivals&req2=3" target="display">Festivals</a>
  
        </li>
</ul>
</li>

<li>
    <a href="#">Accessories</a>
    <ul>
        <li><a href="itemDisplay.jsp?req1=Socks&req2=3" target="display">Socks</a></li>
        <li><a href="itemDisplay.jsp?req1=Stockings&req2=3" target="display">Stockings</a></li>
        <li><a href="itemDisplay.jsp?req1=Laces/ribbons&req2=3" target="display">Laces/Ribbons</a></li>
        <li><a href="itemDisplay.jsp?req1=Polish&req2=3" target="display">Polish</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe clip&req2=3" target="display">Shoe Clip</a></li>
        <li><a href="itemDisplay.jsp?req1=Strap Accessories&req2=3" target="display">Strap Accessories</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe rings&req2=3" target="display">Shoe rings</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe chain&req2=3" target="display">Shoe chains</a></li>
        <li><a href="itemDisplay.jsp?req1=Boot Sleeves&req2=3" target="display">Boot Sleeves</a></li>
    </ul>
</li>

<li><a href="#">Brands</a></li>

<li><a href="map.jsp" target-="display">Store locator</a></li>

<li><a href="blogDisplay.jsp?req1=Celebrity&req2=1" target="display">Celebrity look book</a></li>

<li><a href="blogDisplay.jsp?req1=Blog&req2=1" target="display">Blogs</a></li>

</ul>
</td>
</tr>
        </table>
       
</body>
</html>
