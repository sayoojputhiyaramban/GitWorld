<?php
//for more info fb.com/ijsamp
?><div class="col-sm-3">
<center><b><font color="#ccc"><font size="15"><b><?php
$tz = date("Manila");
$est  = 3600 * -5;  // -0500 gmt
$cst  = 3600 * -6;
$mst  = 3600 * -7;
$pst  = 3600 * -8;
$hast = 3600 * -10;
echo date("h:i A", strtotime("now +" . ($pst - $tz) . " seconds"));
?></b></font> </center> 
					<ul class="nav nav-pills nav-stacked well">
						<!--li>
							<a href="index.php?getACPage==main">Home</a>
						</li-->
                        
             
                        <?php if ($_SESSION['shopid'] != "") {?>

						<li  <?php if($_SESSION['curpage']=="inventory"){echo "class = 'active'";} ?> >
							<a href="acInventory.php?getACPage=mod_query">Inventory</a>
						</li>
                        <li  <?php if($_SESSION['curpage']=="inventory_list"){echo "class = 'active'";} ?> >
							<a href="acInventory_rec.php?getACPage=mod_recquery">View Inventory</a>
						</li>
								<li <?php if($_SESSION['curpage']=="shop"){echo "class = 'active'";} ?> >
								<a href="acProduct_shop.php?getACPage=shop">Shops</a>
								</li>
                        <li  <?php if($_SESSION['curpage']=="stock"){echo "class = 'active'";} ?> >
							<a href="acProduct.php?getACPage=prod">View Shops</a>
						</li>

								        <li  <?php if($_SESSION['curpage']=="stock_shopwise"){echo "class = 'active'";} ?> >
										<a href="acProduct_shop.php?getACPage=shop_wise">Product Shop</a>
										</li>
						
                        <li  <?php if($_SESSION['curpage']=="stock_list"){echo "class = 'active'";} ?> >
							<a href="acProduct_rec.php?getACPage=prodrec">Product Record</a>
						</li>

						<li  <?php if($_SESSION['curpage']=="transaction"){echo "class = 'active'";} ?> >
							<a href="transaction.php">Daily Transactions</a>
						</li>
						<li  <?php if($_SESSION['curpage']=="transaction_hist"){echo "class = 'active'";} ?> >
							<a href="acTransaction_record.php?getACPage=transhop">Transactions Shop</a>
						</li>

                        <li <?php if($_SESSION['curpage']=="shop_list"){echo "class = 'active'";} ?> >
							<a href="acXhop_rec.php?getACPage=shoprec">Shops Record</a>
						</li>
						</br>
                        <li  <?php if($_SESSION['curpage']=="import_inv"){echo "class = 'active'";} ?> >
							<a href="import_inv.php?getACPage=imp_inv">Import Inventory</a>
						</li>
                        <li  <?php if($_SESSION['curpage']=="import_trans"){echo "class = 'active'";} ?> >
							<a href="import_trans.php?getACPage=imp_tran">Import Transactions</a>
						</li>
                         <li  <?php if($_SESSION['curpage']=="export"){echo "class = 'active'";} ?> >
							<a href="export.php?getACPage=expo_now">Export Now</a>
						</li>
                         <li  <?php if($_SESSION['curpage']=="editprofile"){echo "class = 'active'";} ?> >
							<a href="myInformation_edition.php?getACPage=myprofile">Update Profile</a>
						</li>
                         <li  <?php if($_SESSION['curpage']=="logout"){echo "class = 'active'";} ?> >
							<a href="logout.php?getACPage=logged_successful">Sign Out</a>
						</li>
                        
                        <?php  } else { ?>
                        <li  <?php if($_SESSION['curpage']=="login"){echo "class = 'active'";} ?> >
							<a href="login.php?getACPage=loginAuth">Sign In</a>
						</li>
                        <li  <?php if($_SESSION['curpage']=="register"){echo "class = 'active'";} ?> >
							<a href="acCreate.php?getACPage=regAcc">Create Account</a>
						</li>
                        <?php } ?>
					</ul>
				</div>