<?php
session_start();
error_reporting(0);
include("includes/config.php");
$conf['smtp_host']='smtp.server.com';  
$conf['smtp_user']='user';
$conf['smtp_password']='password';
$conf['smtp_secure']='tls'; 
?>
<?php
$to = 'afreenp942@egmail.com';
$subject = 'SIH';
$message = 'Hi Hello'; 
$from = 'vedantds777@gmail.com';
 
// Sending email
if(mail($to, $subject, $message)){
    echo 'Your mail has been sent successfully.';
} else{
    echo 'Unable to send email. Please try again.';
}
$headers =  'MIME-Version: 1.0' . "\r\n"; 
$headers .= 'From: Your name <afreenp942@gmail.com>' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 

var_dump($header);
$result = mail("vvnllc@gmail.com"  , "sample mail" , "sample content"  ,$headers );
var_dump($result);
header( "Location: $thankyou_page" );
?>