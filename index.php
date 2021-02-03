<?php
require_once("Ayarlar/ayar.php");
require_once("Ayarlar/fonksiyonlar.php");
require_once("Ayarlar/sitesayfalari.php");
if(isset($_REQUEST["SK"])){
    $SayfaKoduDegeri=SayiliIcerikleriFiltrele($_REQUEST["SK"]);
}else{
    $SayfaKoduDegeri=0;
}
?>  
<!DOCTYPE html>

<html lang="tr-TR">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="tr" >
    <meta charset="UTF-8">
    <meta name="robots" content="index, follow">
    <meta name="googlebot" content="index, follow">
    <meta name="revisit-after" content="7 Days">
    <title><?php echo DonusumleriGeriDondur($SiteTitle);?> </title>
    <link type="image/PNG" rel="icon" href="Resimler/favicon.PNG">
    <meta name="description" content="<?php echo DonusumleriGeriDondur($SiteDescription);?>">
    <meta name="keywords" content="<?php echo DonusumleriGeriDondur($SiteKeywords);?>">
    <script type="text/javascript" src="Frameworks/JQuery/jquery-3.5.1.min.js" language="javascript"></script>
    <link type="text/css" rel="stylesheet" href="Ayarlar/still.css">
    <script type="text/javascript" src="Ayarlar/fonksiyonlar.js" language="javascript"></script>

</head>
<body>
    <table width="1065" height="100%" align="center" border="0" cellpadding="0" cellspacing="0" >
<tr height="110">
    <td>
        <table width="1065" height="30" align="center" border="0" cellpadding="0" cellspacing="0" >
            <tr bgcolor="#0088CC">
                <td>&nbsp;</td>
                <td width="20"><a href="xxxx"><img src="Resimler/login.PNG" border="0" style="margin-top:5px;"><a/></td>
                <td width="100" class="MaviAlanMenusu"><a href="xxxx">Uye Girisi</a></td>
            </tr>
        </table>
        
        <table width="1065" height="90" align="center" border="0" cellpadding="0" cellspacing="0" >
            <tr bgcolor="#0088CC">
                <td width="90"><a href="index.php"><img src="Resimler/<?php echo DonusumleriGeriDondur($SiteLogosu);?>" border="0"></a></td>
                <td>
                   <table width="750" height="30" align="center" border="0" cellpadding="0" cellspacing="0" >
                   <tr>  
                       <td width="50" class="MaviAlanMenusu"><a href="index.php?SK=0"><b>ANASAYFA</b></a></td>
                       <td width="50" class="MaviAlanMenusu"><a href="xxxx"><b>KISILER</b></a></td>
                       <td width="50" class="MaviAlanMenusu"><a href="xxxx"><b>YAYINLAR</b></a></td>
                       <td width="50" class="MaviAlanMenusu"><a href="xxxx"><b>PROJELER</b></a></td>
                       <td width="50" class="MaviAlanMenusu"><a href="xxxx"><b>DATA</b></a></td>
                       <td width="50" class="MaviAlanMenusu"><a href="xxxx"><b>ILETISIM</b></a></td>
                   </tr>
                   </table>   
                </td>      
            </tr>
        </table>
        
    </td>
</tr>
<tr>
    <td valign="top">
        <table width="1065" height="30" align="center" border="0" cellpadding="0" cellspacing="0" >
            <tr>
                <td align="center"><?php
                  if((!$SayfaKoduDegeri)or($SayfaKoduDegeri=="")or($SayfaKoduDegeri==0)){
                      include($Sayfa[0]);
                  }else{
                      include($Sayfa[$SayfaKoduDegeri]);
                  }
                  ?></td>
            </tr>
        </table>
    </td>
</tr>

