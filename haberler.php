<table width="1065" align="center" border="0" cellpadding="0">
    <tr height="70" bgcolor="#FF9900">
        <td align="left"><h2 style="color:white">&nbsp;HABERLER</h2></td>
    </tr>
    <tr height="40">
        <td align="left" style="border-bottom: 1px dashed #CCCCCC">&nbsp;Guncel Haberlerimiz...</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr height="30">
        <td><?php
        $HaberSorgusu  =$VeritabaniBaglantisi->prepare("SELECT * FROM haberler");
        $HaberSorgusu->execute();
        $HaberSayisi   =$HaberSorgusu->rowCount();
        $HaberKayitlari=$HaberSorgusu->fetchAll(PDO::FETCH_ASSOC);
        
        foreach ($HaberKayitlari as $Kayitlar){  
        ?>
        <div>
            <div class="SorununBaslikAlani" ><?php echo $Kayitlar["HaberBaslik"];?></div>
            <div class="SorununCevapAlani"><?php echo $Kayitlar["HaberMetni"];?></div>
        </div>
        <?php
         }
        ?>
        </td>
    </tr>    
</table>