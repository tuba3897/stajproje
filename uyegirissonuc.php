<?php

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

if(($GelenEmailAdresi!="")and($GelenSifre!="")){
    echo 'HOSGELDÝNÝZ';
}
?>