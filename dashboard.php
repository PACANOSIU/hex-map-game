<?php
    require("config.php");
    if(empty($_SESSION['user'])) 
    {
        header("Location: index.php");
        die("Redirecting to index.php"); 
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Hex</title>
	<script src='http://code.jquery.com/jquery-1.10.2.min.js' language='Javascript' type='text/javascript'></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

    <script type="text/javascript" src="js/dashboard.js"></script>
	<script type="text/javascript" src="js/toggles.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/toggles.css" rel="stylesheet">


</head>
<body>
	<div class="toggle nodrag">
		<div class="toggle-slide">
			<div style="width: 118px; margin-left: -48px;" class="toggle-inner">
				<div style="height: 22px; width: 59px; text-indent: -11px; line-height: 22px;" class="toggle-on">ON</div>
				<div style="height: 22px; width: 22px; margin-left: -11px;" class="toggle-blob"></div>
				<div style="height: 22px; width: 59px; margin-left: -11px; text-indent: 11px; line-height: 22px;" class="toggle-off active">OFF</div>
			</div>
		</div>
	</div>
<div class="container-fluid">
	<p>Welcome <?php echo htmlentities($_SESSION['user']['username'], ENT_QUOTES, 'UTF-8'); ?>!</p>
	
	<div class="row-fluid">
		
		<div class="col-md-4">
			<h3>Your Games</h3>    
			<table class="table table-striped" id="game_table" style="width: auto;">
			</table>

			<input type="hidden" id="username" value="<?php echo $_SESSION['user']['email']; ?>">
		</div>
		<div class="col-md-4">
			<h3>Public Games to Join</h3>
			<table class="table table-striped" id="publicGames" style="width: auto;">
			</table>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="col-md-4">
			<a href="startNewGame.php" class="btn btn-success" role="button">Start New Game</a>
		</div>
	</div>
</div>

<script>
$('.toggle-slide').toggles({click:false});
</script>
</body>
</html>