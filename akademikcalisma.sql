-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Şub 2021, 15:37:52
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `akademikcalisma`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `SiteAdi` varchar(50) NOT NULL,
  `SiteTitle` varchar(60) NOT NULL,
  `SiteDescription` varchar(150) NOT NULL,
  `SiteKeywords` varchar(255) NOT NULL,
  `SiteCopyrigthMetni` varchar(255) NOT NULL,
  `SiteLogosu` varchar(30) NOT NULL,
  `SiteEmailAdresi` varchar(50) NOT NULL,
  `SiteEmailSifresi` varchar(50) NOT NULL,
  `SiteEmailHostAdresi` varchar(255) NOT NULL,
  `SosyalLinkFacebook` varchar(255) NOT NULL,
  `SosyalLinkTwitter` varchar(255) NOT NULL,
  `SosyalLinkLinkedin` varchar(255) NOT NULL,
  `SosyalLinkInstagram` varchar(255) NOT NULL,
  `SosyalLinkYoutube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `SiteAdi`, `SiteTitle`, `SiteDescription`, `SiteKeywords`, `SiteCopyrigthMetni`, `SiteLogosu`, `SiteEmailAdresi`, `SiteEmailSifresi`, `SiteEmailHostAdresi`, `SosyalLinkFacebook`, `SosyalLinkTwitter`, `SosyalLinkLinkedin`, `SosyalLinkInstagram`, `SosyalLinkYoutube`) VALUES
(1, 'Akademik Çalışma ', 'Akademik Çalışma Grupları', 'iletişimin akademik düzeyde kurulmasını, sürdürülebilir kılınmasını sağlamak için tıklayınız.', 'akademik, çalışma, grup', 'copyright 2021 - Akademik Çalışma Grubu - Tüm Hakları Saklıdır.', 'logo.png', 'tbaktir@yandex.com', 'Akademik38', 'smtp.yandex.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 'https://www.youtube.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(10) UNSIGNED NOT NULL,
  `DuyuruBasligi` varchar(255) NOT NULL,
  `DuyurularMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `DuyuruBasligi`, `DuyurularMetni`) VALUES
