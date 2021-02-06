
    <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0" >
    <tr><?php
        $KisiSorgusu  =$VeritabaniBaglantisi->prepare("SELECT * FROM kisiler");
        $KisiSorgusu->execute();
        $KisiSayisi   =$KisiSorgusu->rowCount();
        $KisiKayitlari=$KisiSorgusu->fetchAll(PDO::FETCH_ASSOC);
        
        $DonguSayisi=1;
        $SutunAdetSayisi=4;
        
        foreach ($KisiKayitlari as $Kayitlar){  
        ?>
        <td width="191" >
            <table width="191" align="center" border="0" cellpadding="0" cellspacing="0" style="border-bottom: 1px dashed #CCCCCC";margin-bottom:10px>
                <tr height="40">    
                   <td align="center"> <img src="Resimler/kisiresimleri/<?php echo DonusumleriGeriDondur($Kayitlar["KisiResmi"]);?>" border="0" width="185" height="210"></td>
                </tr>
                <tr>
                    <td><?php echo "Adi Soyadi:  ".$Kayitlar["AdSoyad"];?></td>
                </tr>
                <tr>
                    <td><?php echo "Departmani:  ".$Kayitlar["Departman"];?></td>
                </tr>
                <tr>
                    <td><?php echo "Telefon Numarasi:  ".$Kayitlar["Telefon"];?></td>
                </tr>
                <tr>
                    <td><?php echo "Mail Adresi:  ".$Kayitlar["Email"];?></td>
                </tr>
            </table>
        </td>
        <?php
         if($DonguSayisi<$SutunAdetSayisi){
        ?>
        <td width="40">&nbsp;</td>
        <?php
         }
        ?>
        <?php
         $DonguSayisi++;
         if($DonguSayisi>$SutunAdetSayisi){
             echo "<tr></tr>";
             $DonguSayisi=1;
         }
        }
        ?>
      
        </td>
    </tr>    
    </table>