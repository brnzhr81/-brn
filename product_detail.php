<?php
include ("includes/header.php");



$link = mysqli_connect("localhost", "root", "", "shop_db");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

$pro_code=0;
if (isset($_GET['id']))
	 $pro_code=$_GET['id'];

$query = "SELECT * FROM products WHERE pro_code='$pro_code'";            

$result = mysqli_query($link, $query);            //  اجراي پرس و جو


?>

 <table style="width: 100%;" border="1px"  >
  <tr>
  
  <?php


if ($row = mysqli_fetch_array($result)) {
  
?> 

  
	<td style="border-style:solid 3px grey;border-radus:15 px;vertical-align: center;" >

       <h4 style="color: brown;"><?php echo ($row['pro_name']) ?></h4>
 
       <img style="margin-right:10%" width="80%"  src="images/products/<?php echo ($row['pro_image']) ?>"  />
     
       <br/>
<div style="display:block;margin-right:10%;padding:7px">

    قيمت  : <?php echo ($row['pro_price']) ?> &nbsp; ريال
    <br/>

    تعداد موجودي  : <span style="color:red;"><?php echo ($row['pro_qty']) ?></span>
    <br/>

     توضيحات  : <span style="color:green;"> <?php echo ($row['pro_detail']) ?> </span>

     <br/><br/>
    <b>
</div>
    <div style="display:block;text-align:center">
     <button style='background-color:success;border:2px solid grey;width:40%;height:50px'>
   
        <a href="order.php?id=<?php echo ($row['pro_code']) ?>" style="text-decoration: none;">سفارش و خرید پستی</a></b>
</button>
</div>
        <br/><br/>
           
    </td>  
    
<?php
   
	  
} // if

?>  
</tr>
</table>

<?php
include ("includes/footer.php");
?>
   
