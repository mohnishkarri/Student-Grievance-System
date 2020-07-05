<div class="span3">
					<div class="sidebar">


<ul class="widget widget-menu unstyled">
							<li>
								<a >
									<i class="menu-icon icon-cog"></i>
									<!-- <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i> -->
									Manage Complaint
								</a>
								<p>
								<a href="notprocess-complaint.php">
									<i class="icon-tasks"></i>
										Not Process Yet Complaint
										<?php
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status is null");
$num1 = mysqli_num_rows($rt);
{?>
		
											<b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
											<?php } ?>
										
								</a>
								<a href="inprocess-complaint.php">
									<i class="icon-tasks"></i>
										Pending Complaints
										<?php 
  $status="in Process";                   
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label orange pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>
										
								</a>
								<a href="closed-complaint.php">
									<i class="icon-tasks"></i>
										Closed Complaint
										<?php 
  $status="closed";                   
$rt = mysqli_query($con,"SELECT * FROM tblcomplaints where status='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>
										
								</a>
								</p>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>