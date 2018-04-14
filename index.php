<?php
    $msg="";
    if(isset($_POST['upload'])){
        $target="images/".basename($_FILES['image']['name']);
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        
        // Create connection
        $con = new mysqli($servername, $username, $password, "pictures");
      
      
        // Check connection
        if ($con->connect_error) {
            die("Connection failed: " . $con->connect_error);
        } 
       //here image include pictures and videos
       $image=$_FILES['image']['name'];
       $ext = pathinfo($image, PATHINFO_EXTENSION);
       $allowed = array('jpg','png','gif','mp4','avi','mov','mpg','flv');
       $video=array('mp4','avi','mov','mpg','flv');
       $picture=array('jpg','png','gif');
       $text=$_POST['text'];
       if($image==null&&$text==null){
           echo "You should post images or write text";
       }
       if( ! in_array( $ext, $allowed ) ) {echo 'the file format is not allowed';}
       
       $sql="INSERT INTO images(image,text) VALUES ('$image', '$text')";
       mysqli_query($con,$sql);
       if(move_uploaded_file($_FILES['image']['tmp_name'],$target)){
           $msg="Image uploaded successfully";

       }else{
           $msg="There was a problem uploading image";
       }

    }

?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Images Uploaded</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
        <div id="content">
             <form method="POST" 
                  action="index.php"
                  enctype="multipart/form-data">
                <div class="form-group"
                <input type="hidden" name="size" value="1000000" class="form-control">
                </div>
                <div class="form-group">
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="form-group">
                    <textarea name="text" cols="40" placeholder="Say something" class="form-control"> 
                    </textarea>
                </div>
                <div>
                    <input type="submit" name="upload" value="Upload Image" class="btn btn-info">
                </div>
            </form>
<?php
            
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        // Create connection
        $con = new mysqli($servername, $username, $password, "pictures");
      
      $sql="SELECT * FROM images";
      $result=mysqli_query($con, $sql);
      
      while($row=mysqli_fetch_array($result)){
          echo sizeof($row);
           echo "Got here.";
           $ext = pathinfo($row['image'], PATHINFO_EXTENSION);
           $video=array('mp4','avi','mov','mpg','flv');
           $picture=array('jpg','png','gif');
          if( in_array( $ext, $picture) ){
              
           echo"<div id='image_div' >";
          
           echo"<img  src='images/".$row['image']."' height='250' width='350'>";
          
           echo"<p>".$row['text']."</p>";
          echo "</div>";
          }
          else{
              
             
          echo"<video src='images/".$row['image']."' width='320' height='240' controls></video>";
  
          echo"<p>".$row['text']."</p>";
         
          }       
   
      }
      
//      $sql="SELECT * FROM images WHERE id='22'";
//      $result=mysqli_query($con, $sql);
//      while($row=mysqli_fetch_array($result)){
//          
//          echo"<video src='images/".$row['image']."' width='320' height='240' autoplay>"."</video>";
//  
//          echo"<p>".$row['text']."</p>";
//          
//      }
?>
           
        </div>
        </div>
    </body>
</html>
