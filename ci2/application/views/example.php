<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- css -->
<?php  
$bitcom_base_url = str_replace("ci2/", "", base_url()); 
$bitcom_doc_location =str_replace("ci2/index.php","",$_SERVER['SCRIPT_FILENAME']);
?>

<?php 
$bitcom_css = $bitcom_base_url."asset/css/screen.css";
foreach($tablecrud->css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<link type="text/css" rel="stylesheet" href="<?php echo $bitcom_css; ?>" />


<!-- js -->
<?php foreach($tablecrud->js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<?php
error_reporting(0);
echo $customjs;
error_reporting(E_ALL);
?>
</head>
<body>
<div id="headnya"></div>
<br /><br />
    <div style="width: 80%;margin-left: 10%;margin-right: 10%;">
		<?php echo $tablecrud->output; ?>
    </div>
<div id="footnya"></div>
</body>
<script>
$(document).ready(function(){
   $.ajax({
      method: "GET",
      url: "<?php echo $bitcom_base_url ?>aksesroot/top_no_html",
    })
    .done(function( htmlhead ) {
        //alert( "Data Saved: " );
        $("#headnya").replaceWith(htmlhead);
    }).fail(function() {
        alert( "error" );
    });
    
    $.ajax({
      method: "GET",
      url: "<?php echo $bitcom_base_url ?>aksesroot/bottom_no_html",
    })
    .done(function( htmlfoot ) {
        //alert( "Data Saved: " );
        $("#footnya").replaceWith(htmlfoot);
    }).fail(function() {
        alert( "error" );
    });
});
</script>
</html>
