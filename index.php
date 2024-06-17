<?php
include ("includes/header.php");



$link = mysqli_connect("localhost", "root", "", "shop_db");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

$query = "SELECT * FROM products ";             // پرس و جوي نمايش همه محصولات فروشگاه

$result = mysqli_query($link, $query);            //  اجراي پرس و جو


?>

 <table style="width: 100% ;border:1px;"  >
  <tr>
  
  <?php

$counter = 0;
while ($row = mysqli_fetch_array($result)) {
    $counter++;
?> 

  
	<td style="vertical-align: top;width: 33%;" >

       <h4 style="color: brown;text-align:center;padding:7px"><?php echo ($row['pro_name']) ?></h4>
       <hr style="color:grey;display:block">
 <a href="product_detail.php?id=<?php echo ($row['pro_code']) ?>" style="text-decoration: none;">
       <img src="images/products/<?php echo ($row['pro_image']) ?>" width="250px" height="150px" />
  </a>    
       <br/>

    قيمت  : <?php echo ($row['pro_price']) ?> &nbsp; ريال
    <br/>

    تعداد موجودي  : <span style="color:red;"><?php echo ($row['pro_qty']) ?></span>
    <br/>

     توضيحات  : <span style="color:green;"> <?php echo (substr($row['pro_detail'],0,240)) ?> ...</span>

     <br/><br/>
     <div style="display:block;text-align:center">
     <button style='background-color:success;border:2px solid grey;width:80%;height:50px'>
   <a href="product_detail.php?id=<?php echo ($row['pro_code']) ?>" style="text-decoration: none;">توضيحات تكميلي و خريد</a></b>
</button>
</div>
    <br/><br/>
           
    </td>  
    
<?php
    if ($counter % 3 == 0)
        echo ("</tr><tr>");
} // while

if ($counter % 3 != 0)
    echo ("</tr>");

?>  
</table>

<?php
include ("includes/footer.php");
?>
   
