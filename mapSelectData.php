<?php
require("config.php");
if(empty($_SESSION['user'])) 
{
    header("Location: index.php");
    die("Redirecting to index.php"); 
}
$totalMaps = $db->query('SELECT COUNT(id) from maps')->fetchColumn(); 
$ipp = 6; //items per page
$totalPages = ceil($totalMaps/$ipp);

if($_POST['param']=="init"){
	$stmt = $db->prepare('SELECT * FROM maps LIMIT 0, :ipp');
	$stmt->bindValue(':ipp', (int)trim($ipp), PDO::PARAM_INT); 
	$stmt->execute();
	foreach ($stmt as $row) {
		$data['id'][] = $row['id'];	
		$data['name'][] = $row['name'];
		$data['mapProperties'][] = $row['mapProperties'];	
	}
	$data['totalPages'] = $totalPages;
	echo JSON_encode($data);
}

if($_POST['param']=="page"){
	$stmt = $db->prepare('SELECT * FROM maps LIMIT :start, :end');
	$stmt->bindValue(':start', (int)trim(($_POST['page']-1)*$ipp), PDO::PARAM_INT); 
	$stmt->bindValue(':end', (int)trim(($_POST['page']-1)*$ipp+$ipp), PDO::PARAM_INT); 
	$stmt->execute();
	foreach ($stmt as $row) {
		$data['id'][] = $row['id'];	
		$data['name'][] = $row['name'];
		$data['mapProperties'][] = $row['mapProperties'];		
	}
	echo JSON_encode($data);
}


?>