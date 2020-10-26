 <?php include "includes/admin_header.php" ?>


    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php" ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to Admin
                            <small>Author name</small>
                        </h1>

                        <div class="col-xs-6">

       <!-- Insert categories ~~~~~~~~~~ -->
            <?php insert_categories() ;?>

                <!-- Add categorie form -->
                        <form action ="" method = "post">
                            <div class="form-group">
                                <input type="text" name="cat_title" class="form-control"></input>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Add Category" name="submit" class="btn btn-primary"></input>
                            </div> 
                        </form>

           <!-- UPDATE CATEGORIES FROM update_categories.php -->
                <?php
                if(isset($_GET['edit'])){
                    $cat_id = $_GET['edit'];                          
                    include "includes/update_categories.php";
                }

                ?>


                        </div>

                        <div class="col-xs-6">
                        	<table class="table table-bordered table-hover">
                        		<thead>
                        			<tr>
                        				<th>ID</th>
                        				<th>Caterory Title</th>
                        			</tr>
                        		</thead>
                        		<tbody>
<!-- Find, show and delete all categories ~~~~~~~~~~~~~~~~~~~~ -->
    <?php findAllCategories(); ?>

<!-- DELETE query ~~~~~~~~~~~~~~~~~~~~~ -->
    <?php deleteCategories(); ?>
      

                        		</tbody>
                        	</table>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

<?php include "includes/admin_footer.php" ?>