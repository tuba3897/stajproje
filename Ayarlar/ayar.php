<?php
try{
    $VeritabaniBaglantisi=new PDO("mysql:host=localhost;dbname=akademikcalisma;charset=UTF8","root","");
} catch(PDOException $Hata){
    echo "Baðlantý Hatasý<br/>".$Hata->getMessage();
    die();
}

$AyarlarSorgusu=$VeritabaniBaglantisi->prepare("SELECT * FROM ayarlar LIMIT 1");
$AyarlarSorgusu->execute();
$AyarSayisi=$AyarlarSorgusu->rowCount();
$Ayarlar   =$AyarlarSorgusu->fetch(PDO::FETCH_ASSOC);

if($AyarSayisi>0){
    
    $SiteAdi                    = $Ayarlar["SiteAdi"];
    $SiteTitle                  = $Ayarlar["SiteTitle"];
    $SiteDescription            = $Ayarlar["SiteDescription"];
    $SiteKeywords               = $Ayarlar["SiteKeywords"];
    $SiteCopyrigthMetni         = $Ayarlar["SiteCopyrigthMetni"];
    $SiteLogosu                 = $Ayarlar["SiteLogosu"];
    $SiteEmailAdresi            = $Ayarlar["SiteEmailAdresi"];
    $SiteEmailSifresi           = $Ayarlar["SiteEmailSifresi"];
    $SiteEmailHostAdresi        = $Ayarlar["SiteEmailHostAdresi"];
    $SosyalLinkFacebook         = $Ayarlar["SosyalLinkFacebook"];
    $SosyalLinkTwitter          = $Ayarlar["SosyalLinkTwitter"];
    $SosyalLinkLinkedin         = $Ayarlar["SosyalLinkLinkedin"];
    $SosyalLinkInstagram        = $Ayarlar["SosyalLinkInstagram"];
    $SosyalLinkYoutube          = $Ayarlar["SosyalLinkYoutube"];
} else {
    echo "Site Ayar Sorgusu Hatalý";
    die();
}

$MetinlerSorgusu=$VeritabaniBaglantisi->prepare("SELECT * FROM hakkimizda LIMIT 1");
$MetinlerSorgusu->execute();
$MetinlerSayisi=$MetinlerSorgusu->rowCount();
$Metinler  =$MetinlerSorgusu->fetch(PDO::FETCH_ASSOC);

if($MetinlerSayisi>0){
    
    $TanitimMetni    =  $Metinler["TanitimMetni"];
    
} else {
    echo "Site Ayar Sorgusu Hatalý";
    die();
}
?>  
