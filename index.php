<?php 
/**************************************************************** *
 * SMSAPP engine v1.0        					  				  *
 *                                                                *
 * 						                                          *
 * monkamcabrel11@gmail.com                             		  *
 *                                                                *
 * Copyright 2023 MONKAM CABREL									  *
 ******************************************************************
 */
/**
|----------------------------------------------------------------------------------------------------------------------------
| Hide php warning message
|-----------------------------------------------------------------------------------------------------------------------------
*/
 error_reporting(0); 
/**
|----------------------------------------------------------------------------------------------------------------------------
| Iniatiate class by calling init.inc.php
|-----------------------------------------------------------------------------------------------------------------------------
*/

require_once($_SERVER['DOCUMENT_ROOT']."/core/init.inc.php");

$date           			= date("Y-m-d H:i:s");

/*
|-----------------------------------------------------------------------------------------------------------------------------
| users scripts , all php scripts into this array  is only ascessibles via secure user interface login is needed
|-----------------------------------------------------------------------------------------------------------------------------
*/
$requirelogin = array(
	'dashboard','addcategory','users','addcontact'
);
/*
|-----------------------------------------------------------------------------------------------------------------------------
| visitor scripts , no login is required
|-----------------------------------------------------------------------------------------------------------------------------
*/
$stdactions = array(
	    'footer','header','login'
	);

/*
|-----------------------------------------------------------------------------------------------------------------------------
| Not using default header and footer
|-----------------------------------------------------------------------------------------------------------------------------
*/
$freeformafiles = array(
	   
	); 
/*
|-----------------------------------------------------------------------------------------------------------------------------
| Get active page from rewrited url 
|-----------------------------------------------------------------------------------------------------------------------------
*/
$action         = $_REQUEST['a'];
/*
|-----------------------------------------------------------------------------------------------------------------------------
| Check is use is deconnected
|-----------------------------------------------------------------------------------------------------------------------------
*/
if (isset($_GET['a']) && $_GET['a']==="userlogout") {
			$account = new account($dbo);
            $account->logout(auth::getCurrentUserId(), auth::getAccessToken());
            $account->setLastActive();

            auth::unsetSession();
            auth::clearCookie();
			

           header('Location: /login/'.$TEXT['lang-code'].'/user-login');
            exit;
      
}
/*
|-----------------------------------------------------------------------------------------------------------------------------
| Check if active page require login
|-----------------------------------------------------------------------------------------------------------------------------
*/
$strict         = in_array($action, $requirelogin);
if($strict){
        if (!$auth->authorize(auth::getCurrentUserId(), auth::getAccessToken())) {

        header('Location: /login/'.$TEXT['lang-code'].'/user-login');
    }
}

 /*
|-----------------------------------------------------------------------------------------------------------------------------
| Include header.html
|-----------------------------------------------------------------------------------------------------------------------------
*/

   if(!@file_exists('scripts/templates/header.html')){
		echo "Cannot find file: <i>templates/header.html</i><br>";
	}else{
		if (!in_array($_REQUEST['a'], $freeformafiles)){
			
			
			if (!$auth->authorize(auth::getCurrentUserId(), auth::getAccessToken())) {

				include('scripts/includes/a_header_login.php');
			}else{
				include('scripts/includes/a_header.php');
			}
		}
	}
/*
|-----------------------------------------------------------------------------------------------------------------------------
| Include breadcrumb-navigation
|-----------------------------------------------------------------------------------------------------------------------------
*/

   if(file_exists('scripts/templates/breadcrumb-navigation.html') && ($action != "contact" && $action != "about" && $action != "faq" && $action != "resetpassword" && !empty($action) && $action != "login3" && $action != "facebooksignup")){
		include('scripts/templates/breadcrumb-navigation.html');
	}
  /*
|-----------------------------------------------------------------------------------------------------------------------------
| Include page body  this can be from templates or include folder
|-----------------------------------------------------------------------------------------------------------------------------
*/   
    
if ($_REQUEST['read']){
		if(!@include('scripts/templates/'.$_REQUEST['read'])){
			//echo "Cannot find file: <i>templates/",$_REQUEST['read'],"</i><br>";
            include('scripts/templates/error-page.html');
		}
	}else{
		// Include action modules

		if($action){
			if (in_array($action, $requirelogin) || in_array($action, $stdactions) ){
			include('scripts/templates/header_nav.html');
			 if(!@include("scripts/includes/a_$action.php")){
				include("scripts/includes/a_errorpage.php");
			}else{
				 include("includes/a_$action.php");
                }
			}elseif(!@include('includes/'.$action)){
				include("scripts/includes/a_errorpage.php");
			}
		}

		if(!$action){
		    include('scripts/templates/default.html');  
  		
		}
	}


 /*
|-----------------------------------------------------------------------------------------------------------------------------
| Include Footer page
|-----------------------------------------------------------------------------------------------------------------------------
*/ 
	   if(!@file_exists('scripts/templates/footer.html')){
		echo "Cannot find file: <i>templates/footer.html</i><br>";
	}else{
		if (!in_array($_REQUEST['a'], $freeformafiles)){
			
			if (!$auth->authorize(auth::getCurrentUserId(), auth::getAccessToken())) {

				include('scripts/includes/a_footer_login.php');
			}else{
				include('scripts/includes/a_footer.php');
			}
			
		}
		
	}
    
?>