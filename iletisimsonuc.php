<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'Frameworks/PHPMailer/src/Exception.php';
require 'Frameworks/PHPMailer/src/PHPMailer.php';
require 'Frameworks/PHPMailer/src/SMTP.php';


if(isset($POST["IsimSoyisim"])){
    $GelenIsimSoyisim=Guvenlik($POST["IsimSoyisim"]);
}else{
    $GelenIsimSoyisim="";
}

if(isset($POST["EmailAdresi"])){
    $GelenEmailAdresi=Guvenlik($POST["EmailAdresi"]);
}else{
    $GelenEmailAdresi="";
}

if(isset($POST["TelefonNumarasi"])){
    $GelenTelefonNumarasi=Guvenlik($POST["TelefonNumarasi"]);
}else{
    $GelenTelefonNumarasi="";
}

if(isset($POST["Mesaj"])){
    $GelenMesaj=Guvenlik($POST["Mesaj"]);
}else{
    $GelenMesaj="";
}
if(($GelenIsimSoyisim!="")and ($GelenEmailAdresi!="")and ($GelenTelefonNumarasi!="")and($GelenMesaj!="")){
    
    $MailGonder = new PHPMailer(true);
    try {
    $MailGonder->SMTPDebug = 0;   
    $MailGonder->isSMTP();                  
    $MailGonder->Host       = DonusumleriGeriDondur($SiteEmailHostAdresi);
    $MailGonder->SMTPAuth   = true;
    $MailGonder->CharSet    = "UTF-8";
    $MailGonder->Username   = DonusumleriGeriDondur($SiteEmailAdresi);                
    $MailGonder->Password   = DonusumleriGeriDondur($SiteEmailSifresi);
    $MailGonder->SMTPSecure = 'tls';        
    $MailGonder->Port       = 587; 
    $MailGonder->SMTOptions=array(
                            'ssl' => array(
                             'verify_peer'=>false,
                             'verify_peer_name'=>false,
                             'allow_self_signed'=>true)
                             );
    $MailGonder->setFrom(DonusumleriGeriDondur($SiteEmailAdresi),DonusumleriGeriDondur($SiteAdi));
    $MailGonder->addAddress(DonusumleriGeriDondur($SiteEmailAdresi),DonusumleriGeriDondur($SiteAdi));                         
    $MailGonder->addReplyTo($GelenEmailAdresi, $GelenIsimSoyisim);
    $MailGonder->isHTML(true);
    $MailGonder->Subject = DonusumleriGeriDondur($SiteAdi).'Iletisim Formu Mesaji';
    $MailGonder->MsgHTML($GelenMesaj);
    $MailGonder->send();

    header("Location:index.php?SK=6");
} catch (Exception $e) {
    header("Location:index.php?SK=7");
    exit(); 
}
}
else{
    header("Location:index.php?SK=8");
    exit();
}
?>