<tr height="150">
    <td><br/>
         <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0" bgcolor="#F9F9F9" >
            <tr height="30">  
               <td width="250" style="border-bottom: 1px dashed #CCCCCC"><b>&nbsp;Hakkimizda</b></td>
               <td width="22">&nbsp;</td>
               <td width="250" style="border-bottom: 1px dashed #CCCCCC"><b>Uyelik</b></td>
               <td width="21">&nbsp;</td>
               <td width="250" style="border-bottom: 1px dashed #CCCCCC"><b>Hizmetler</b></td>
               <td width="21">&nbsp;</td>
               <td width="250" style="border-bottom: 1px dashed #CCCCCC"><b>Bizi Takip Edin</b></td>
            </tr>
            
            <tr height="30">  
               <td class="AltMenu">&nbsp;<a href="index.php?SK=1">Tanitim</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Uye Girisi</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Projeler</a></td>
               <td>&nbsp;</td>
               <td><table width="250" align="center" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                           <td width="20"><a href="xxxx"><img src="Resimler/facebook.PNG" border="0" style="margin-top:5px;"></a></td>
                           <td width="230" class="AltMenu"><a href="<?php echo DonusumleriGeriDondur($SosyalLinkFacebook );?>" target="_blank">Facebook</a></td>
                       </tr>
                   </table></td>
            </tr> 
            
            <tr height="30">  
                <td class="AltMenu">&nbsp;<a href="index.php?SK=2">Duyurular</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Uyeler</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Veriler</a></td>
               <td>&nbsp;</td>
               <td><table width="250" align="center" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                           <td width="20"><a href="xxxx"><img src="Resimler/twitter.PNG" border="0" style="margin-top:5px;"></a></td>
                           <td width="230" class="AltMenu"><a href=" <?php echo DonusumleriGeriDondur($SosyalLinkTwitter);?>" target="_blank">Twitter</a></td>
                       </tr>
                   </table></td>
            </tr>
            
            <tr height="30">  
                <td class="AltMenu">&nbsp;<a href="index.php?SK=3">Haberler</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Sik Sorulan Sorular</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><a href="xxxx">Yayinlar</a></td>
               <td>&nbsp;</td>
               <td class="AltMenu"><table width="250" align="center" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                           <td width="20"><a href="xxxx"><img src="Resimler/linkedin.PNG" border="0" style="margin-top:5px;"></a></td>
                           <td width="230" class="AltMenu"><a href=" <?php echo DonusumleriGeriDondur($SosyalLinkLinkedin);?>" target="_blank">Linkedin</a></td>
                       </tr>
                   </table></td>
            </tr>
            
            <tr height="30">  
                <td class="AltMenu">&nbsp;<a href="index.php?SK=4">Iletisim</a></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td><table width="250" align="center" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                           <td width="20" <a href="xxxx"><img src="Resimler/instagram.PNG" border="0" style="margin-top:5px;"></a></td>
                           <td width="230" class="AltMenu"><a href="<?php echo DonusumleriGeriDondur($SosyalLinkInstagram);?>" target="_blank">Instagram</a></td>
                       </tr>
               </table></td>
            </tr>
            
            <tr height="30">  
               <td width="" ></td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td>&nbsp;</td>
               <td><table width="250" align="center" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                           <td width="20" ><a href="xxxx"><img src="Resimler/youtube.PNG" border="0" style="margin-top:5px;"></a></td>
                           <td width="230" class="AltMenu"><a href="<?php echo DonusumleriGeriDondur($SosyalLinkYoutube);?>" target="_blank">Youtube</a></td>
                       </tr>
                   </table></td>
            </tr>
         
        </table>
   </td>
</tr>
<tr height="30">
    <td><table width="1065" height="30" align="center" border="0" cellpadding="0" cellspacing="0" >
        <tr height="30">  
           <td align="center"><?php echo DonusumleriGeriDondur($SiteCopyrigthMetni);?></td>
        </tr>
    </table></td>  
</tr>   

</body>
</html>
<?php
$VeritabaniBaglantisi=null;
?>  