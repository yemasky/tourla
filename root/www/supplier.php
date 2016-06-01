<?php
/*
 * auther: cooc
 * email:yemasky@msn.com
 */
try {
	require_once ("config.php");

	$model = '\supplier\IndexAction';
	if(isset($_REQUEST['model']))
		$model = '\supplier\\' . ucwords($_REQUEST['model']) . 'Action';
	$action = NULL;
	if(isset($_REQUEST['action']))
		$action = $_REQUEST['action'];
} catch(Exception $e) {
	echo ('error: ' . $e->getMessage() . "<br>");
	echo (str_replace("\n","\n<br>",$e->getTraceAsString()));
}

try {
	$objAction = new $model();
	$objAction->execute($action);//
} catch(Exception $e) {
	logError($e->getMessage(),__MODEL_EXCEPTION);
	logError($e->getTraceAsString(),__MODEL_EMPTY);
	if(__Debug) {
		echo ('error: ' . $e->getMessage() . "<br>");
		echo (str_replace("\n","\n<br>",$e->getTraceAsString()));
	} else {
		$objAction = new NotFound();
		$objAction->execute();
	}
}
?>