<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'Frameworks/PHPMailer/src/Exception.php';
require 'Frameworks/PHPMailer/src/PHPMailer.php';
require 'Frameworks/PHPMailer/src/SMTP.php';

if(isset($_POST["EmailAdresi"])){
    $GelenEmailAdresi=Guvenlik($_POST["EmailAdresi"]);
}else{
    $GelenEmailAdresi="";
}

if(isset($_POST["Sifre"])){
    $GelenSifre=Guvenlik($_POST["Sifre"]);
}else{
    $GelenSifre="";
}
$MD5liSifre= md5($GelenSifre);
if(($GelenEmailAdresi!="")and($GelenSifre!="")){
    $KontrolSorgusu=$VeritabaniBaglantisi->prepare("SELECT * FROM uyeler WHERE EmailAdresi=? AND Sifre=?");
    $KontrolSorgusu->execute([$GelenEmailAdresi,$MD5liSifre]);
    $KullaniciSayisi=$KontrolSorgusu->rowCount();
    $KullaniciKaydi =$KontrolSorgusu->fetch(PDO::FETCH_ASSOC);
    
    if($KullaniciSayisi>0){
        
        
    } else {
        header("Location:index.php?SK=13");
    }
} 
else {
    header("Location:index.php?SK=14");  
    exit();
}
?>