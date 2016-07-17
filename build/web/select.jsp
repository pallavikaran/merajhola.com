<%-- 
    Document   : select
    Created on : Mar 3, 2013, 7:54:12 PM
    Author     : Pallavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select</title>
        <script type="text/javascript">
$(function(){
    $('#coolMenu').find('> li').hover(function(){
        $(this).find('ul')
        .removeClass('noJS')
        .stop(true, true).slideToggle('fast');
    });
});
</script>
        <link rel="stylesheet" type="text/css" href="pubstyle.css" >
    </head>
    <body>

<div class="container">
<ul id="coolMenu">
<li><a href="#">Current Trend</a>
<ul>
        <li><a href="#">Men</a></li>
        <li><a href="#">Woman</a></li>
        
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
        <li><a href="#">Athletic Shoes</a></li>
        <li><a href="#">Boat shoes</a></li>
        <li><a href="#">Boots</a></li>
        <li><a href="#">Casual Shoes</a></li>
        <li><a href="#">Comfort shoes</a></li>
        <li><a href="#">Dress shoes</a></li>
        <li><a href="#">Ethnic shoes</a></li>
        <li><a href="#">Loafers</a></li>
        <li><a href="#">Oxfords</a></li>
        <li><a href="#">Sandals</a></li>
        <li><a href="#">Slippers</a></li>
        <li><a href="#">Wide-Width Shoes</a></li>
        <li><a href="#">Work Boots and shoes</a></li>
        <li><a href="#">All men shoes</a></li>
    </ul>
</li>
<li><a href="#">Women</a>
    <ul>               
        <li><a href="#">Athletic Shoes</a></li>
        <li><a href="#">Boat shoes</a></li>
        <li><a href="#">Boots</a></li>
        <li><a href="#">Casual Shoes</a></li>
        <li><a href="#">Clogs</a></li>
        <li><a href="#">Comfort shoes</a></li>
        <li><a href="#">Dress shoes</a></li>
        <li><a href="#">Ethnic shoes</a></li>
        <li><a href="#">Flats</a></li>
        <li><a href="#">Flip-Flops</a></li>
        <li><a href="#">Loafers</a></li>
        <li><a href="#">Oxfords</a></li>
        <li><a href="#">Peep toes</a></li>
        <li><a href="#">Platforms</a></li>
        <li><a href="#">Pumps & heels</a></li>
        <li><a href="#">Rain boots</a></li>
        <li><a href="#">Sandals</a></li>
        <li><a href="#">Slippers</a></li>
        <li><a href="#">Wedges</a></li>
        <li><a href="#">Wide-Width Shoes</a></li>
        <li><a href="#">Work Boots and shoes</a></li>
        <li><a href="#">All women shoes</a></li>
    </ul>
    </li>
    
<li><a href="#">Seasons</a>
    <ul>
        <li><a href="#">Summer</a></li>
        <li><a href="#">Spring</a></li>
        <li><a href="#">Rain</a></li>
        <li><a href="#">Winter</a></li>
        <li><a href="#">Autumn</a></li>
        <li><a href="#">Weddings</a></li>
        <li><a href="#">Festivals</a>
            <ul>
                <li><a href="#">Holi</a></li>
                <li><a href="#">Diwali</a></li>
                <li><a href="#">Dusherra</a></li>
                <li><a href="#">Christmas</a></li>
                <li><a href="#">Halloween</a></li>
                <li><a href="#">Patriotic</a></li>
            </ul>  
        </li>
</ul>
</li>

<li>
    <a href="#">Accessories</a>
    <ul>
        <li><a href="#">Socks</a></li>
        <li><a href="#">Stockings</a></li>
        <li><a href="#">Laces/Ribbons</a></li>
        <li><a href="#">Polish</a></li>
        <li><a href="#">Shoe Clip</a></li>
        <li><a href="#">Strap Accessories</a></li>
        <li><a href="#">Shoe rings</a></li>
        <li><a href="#">Shoe chains</a></li>
        <li><a href="#">Boot Sleeves</a></li>
    </ul>
</li>

<li><a href="#">Brands</a></li>

<li><a href="#">Store locator</a></li>

<li><a href="#">Sale</a>
<ul>
        <li><a href="#">Men</a></li>
        <li><a href="#">Woman</a></li>
        
    </ul>
</li>

<li><a href="#">Celebrity look book</a></li>

<li><a href="#">Blogs</a></li>

</body>
</html>
