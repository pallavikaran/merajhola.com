<%-- 
    Document   : select1
    Created on : Mar 5, 2013, 8:44:46 AM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 
       <link rel="stylesheet" type="text/css" href="1.css" > 
    </head>
    <body>
        <img src="images/merajhola.jpg" >
<nav align="center">

<ul>
<li><a href="#">Current Trend</a>
<ul>
        <li><a href="itemDisplay.jsp?req1=Male&req2=2" target="display">Men</a></li>
        <li><a href="itemDisplay.jsp?req1=Female&req2=2" target="display">Women</a></li>
        
    </ul>
</li>

<li><a href="#">Shoe Guide</a>
<ul>
        <li><a href="#">Boot forms</a></li>
        <li><a href="#">Boot styles</a></li>
        <li><a href="#">Boots Equestrian</a></li>
        <li><a href="#">Boots for men</a></li>
        <li><a href="#">Dress shoes for men</a></li>
        <li><a href="#">Leathers for men</a></li>
        <li><a href="#">Loafers for men</a></li>
        <li><a href="#">Dress Shoes for women</a></li>
        <li><a href="#">Flat shoes for women</a></li>
        <li><a href="#">Flip-Flops for women</a></li>
        <li><a href="#">Heel sizes for women</a></li>
        <li><a href="#">Heel types for women</a></li>
        <li><a href="#">Mules for women</a></li>
        <li><a href="#">Shoe soles</a></li>
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
        <li><a href="itemDisplay.jsp?req1=Autumn&req2=3">Autumn</a></li>
        <li><a href="itemDisplay.jsp?req1=Weddings&req2=3">Weddings</a></li>
        <li><a href="#">Festivals</a>
            <ul>
                <li><a href="itemDisplay.jsp?req1=Holi&req2=3">Holi</a></li>
                <li><a href="itemDisplay.jsp?req1=Diwali&req2=3">Diwali</a></li>
                <li><a href="itemDisplay.jsp?req1=Dusherra&req2=3">Dusherra</a></li>
                <li><a href="itemDisplay.jsp?req1=Christmas&req2=3">Christmas</a></li>
                <li><a href="itemDisplay.jsp?req1=Halloween&req2=3">Halloween</a></li>
                <li><a href="itemDisplay.jsp?req1=Patriotic&req2=3">Patriotic</a></li>
            </ul>  
        </li>
</ul>
</li>

<li>
    <a href="#">Accessories</a>
    <ul>
        <li><a href="itemDisplay.jsp?req1=Socks&req2=3">Socks</a></li>
        <li><a href="itemDisplay.jsp?req1=Stockings&req2=3">Stockings</a></li>
        <li><a href="itemDisplay.jsp?req1=Laces/ribbons&req2=3">Laces/Ribbons</a></li>
        <li><a href="itemDisplay.jsp?req1=Polish&req2=3">Polish</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe clip&req2=3">Shoe Clip</a></li>
        <li><a href="itemDisplay.jsp?req1=Strap Accessories&req2=3">Strap Accessories</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe rings&req2=3">Shoe rings</a></li>
        <li><a href="itemDisplay.jsp?req1=Shoe chain&req2=3">Shoe chains</a></li>
        <li><a href="itemDisplay.jsp?req1=Boot Sleeves&req2=3">Boot Sleeves</a></li>
    </ul>
</li>

<li><a href="#">Brands</a></li>

<li><a href="#">Store locator</a></li>

<li><a href="blogDisplay.jsp?req1=Celebrity&req2=1">Celebrity look book</a></li>

<li><a href="blogDisplay.jsp?req1=Blog&req2=1">Blogs</a></li>

</ul>
</body>
</html>
