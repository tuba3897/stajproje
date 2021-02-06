
    <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0" >
    <tr><?php
        $ProjeSorgusu  =$VeritabaniBaglantisi->prepare("SELECT * FROM projeler");
        $ProjeSorgusu->execute();
        $ProjeSayisi   =$ProjeSorgusu->rowCount();
        $ProjeKayitlari=$ProjeSorgusu->fetchAll(PDO::FETCH_ASSOC);
        
        
        foreach ($ProjeKayitlari as $Kayitlar){  
        ?>
        <td width="795" >
            <tr>
                <td class="YayinAlani"><?php echo "PROJE:".$Kayitlar["ProjeAdi"];?></td>
            </tr>
            <tr>
                <td ><?php echo "Aciklama ".$Kayitlar["ProjeAciklama"];?></td>
            </tr>
        </td>
        
        <?php
         }
        ?>
        
      
        </td>
    </tr>    
    </table>