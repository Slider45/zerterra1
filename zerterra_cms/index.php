<?php
session_start();
if(!isset($_SESSION["admin"]))
{
 header("location:../Log-in.php");
}
include '../PagesFunction/connection.php';
// include 'connection.php';


?>


<!DOCTYPE html>
<html>
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link rel="icon" href="../images/plainlogo.png" type="image/x-icon" />
<link rel="stylesheet" href="sass/sass.css">

<body>

  <?php
  include 'Buttons/adminSearch.php';
  include 'Pages/indexViewPage.php';
  include 'admin-header.php';
  
  ?>


  <nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="index.php">
        <img src="images/logowhite.png" width="112" height="28" class="img-logo">
      </a>
    </div>


    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">

          <a class="button btn-user">
           <?= $_SESSION['admin']?>&nbsp&nbsp<img src="images/userIcon.png" id="userIcon"></i>

         </a>
         <!--<a href="../zerterraph_user/logout.php" class="button btn-logout">-->
         <!--  Logout &nbsp<i class="fas fa-sign-out-alt"></i>-->
         <!--</a>-->
       </div>
     </div>
   </div>
 </div>
</nav>

<div>
  <div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="width:200px;" id="mySidebar">
    <button class="w3-bar-item w3-button w3-large w3-hide-large" onclick="w3_close()" id="close">&times;</button>
    
  <!--<button  class="button" id="adminIcon" data-tooltip="User" ><img src="images/userIcon.png" id="userIcon"></button> -->

    <a href="index.php" class="w3-bar-item w3-button" id="dashboard"><i class="fas fa-th-large"></i> &nbsp Dashboard</a>
    <a href="admin.php" class="w3-bar-item w3-button" id="item-hover"> <i class="fas fa-user-shield"></i> &nbsp Admin</a>
    <a href="users.php" class="w3-bar-item w3-button" id="item-hover"><i class="fas fa-user"></i> &nbsp Users</a>
    <a class="w3-bar-item w3-button w3-dropdown-hover modal-button" id="sendmodal" data-target="#ordersModal" aria-haspopup="true"><i class="fas fa-cubes"></i> &nbsp Orders</a>
    <a href="request.php" class="w3-bar-item w3-button" id="item-hover"><i class="fas fa-envelope-open-text"></i> &nbsp Request</a>
    <a href="sales.php" class="w3-bar-item w3-button" id="item-hover"><i class="fas fa-hand-holding-usd"></i> &nbsp Sales</a>
    <a href="actionLog.php" class="w3-bar-item w3-button" id="item-hover"><i class="fas fa-clipboard-list"></i> &nbsp Action Log</a>
    <button onclick="document.getElementById('id01').style.display='block'" href="consolidate.php" class="w3-bar-item w3-button" id="item-hover"  ><i class="fas fa-print"></i> &nbsp Consolidate</button>
     <a href="../zerterraph_user/logout.php" class="w3-bar-item w3-button" id="item-hover"><i class="fas fa-sign-out-alt"></i>&nbsp Logout</a> 
       
        
  </div>

  <?php
  $sql = "SELECT id FROM tblusers WHERE is_active = '1' AND is_confirmed = '1'";
  $result=mysqli_query($con,$sql);
  $regUserCount=mysqli_num_rows($result);

  $sql = "SELECT id FROM pending_order_list WHERE is_approved = '0'";
  $result=mysqli_query($con,$sql);
  $penUserCount=mysqli_num_rows($result);

  $sql = "SELECT id FROM admin_list WHERE is_active = '1'";
  $result=mysqli_query($con,$sql);
  $adminUserCount=mysqli_num_rows($result);

  $sql = "SELECT id FROM request_repair_list WHERE is_approved = '0'";
  $result=mysqli_query($con,$sql);
  $requestCount=mysqli_num_rows($result);

  $sql01 = 'SELECT sum(Amount) as price FROM tblsales_list';
  $result01 = mysqli_query($con, $sql01);
  $total=0;
  if (mysqli_num_rows($result01) > 0) 
  {
    while($row = mysqli_fetch_assoc($result01)) 
    {
      $total = $total + $row['price'];
    }

  }
  
  ?>


  <div class="w3-main" style="margin-left:200px">
    <div class="w3-teal">
      <button class="w3-button w3-teal w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
    </div>

    <div class="w3-container">
     <h1 class="button-category">ADMIN DASHBOARD</h1>
     <div class="columns is-multiline is-mobile">
      <div class="column is-half">
        <a href="sales.php">
          <div class="box" style="background:url(images/sales_bg.png); background-repeat: no-repeat; background-size: cover;">
            <div class="columns">
              <div class="column">
                <p>SALES</P>
                  <span id="view-sales">Click here to view details</span>
                </div>
                <div class="column" style="text-align: center;">
                  <span class="is-right is-size-3"><?php echo "P ",number_format($total),"";?></span>
                </div>
              </div>
            </div>
          </a>

        </div>
        <div class="column is-half">
          <a href="admin.php">
            <div class="box" style="background:url(images/yellow_bg.png); background-repeat: no-repeat; background-size: cover;">
              <div class="columns">
                <div class="column">
                  <p>ADMIN</p>
                  <span id="view-sales">Click here to view details</span>
                </div>
                <div class="column" style="text-align: center;">
                  <span class="is-right is-size-3"><?php echo $adminUserCount;?></span>
                </div>
              </div>
            </div>
          </a>
        </div>


        <div class="column is-half">
          <a href="users.php">
            <div class="box" style="background:url(images/blue_bg.png); background-repeat: no-repeat; background-size: cover;">
              <div class="columns">
                <div class="column">
                  <p>USERS</p>
                  <span id="view-sales">Click here to view details</span>
                </div>
                <div class="column" style="text-align: center;">
                  <span class="is-right is-size-3"><?php echo $regUserCount;?></span>
                </div>
              </div>
            </div>
          </a>
        </div>


        <div class="column is-half">
          <a href="request.php">
            <div class="box" style="background:url(images/request_bg.png); background-repeat: no-repeat; background-size: cover;">
              <div class="columns">
                <div class="column">
                  <p>REQUEST LIST</p>
                  <span id="view-sales">Click here to view details</span>
                </div>
                <div class="column" style="text-align: center;">
                  <span class="is-right is-size-3"><?php echo $requestCount;?></span>
                </div>
              </div>
            </div>
          </a>
        </div>

        <div class="column is-7">
          <div class="card">
            <header class="card-header">
              <p class="card-header-title">
               RECENTLY ACTIVITIES
             </p>
           </header>

           <?php 

           $sql = "SELECT * FROM tblactionlog ORDER BY id DESC LIMIT $offset, $no_of_records_per_page";
           $res_data = $con->query($sql);
           while($row = mysqli_fetch_array($res_data)){
            $id = $row['id'];
            $author = $row['Author'];
            $action = $row['Action'];
            $dateAction = $row['DateAction'];
            ?>
            


            <table class="table">
              <tr>
                <td id="">
                  <p><?php echo $action ?></p>
                  <span id="userinfo">• <?php echo $author.' | '. $dateAction ?></span>
                </td>
              </tr>
            </table>

            <?php 
          } 
          
          ?>     


          <footer class="card-footer">
            <div class="card-footer-item">
              <nav class="pagination is-small" role="navigation" aria-label="pagination">
                <a href="<?php if($page <= 1){ echo '#'; } else { echo "?page=".($page - 1); } ?>" class="pagination-previous" ><i class="fas fa-angle-double-left"></i>&nbsp PREV</a> 
                <a href="<?php if($page >= $total_pages){ echo '#'; } else { echo "?page=".($page + 1); } ?>" class="pagination-next">NEXT&nbsp<i class="fas fa-angle-double-right"></i></a>
                
              </nav>
            </div>
          </footer>
        </div>
      </div>
      <div class="column is-5">
        <div class="card">
          <header class="card-header">
            <p class="card-header-title">
              PENDING ORDERS
            </p>
          </header>
          <div class="columns">
            <div class="column is-size-3" style="text-align: center; margin-top: 25px;">
              <p>TOTAL COUNT:</p>
            </div>
            <div class="column is-size-3" style="text-align: center; margin-top: 25px;">
              <span class="is-right"><?php echo $penUserCount;?></span>
            </div>
          </div>
      <!-- <div class="card-content">
        <div class="content">
          <p>TOTAL PENDING : </p>
          <span class="is-right"><?php echo $adminUserCount;?></span>
        </div>
      </div> -->
    </div>
  </div>
</div>
</div>

</div>

</div>


<!-- modal oders -->
<?php
include 'ordersModal.php';
?>

<!-- consolidate -->
<?php
include 'consolidate.php';
?>

</div>



</body>
</html>
