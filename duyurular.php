<table width="1065" align="center" border="0" cellpadding="0">
    <tr height="70" bgcolor="#FF9900">
        <td align="left"><h2 style="color:white">&nbsp;DUYURULAR</h2></td>
    </tr>
  
        <td>&nbsp;</td>
    </tr>
    <tr height="30">
        <td><?php
        $DuyuruSorgusu  =$VeritabaniBaglantisi->prepare("SELECT * FROM duyurular");
        $DuyuruSorgusu->execute();
        $DuyuruSayisi   =$DuyuruSorgusu->rowCount();
        $DuyuruKayitlari=$DuyuruSorgusu->fetchAll(PDO::FETCH_ASSOC);
        
        foreach ($DuyuruKayitlari as $Kayitlar){  
        ?>
        <div>
            <div class="SorununBaslikAlani" ><?php echo $Kayitlar["DuyuruBasligi"];?></div>
            <div class="SorununCevapAlani"><?php echo $Kayitlar["DuyurularMetni"];?></div>
        </div>
        <?php
         }
        ?>
        </td>
    </tr>    
</table>