<?php 
if(isset($_GET["MenuID"])){
    $GelenMenuId=SayiliIcerikleriFiltrele(Guvenlik($_GET["MenuID"]));
    $MenuKosulu="AND MenuId='".$GelenMenuId."'";
}else{
    $GelenMenuId="";
    $MenuKosulu="";
} 

?>
<table width="1065" align="center" border="0" cellpadding="0" cellspacing="0" >
 <tr>
    <td width"="250" align="left" valign="top "> 
    <table width="250" align="left" border="0" cellpadding="0" cellspacing="0" >
    <tr>
    <td><table width="250" align="center" border="0" cellpadding="0" cellspacing="0" >
            <tr height="50">
                <td bgcolor="#F1F1F1"><b>YAYIN YILI</b></td> 
            </tr>
            <tr height="30">
                <td><a href="index.php?SK=18" style="text-decoration: none; <?php if($GelenMenuId==$Menu["id"]){?> color: #FF9900;<?}else{?>color: #646464;<?php }?> font-weight: bold">&nbsp;&nbsp;Tum Yillar</a></td> 
            </tr>
        <?php
        $MenulerSorgusu    =$VeritabaniBaglantisi->prepare("SELECT * FROM menuler WHERE YayinYili $MenuKosulu");
        $MenulerSorgusu->execute();
        $MenuKayitSayisi   =$MenulerSorgusu->rowCount();
        $MenuKayitlari     =$MenulerSorgusu->fetchAll(PDO::FETCH_ASSOC);       
                        
        foreach ($MenuKayitlari as $Menu){  
        ?>
            <tr height="30">
                <td><a href="index.php?SK=18&MenuID=<?php echo $Menu["id"];?>" style="text-decoration: none; <?php if($GelenMenuId==$Menu["id"]){?> color: #FF9900;<?}else{?>color: #646464;<?php }?> font-weight: bold">&nbsp;&nbsp;<?php echo $Menu["YayinYili"];?></a></td> 
            </tr>
        <?php    
        }
        ?>               
    
        </table>  
    </td>                
    </tr>                
    </table> 
    </td>    
        
        <td width"="12" align="left">&nbsp;</td>
        
        <td width"="795" align="center" valign="top"><table width="795" align="left" border="0" cellpadding="0" cellspacing="0" >
                <tr>
                    <td><?php
        $MenulerSorgusu    =$VeritabaniBaglantisi->prepare("SELECT * FROM yayinlar  $MenuKosulu");
        $MenulerSorgusu->execute();
        $MenuKayitSayisi   =$MenulerSorgusu->rowCount();
        $MenuKayitlari     =$MenulerSorgusu->fetchAll(PDO::FETCH_ASSOC);
       
        
        foreach ($MenuKayitlari as $Kayitlar){  
        ?>
        <td width="795" >
            <tr>
                <td class="YayinAlani"><?php echo "KONU:".$Kayitlar["YayinAdi"];?></td>
            </tr>
            <tr>
                <td ><?php echo "Ozet: ".$Kayitlar["YayinAciklamasi"];?></td>
            </tr>
            <tr>
                <td ><?php echo $Kayitlar["YayinKisi"]."-"."{".$Kayitlar["YayinYili"]."}";?></td>
            </tr>
        </td>
        
        <?php
         }
        ?>
                    </td>
                </tr>
        </table></td>
    </tr>    
    </table>