<!-- 
    // The PHP mysql connect function is used to connect to a MySQL database server. 
    $db_handle = mysqli_connect($db_server_name, $db_user_name, $db_password);
    

    // Returns the last error description for the most recent function call, if any.
    mysqli_error
-->


<?php

// This function confirm the query connect to  the DATABASE ~~~~~~~~~~~~~~~~

function confirmQuery($result){

    global $connection;

    if (!$result) {
            die("QUERY FAILED" . mysqli_error($connection));
        }
}

// Insert categories ~~~~~~~~~~

function insert_categories(){

    global $connection;

if( isset($_POST['submit'] )){
        $cat_title = $_POST['cat_title'];

		if($cat_title == "" || empty($cat_title)){
            echo "This field should not be empty.";
        }else{
            $query = "INSERT INTO categories(cat_title)";
            $query .= "VALUE ('{$cat_title}') ";

            $create_category_query = mysqli_query($connection, $query);

            if(!$create_category_query){
                die('QUERY FAILED' . mysqli_error($connection));
            }
        }
	}

}



// Find, show and delete all categories ~~~~~~~~~~~~~~~~~~~~

function findAllCategories(){
    global $connection;

    $query = "SELECT * FROM categories "; //LIMIT 3";
    $select_categories = mysqli_query($connection, $query);  

    while($row = mysqli_fetch_assoc($select_categories)){
    $cat_id = $row['cat_id'];
    $cat_title = $row['cat_title'];

    echo "<tr>";
    echo "<td>{$cat_id}</td>";
    echo "<td>{$cat_title}</td>";
    echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>"; // Delete cell
    echo "<td><a href='categories.php?edit={$cat_id}'>Update</a></td>"; // Upadate cell
    echo "</tr>";
    }
}

//DELETE query ~~~~~~~~~~~~~~~~~~~~~
function deleteCategories(){
    global $connection;

    if(isset($_GET['delete'])){
        $the_cat_id = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id = {$the_cat_id} ";
        $delete_query = mysqli_query($connection, $query);
        header("Location: categories.php");

    }


}