(1, 'DEEP LEARNİNG ALANINDAKİ KONFERANSIMIZA HERKESİ BEKLİYORUZ.', 'Deep learning, herhangi bir insan müdahalesi gerektirmeden; algoritmalar ve büyük veri kümeleri kullanarak kalıplar bulan ve çıktılar oluşturup yanıtlar veren bir makine öğrenme tekniği. Konferansımızda bu tekniğin neler yapabileceğini göreceğiz. \r\nAdres: Konferans\r\nSaat: 12.00\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(10) UNSIGNED NOT NULL,
  `HaberBaslik` varchar(255) NOT NULL,
  `HaberMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `HaberBaslik`, `HaberMetni`) VALUES
(1, 'GÖRÜNTÜ İŞLEME ALANINDA YAPTIĞIMIZ PROJE KABUL EDİLDİ', 'Yaptığımız çalışma çok ilgi gördü ve onaylandı. En yakın zaman da proje gerçekleşimine başlayacağız.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `TanitimMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `TanitimMetni`) VALUES
(1, '2000 den bu yana büyüyen kuruluşumuz sizlere daha iyi hizmet vermeye devam edecek.İş Dünyasının üyeleri ile yerli-yabancı üniversiteler, fikir kuruluşları başta olmak üzere akademik kurum ve kuruluşlar arasındaki iletişimin akademik düzeyde kurulmasını ve sürdürebilir kılınması sağlayan TB, hayatınızı kolaylaştıracak.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Mesaj` text NOT NULL,
  `İslemTarihi` int(10) UNSIGNED NOT NULL,
  `Durum` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisiler`
--

CREATE TABLE `kisiler` (
  `id` int(10) UNSIGNED NOT NULL,
  `KisiResmi` varchar(30) NOT NULL,
  `AdSoyad` varchar(100) NOT NULL,
  `Departman` varchar(255) NOT NULL,
  `Telefon` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kisiler`
--

INSERT INTO `kisiler` (`id`, `KisiResmi`, `AdSoyad`, `Departman`, `Telefon`, `Email`) VALUES
(1, 'kisi1.PNG', 'tuğba baktır', 'web yazılımcı', '05426327777', 'tuba@email.com'),
(2, 'kisi6.PNG', 'ali baktır', 'deep learning', '05426456777', 'ali@email.com'),
(3, 'kisi4.PNG', 'adnan durmuş', 'donanım', '05234456777', 'adnan@email.com'),
(4, 'kisi5.PNG', 'can adıvar', 'deep learning', '05435556666', 'can@email.com'),
(5, 'kisi3.PNG', 'burak duran', 'donanım', '05426345677', 'burak@email.com'),
(6, 'kisi2.PNG', 'umut selvi', 'donanım', '05435558888', 'umut@email.com'),
(7, 'kisi7.PNG', 'canan çelen', 'Yazılım Geliştirme', '05872252144', 'canan@email.com'),
(8, 'kisi8.PNG', 'belma aran', 'Proje Yöneticisi', '05698745566', 'belma@email.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuler`
--

CREATE TABLE `menuler` (
  `id` int(10) UNSIGNED NOT NULL,
  `YayinYili` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menuler`
--

INSERT INTO `menuler` (`id`, `YayinYili`) VALUES
(1, '2021'),
(2, '2020'),
(3, '2019'),
(4, '2018'),
(5, '2017'),
(6, '2016'),
(7, '2015'),
(8, '2014'),
(9, '2013'),
(10, '2012'),
(11, '2011'),
(12, '2010'),
(13, '2009'),
(14, '2008'),
(15, '2007'),
(16, '2006'),
(17, '2005');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE `projeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `ProjeAdi` varchar(255) NOT NULL,
  `ProjeAciklama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`id`, `ProjeAdi`, `ProjeAciklama`) VALUES
(1, 'GÖRÜNTÜLERİN YUMUŞAK SEGMENTASYONU', 'Fotoğraflara gerçekçi bir şekilde dramatik değişiklikler uygulamak, görsel hesaplamadaki iki ana alanın işbirliğini gerektiren zor bir iştir: bilgisayarla görme ve bilgisayar grafikleri. Konuşma, görüntü düzenlemede gerçek dünyadaki zorlukları hedefleyen yeni yöntemlerle başlayacak ve daha sonra bu formülasyonları genel çok amaçlı görüntü temsilleri oluşturmak için genişletecek. Düşük seviyeli bir temsil olarak, fotoğrafların ana sahne renklerine ayrıştırılması, büyük ölçekli doğrusal olmayan bir optimizasyon probleminin paralelleştirilebilir alt problemlere ayrıştırılmasıyla formüle edilecektir. Son bölümde, derin bir sinir ağından gelen nesnellikle ilgili bilgilerin grafik tabanlı bir spektral segmentasyon formülasyonuna birleştirilmesinin ayrıntılı bir çalışması sunulacaktır. Bu bölüm semantik yumuşak segmentasyona sahip olacak, fotoğraflardaki belirli nesneleri gerçekçi bir şekilde kaldırmayı veya düzenlemeyi sağlayan tam otomatik bir yöntem. Formülasyonu, görüntüde tanımlanan bir grafiğin temsil kapasitesini artırmak için bir sinir ağını özel olarak eğitmeyi, grafik tabanlı formülasyonlar ve derin sinir ağları için uygulama senaryolarını genişletmeyi içerir.'),
(2, 'SIRADAN DİZİ MODELLERİNE TENSÖRDEN TENSÖRE MODELLERE: BAĞLANTICI ÇOK SIRALI MODELLEME', 'Tek bir derin sinir ağı, birden çok alandan bir dizi büyük ölçekli görevi birlikte öğrenebilir. Bu, kodlayıcı-kod çözücü ağları çerçevesinde çoklu giriş akışlarını çoklu çıkış akışlarına eşlemek için bir araya getirilen jenerik sekans modelleriyle mümkün kılınmıştır. Metnin tahmine dayalı modellemesi için temel bağlantıcı dizi modellerinden başlayarak, daha sonra nöral makine çevirisinde olduğu gibi bir girdi ve çıktı dizisi arasındaki karmaşık eşlemeleri öğrenebilen dizi modellerine ve son olarak tensörden tensöre çoklu dizi eşleme görevlerini öğrenebilen modellere kadar tartışacağız. aynı zamanda resim yazısı / sınıflandırma, konuşmadan metne ve metinden metne çeviri görevleri gibi tek bir parametrik işlevle.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `id` int(10) UNSIGNED NOT NULL,
  `Soru` varchar(255) NOT NULL,
  `Cevap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`id`, `Soru`, `Cevap`) VALUES
(1, '1.sorunuzun başlığı', '1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni1.sorunuzun cevap metni'),
(2, '2.sorunuzun başlığı', '2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni2.sorunuzun cevap metni'),
(3, '3.sorunuzun başlığı', '3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni3.sorunuzun cevap metni'),
(4, '4.sorunuzun başlığı', '4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni4.sorunuzun cevap metni'),
(5, '5.sorunuzun başlığı', '5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni5.sorunuzun cevap metni'),
(6, '6.sorunuzun başlığı', '6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni6.sorunuzun cevap metni'),
(7, '7.sorunuzun başlığı', '7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni7.sorunuzun cevap metni'),
(8, '8.sorunuzun başlığı', '8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni8.sorunuzun cevap metni'),
(9, '9.sorunuzun başlığı', '9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni9.sorunuzun cevap metni'),
(10, '10.sorunuzun başlığı', '10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni10.sorunuzun cevap metni'),
(11, '11.sorunuzun başlığı', '11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni11.sorunuzun cevap metni'),
(12, '12.sorunuzun başlığı', '12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni12.sorunuzun cevap metni');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `Sifre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `EmailAdresi`, `Sifre`) VALUES
(1, 'tuba_baktir@hotmail.com', 'tubabaktir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinlar`
--

CREATE TABLE `yayinlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `MenuId` int(10) NOT NULL,
  `YayinYili` int(50) NOT NULL,
  `YayinAdi` varchar(255) NOT NULL,
  `YayinKisi` varchar(255) NOT NULL,
  `YayinAciklamasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yayinlar`
--

INSERT INTO `yayinlar` (`id`, `MenuId`, `YayinYili`, `YayinAdi`, `YayinKisi`, `YayinAciklamasi`) VALUES
(1, 7, 2019, 'FOTOĞRAF ALBÜMÜNE UYGULAMA İLE GÖRSEL HİKAYE GRAFİKLERİ OLUŞTURMA', 'Bora Çelikkale, Göksu Erdoğan, Aykut Erdem, Erkut Erdem', 'Web\'de bulunan sürekli artan miktarda görsel veriyi anlamak, özellikle denetimsiz bir şekilde düşünüldüğünde zordur. Bu hedefe doğru bir adım olarak, bu çalışma, büyük fotoğraf koleksiyonlarının yapılandırılmış özetlerini oluşturmaya ilişkin nispeten daha az araştırılmış bir konuyu ele alıyor. Çerçevemiz, verilerdeki ana anlatıları ve bunların görsel, metinsel ve mekansal-zamansal özelliklerine dayalı ilişkilerini yakalayan bir hikaye grafiği kavramına dayanır. Çıktısı, muhtemelen kesişen yollar kümesine sahip yönlendirilmiş bir grafiktir. Önerilen yaklaşımımız, tutarlı görsel hikayeleri tanımlar ve bu satırların en fazla genel anlatıyı kapsayan bir alt kümesini seçmek için alt modülerliği kullanır. Deneysel analizimiz, çıkarılan hikaye grafiklerinin fotoğraf albümü özetlemesi için öncelik olarak kullanıldığında daha iyi sonuçlar elde etmeye izin verdiğini ortaya koymaktadır. Ayrıca, kullanıcı araştırmalarımız, yaklaşımımızın bir sonraki görüntü tahmini ve kapsama görevlerinde son teknolojiye göre daha iyi performans sağladığını göstermektedir.'),
(2, 6, 2020, 'DİNAMİK BELİRGİNLİK TAHMİN ETMEK İÇİN STATİK BELİRGİNLİK MODELLERİNİ KORUMAK', 'Yasin Kavak, Erkut Erdem, Aykut Erdem', 'Son yıllarda, belirginlik tahmini için birçok hesaplama modeli tanıtıldı. Dinamik sahneler için, mevcut modeller tipik olarak, ortalama alma veya kazananlar gibi genel entegrasyon stratejilerini takip ederek veya her bir özelliğin önemini belirlemek için makine öğrenimi tekniklerini kullanarak uzamsal ve zamansal alanlardan çıkarılan farklı özellik haritalarını birleştirir. Bu sabit özellik entegrasyon şemalarına başvurmak yerine, bu makalede, bir karar-teorik çevrimiçi öğrenme şemasına dayanan HedgeSal adlı yeni bir zayıf denetimli dinamik belirginlik modeli öneriyoruz. Çerçevemiz, görünüm ve hareket akışlarından ayrı ayrı belirginlik haritalarını çıkarmak için uzmanlar olarak önceden eğitilmiş iki derin statik belirginlik modeli kullanır ve ardından tüm bu modellerin ağırlıklı kararları ile nihai belirginlik haritasını oluşturur. Dinamik sahnelerin görsel özellikleri sürekli değiştiğinden, geçmişte tutarlı bir şekilde iyi tahminler sağlayan modellere otomatik olarak daha yüksek ağırlıklar atanır ve her bir uzmanın kendisini mevcut koşullara göre ayarlamasına izin verir. Modelimizin CRCNS, UCFSports ve CITIUS veri kümeleri üzerindeki etkinliğini gösteriyoruz.');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kisiler`
--
ALTER TABLE `kisiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuler`
--
ALTER TABLE `menuler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `projeler`
--
ALTER TABLE `projeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yayinlar`
--
ALTER TABLE `yayinlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kisiler`
--
ALTER TABLE `kisiler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `menuler`
--
ALTER TABLE `menuler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `projeler`
--
ALTER TABLE `projeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yayinlar`
--
ALTER TABLE `yayinlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
