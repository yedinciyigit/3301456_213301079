import 'package:flutter/material.dart';
import 'package:tarim_gelistirme/widget/navigation_drawer_widget.dart';

void main() => runApp(FavouritesPage());

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'forum sayfası',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: anaSayfa(),
      routes: {
        '/misir': (context) => misir(),
        '/aycicegi': (context) => aycicegi(),
        '/yapayzeka': (context) => yapayzeka(),
        '/koyunlar' : (context) => Koyunlar(),
        '/tarimda' : (context) => tarimda(),
        '/devrim' : (context) => devrim(),

      },
    );
  }
}

class anaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('FORUM SAYFASI'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),

        body: ListView(
          children: [
            ListTile(
              title: Text(
                ' Mısır yetiştiriciliği hakkında',
                style: TextStyle(fontSize: 28),
              ),
              subtitle: Text('Son mesaj: 2 saat önce'),
              leading: Image.asset('assets/misir.png'),
              onTap: () => Navigator.pushNamed(context, '/misir'),
            ),
            ListTile(
              title: Text(
                ' Ayçiçeği ekerken nelere dikkat edilmeli',
                style: TextStyle(fontSize: 27),
              ),
              subtitle: Text('Son mesaj: 3 saat önce'),
              leading: Image.asset('assets/aycicegi.jpg'),
              onTap: () => Navigator.pushNamed(context, '/aycicegi'),
            ),
            ListTile(
              title: Text(
                ' Iron Ox ile Tarımda Yapay Zeka',
                style: TextStyle(fontSize: 27),
              ),
              subtitle: Text('    Son mesaj: 3 saat önce'),
              leading: Image.asset('assets/baslik.jpg'),
              onTap: () => Navigator.pushNamed(context, '/yapayzeka'),
            ),
            ListTile(
              title: Text(
                '  Küçükbaş hayvancılık işletmesi kuracaklar nereden başlamalı?',
                style: TextStyle(fontSize: 27),
              ),
              subtitle: Text(' Son mesaj: 5 saat önce'),
              leading: Image.asset('assets/koyun.jpeg'),
              onTap: () => Navigator.pushNamed(context, '/koyunlar'),
            ),
            ListTile(
              title: Text(
                ' Hızlı ıslah teknolojisi tarımda ikinci yeşil devrime yol açar mı?',
                style: TextStyle(fontSize: 27),
              ),
              subtitle: Text(' Son mesaj: 5 gün önce'),
              leading: Image.asset('assets/islah.jpg'),
              onTap: () => Navigator.pushNamed(context, '/devrim'),
            ),
            ListTile(
              title: Text(
                ' Ulusal su planı hakkında son durum',
                style: TextStyle(fontSize: 27),
              ),
              subtitle: Text(' Son mesaj: 6 gün önce'),
              leading: Image.asset('assets/su.jpg'),
              onTap: () => Navigator.pushNamed(context, '/tarimda'),
            ),

          ],
        )

    );
  }
}

class ForumTile extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String routeName;

  ForumTile({required this.title, required this.imageAsset, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.asset(
        imageAsset,
        width: 50,
        height: 50,
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

class misir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Mısır yetiştiriciliği'),
        backgroundColor: Colors.brown,
        leading: BackButton(
          color: Colors.black,
        ),
      ),

      body: ListView(

        children: [

          Image.asset(
            'assets/misir.png',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Mısır Hakkında',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Mısır, dünyada en fazla ekilen üçüncü tahıldır. Dünya nüfusunun büyük bir bölümü tarafından tüketilir. Mısır, yemek pişirme, bira yapımı, şeker yapımı ve diğer birçok endüstriyel uygulamada kullanılır. Mısır aynı zamanda yüksek besin değerine sahiptir ve birçok vitamin ve mineral içerir.',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/misir2.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'MISIR YETİŞTİRİCİLİĞİ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Mısır dünyada ekim alanı bakımından buğday ve çeltikten sonra 3. sırada yer alırken üretim miktarı bakımından ilk sırada, ülkemizde 500-550 bin ha. ekim alanı, 2.300.000 ton üretim miktarı ile , buğday ve arpadan sonra üçüncü sırada yer almaktadır.Toplam üretimin yaklaşık yarısının gerçekleştirildiği Akdeniz bölgesi verim bakımından Türkiye ve Dünya ortalama veriminin üzerindedir.',
            style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/misir3.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'MISIRIN MORFOLOJİSİ VE BİYOLOJİSİ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''Cin - Dane - Şeker ve Süt Mısırın Farkları Nelerdir?
On Dokuz Mayıs Üniversitesi’nce hazırlanan notlara göre:

Atdişi mısır, üst kısmındaki diş şeklindeki girintiden ayırt ediliyor. Üst kısmındaki nişastanın çekilmesi sonucu bu görünüme kavuşan mısır çeşidi, yetiştirilen en yaygın türü işaret ediyor. Tane rengi sarı ve beyaz oluyor. 
Sert mısır, tanenin iç kısmındaki nişastanın yumuşak olmasına karşın üst kısmın sertliği ile ayırt ediliyor. Tane renklerinde farklı tonların görülmesi mümkün oluyor.
Unsu mısır türünde tane tamamen yumuşak nişastadan oluşuyor. Tane renkleri farklılık arz ederken, bu çeşit daha çok Amerika kıtasında yetiştiriliyor. 
Patlak mısır yani cin mısır, küçük taneleriyle biliniyor. Sıcaklığa tabii tutulduğunda şişen ve patlayan taneler çerezlik tüketime uygun görülüyor. 
Mumsu mısır, kolay ezilebilen yumuşak yapıya sahip oluyor. 
Kavuzlu mısırın taneleri kavuz veya yaprak ile sarılı görülüyor. Mevcut mısır çeşitlerinin atası olan kavuzlu mısır, diğer endüstriyel mısırlardan ayrı sınıflandırılıyor.
Tatlı mısır, küçük formu ve tanelerinin yapısıyla ayırt ediliyor. Süt olum döneminde hasat edilen şeker mısırların diğerlerinden tatlı olduğu fark ediliyor. Olgun tanelerde şeker oranı daha düşük görülürken, düşük şekerli tanelerde bile tatlılık fark ediliyor. Konserve ve dondurulmuş ürün haline getirilen tatlı mısırlar, tohumluk fiyatlarının yüksekliği ile biliniyor. Vejetasyon süresi diğer mısır türlerinden daha kısa olan tatlı yani şeker mısır, yetiştirme mevsimi kısa olan bölgelerde bile rahatlıkla yetiştirilebiliyor. Tatlı mısırın tanedeki yağ ve protein oranı da diğer çeşitlerden fazla oluyor. ''',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class aycicegi  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Ayçiçeği ekimi hakkında'),
        backgroundColor: Colors.yellow,
      ),

      body: ListView(

        children: [

          Image.asset(
            'assets/aycicegi.jpg',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 20),
          Text(
            'Ayçiçeği yetiştiriciliği hakkında',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''Ayçiçek yetiştiriciliği bolca emek gerektiriyor. Fazlaca gelişmiş yeşil kısma sahip olan ayçiçekleri, yetişme süresi boyunca topraktan oldukça fazla besin elementi alıyor. Bu nedenle ayçiçeği yetiştirenler her yıl aynı tarlaya üst üste ayçiçeği ekmeyi tercih etmiyor. Verimin düşmemesi için ayçiçekleri ekim nöbeti usulü ile tarlada yerini alıyor.

Ayçiçeği kuru koşullarda buğday, arpa, çavdar gibi bitkilerle değiştirilerek ekiliyor. Böylece verim daha yüksek olabiliyor. Toprak bakımından fazla seçici olmayan bitki, kumlu, killi gibi farklı topraklarda yetişebiliyor. Ayçiçeğinin daha iyi yetişmesi için organik maddece zengin, alüvyal toprakların seçilmesi tavsiye ediliyor. Fazla taşlı, çok kumlu veya yüzlek topraklar ise ayçiçeği için uygun görülmüyor. pH değerinin 6.0 ile 7.2 arasında olması gerekiyor. Taban suyu yüksek ve drenaj sorunu olan topraklarda da maalesef ayçiçeği yetiştirilemiyor. Ayrıca ayçiçeği üretimi sırasında bitkiler, 2-4 mmhos/cm tuz konsantrasyonuna dayanabiliyor. ''',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/aycicegi2.jpg',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 20),
          Text(
            'Ayçiçeği Tarımı Nerede Yapılabilir?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
           '''Dünyada en çok ayçiçeği üretimi yapan on ülke arasında yer alan Türkiye’de yaklaşık 60 türde ayçiçeği üretiliyor. Peki, Türkiye’de ayçiçeği en çok hangi bölgede yetiştirilir? Yağlık ayçiçeği tarımı Trakya’da ve Marmara bölgesinde yoğunlaşıyor. Çerezlik ayçiçekleri ise İç Anadolu ve Doğu Anadolu bölgelerinde gerçekleştiriliyor. Konya yöresi ise hem yağlık hem de çerezlik üretimdeki yükselişiyle son yıllarda dikkat çekiyor. 

Ayçiçeği üretimi yıllık 700-800 mm, yetiştirme evresinde ise 350-400 mm ortalama yağış alan alanlarda yapılabiliyor. Daha düşük yağış alan bölgelerde ise su desteği ile ayçiçeği yetiştiriciliği gerçekleştiriliyor. Ayçiçeği üretimi tohumdan hasada kadar emek gerektiriyor. Tohumun çimlenebilmesi için toprağın sıcaklığının 8 ile 10 derece arasında olması gerekiyor. Yetişme evresinde ise toprak sıcaklığının 15-25 derecelerde olması bekleniyor. Ürünün 4 derecenin altındaki sıcaklıklardan özellikle olumsuz etkilendiğinin altı çiziliyor. Dayanıklı bir bitki olan ayçiçeği, yapraklandıktan sonra -5 dereceye kadar dayanabiliyor. Düşük sıcaklıklara karşı direnç, 6-8 yapraklı döneme kadar kademeli olarak azalarak sürüyor. Uyum kabiliyeti yüksek olduğu için çiftçilerimiz tarafından tercih edilen ürün, 21-24 derece hava sıcaklığında ideal yetiştirme koşullarına ulaşıyor.  ''',
            style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/aycicegi3.jpg',
            width: 300,
            height: 300,
          ),
          SizedBox(height: 20),
          Text(
            'Ayçiçeği Üretimi Yaparken Nelere Dikkat Edilmeli? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''Ayçiçeği üretimi sırasında farklı bölgelerde farklı ekim nöbetleri yapılıyor. Çukurova’da buğdayla ekim nöbetine sokulduğunda, verim düşüklüğüne neden olan kök çürüklüğü hastalığının etkili olmadığı ve buğday veriminde yüksek oranda artış olduğu belirtiliyor. Sulu koşullarda patates, soya, yerfıstığı ve mısır ile nöbetleşe ekilen ayçiçeğinden sonra dikilecek bitkiler için potaslı gübre kullanımı önem taşıyor.
Ayçiçeği üretimi aşamaları içinde ilk sırada tohum seçimi bulunuyor. Tohum seçiminde uzmanlar uyarıyor, her yıl sertifikalı yeni tohumlukların ekimi gerekiyor. Tohumların temiz, çimlenme oranı ve çıkış gücü yüksek olması gerektiğinin altı çiziliyor.
Verem otu çıkan tarlalarda verim düşüklüğü olmaması için parazite dayanıklı ayçiçeği tohumu kullanılması öneriliyor. Ayrıca İMİ grubu ayçiçeği ekimi ile kimyasal mücadele yapılması da tavsiye ediliyor.
Köse hastalığına karşı hassas ve ilaçsız çeşit ekilecekse, hastalığa karşı tohum ilaçlaması yapılması öneriliyor.
Geçen yıldan elde tohum kaldıysa bu tohumların kuru ve serin yerde muhafaza edilmesi gerekiyor. Ekim öncesinde 100 tohumun kağıt havluda ıslatılarak çimlenmesinin kontrol edilmesi, ekim işleminin boşa gitmemesi için önem taşıyor.
Ayçiçeği ekim zamanlarına dikkat edilmesi gerekiyor. Ege, Akdeniz ve Güneydoğu Anadolu bölgelerinde Mart, Marmara, Orta Anadolu ve Karadeniz Bölgelerinde Nisan, Doğu Anadolu Bölgesinde Mayıs ayında ekim yapılıyor. Ekim zamanı yılın iklim koşullarına göre değişebiliyor.
Kuru şartlarda ekim yapılacaksa, iklime bağlı olarak olabildiğince erken ekim yapılması öneriliyor. Erken ekim kış ve ilkbahardaki yağışlardan istifade edilmesini sağlıyor.
Organik ayçiçeği üretimi yapıldığında, organik gübre ile gübrelenmiş toprakta büyütülen tohumların çok daha hızlı yetiştiği gözlemleniyor. Sürdürülebilir ayçiçeği tarımı için topraktaki organik madde oranının korunması büyük önem taşıyor.
Eğimli tarım arazilerinde eğime dik tarım yapılması öneriliyor.
Sulama sırasında suyun kök derinliğine kadar ulaşıp ulaşmadığının demir bir çubukla kontrolü gerekiyor. Suyun köke ulaşmasının sağlanması tavsiye ediliyor.
Ayçiçek üreticileri için bereket şimdi Tarfin’de. Tarfin Mobil’den fiyatları karşılaştırıp, alırken tasarruf edebilirsiniz. İster peşin ister vadeli tüm ihtiyaçlarınız için Tarfin Mobil’den kolay başvuru adımlarını tamamlayabilirsiniz. 

Ayçiçeği Ne Zaman Sulanır? Bakımı Nasıl Yapılır?

Ayçiçeği, ekimi takiben ortalama 5-10 günde çıkıyor. 15-20 gün sonra 10-15 cm boya ulaşıyor. Bu boy aynı zamanda tekleme zamanını işaret ediyor. Ayçiçekleri, 25-35 gün sonra 30-35 cm boyda görülüyor. Boğaz doldurma zamanı bu süreç oluyor. Ekimden 60-75 gün sonra fizyolojik oluma ulaşılıyor, ortalama 90-130 gün sonunda ise hasat ediliyor. Ayçiçeği ne zaman sulanır? Bu sorunun yanıtını merak ediyorsanız, öncelikle toprağın yapısını bilmelisiniz. Toprakta yeterince rutubet yoksa, bir çıkış sulaması yapılması gerekiyor. Erken gelişme döneminde topraktaki faydalı su azaldığında solgunluk belirtisi görülebiliyor. Bu durumda 15-20 gün arayla 2 veya 3 kez sulama yapılabiliyor. Sulama aralığı hesaplanırken topraktaki nemin solma noktasına inmemesine özen gösteriliyor. Faydalı su oranı %50 civarında olduğunda yeterli miktarda su takviyesi yapılıyor. Ülkemizde genellikle kuru koşullarda ayçiçek tarımı gerçekleştiriliyor. Kuvvetli ve derine ulaşan kök sistemi olan bitki, kuruluğa büyük oranda dayanıyor. Oysa, bitki yeterli su ile yetiştirildiğinde, toprağın nemi kontrol edilerek desteklendiğinde, %100’e kadar verim artışı olabileceği vurgulanıyor. Ayçiçekleri en fazla tabla oluşumu başlangıcında ve tanenin süt gibi olduğu dönem arasında suya ihtiyaç duyuyor. Bitki 40-50 cm boya geldiğinde de en uygun sulama zamanına işaret ediliyor. Özetle bitki 40-50 cm arasında olduğunda, tabla oluşumu döneminde ve çiçekler döküldüğünde bitkinin üç kez sulanması gerekiyor.''',
              style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class yapayzeka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Iron Ox ile Tarımda Yapay Zeka Uygulamaları'),
        backgroundColor: Colors.indigo,
      ),

      body: ListView(

        children: [

          Image.asset(
            'assets/yapay1.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Iron Ox ile Tarımda Yapay Zeka Uygulamaları',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''Robotlarla tarım yapan ve yetiştirilen ürünleri tüketicilere sunan Iron Ox ile tanıştınız mı? Eğer tarımın geleceği hakkında fikir sahibi olmak, akıllı tarım ve üretim teknolojileri hakkında ufkunuzu genişletmek istiyorsanız tanışmalısınız. Tarfin Blog, sizleri geleceğin tarımsal üretim ve ürün anlayışını sunan yapay zeka teknolojisiyle tanıştırıyor. ''',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/yapay2.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Iron Ox Nedir? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Robotik teknolojilerle yetiştirilen taze ürünler sayesinde sürdürülebilirlik vadediyor. Tarımı su, toprak ve enerjiden mümkün olduğunca bağımsızlaştırmaya çalışan Iron Ox ailesi, yenilikçi yaklaşımları sayesinde %90 daha az su, LED tabanlı dikey tarım çiftlikleri aracılığıyla %75 daha az enerji kullanıyor. Bu bağlamda, CO2 emisyonlarının önemli ölçüde azaldığı sistem, bitki verimini optimize ediyor ve büyüme döngüsünü süresini kısaltıyor. Kısaca robotik, bitki bilimi ve yapay zekayı kullanan girişimciler, taze bitki üretimini baştan yazıyor. Daha çok insanın yararlanabileceği, daha az su harcayan, iklime ve çevreye dost üretim anlayışını ilham verici bir hikaye olarak sizlerle paylaşıyoruz:  ''',

             style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/yapay3.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Robot Çiftliği Nedir? Nasıl Çalışır? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''Yapay zeka robotları, geniş kapsamlı üretim için büyük ölçekli tarım makinelerinin yerine getiremediği karmaşık görevleri büyük oranda insansız bir şekilde çözüyor. Örneğin, sebze yetiştirmek için robotik kollar görev alıyor. Hidroponik fıçılar ve otonom taşıyıcılar bir arada kullanılarak tarım yapılıyor. Henüz %100 otonom olma hedefini gerçekleştiremese de büyük ölçüde insan gücünden bağımsız çalışabilen sistemler, fidan dikimi ve paketleme kısımlarında insanların yönlendirmesi ile çalışıyor. Ancak çok kısa bir zaman içinde bu alanların da bağımsızlaşması ve insanların görevi olan birçok  tarımsal üretim işini robotların gerçekleştirmesi bekleniyor.  Yarı veya tam otomatik robot çiftlikleri geleceğin tarım dünyası için birçok avantajı beraberinde getiriyor. İşte robot çiftliklerinin avantajları: 

Yapay zeka ile tarımsal üretim için devasa makinelere gerek yok. Küçük boyutlardaki robotik kolların yaptığı işlemler, dar alanlarda tarıma imkan tanıyor. Böylelikle robotik çiftlikler, şehir içlerine dahi konumlanabiliyor. Örneğin Iron Ox firmasının üretim tesisi, satış yapılan markete sadece 0,6 mil mesafede. Bu da taşıma maliyetlerini minimuma indiriyor. 
Taşıma maliyetlerinin yanı sıra karbon ayak izi de büyük oranda azalıyor. Robotik çiftliklerin çevre açısından da önemli düzeyde avantaj sağladığı biliniyor. 
Üretim ile satış merkezlerinin yakın olması, devamlı taze ürün tedarik edilmesine imkan tanıyor. Böylelikle raf ömrü kısa olan yeşillikler bile hızla market raflarında yerini alabiliyor. 
Sera üretimi sistemi ile çalışan Iron Ox, yıl boyu aralıksız üretime devam edebiliyor. Mevsim şartlarından etkilenmeden sürekli üretim yapabiliyor. 
Daha az elektrik ve su kullanımı sayesinde kaynaklardan büyük oranda tasarruf sağlanıyor. 
Kapalı devre sistemler kullanan robot çiftliklerinde, hiçbir şey israf olmuyor. Topraksız tarım sırasında kullanılan su filtreleniyor, arıtılıyor, geri dönüştürülüyor. 
Geleneksel tarımda yapılan toprak analizi, akıllı sensörler ile yerini anbean takip edilen üretime bırakıyor. Bitkilere verilen tüm besinler ölçülüyor, analiz ediliyor ve gerekli bileşenlerle eksikler tamamlanıyor. Bitkiler ihtiyaç duydukları tüm besinleri alırken, gerekli olmayan hiçbir maddeye maruz kalmıyor. 
Ayrıca robotlar tarafından yapılan testler, geliştirmeler ve güncellemeler sonucu, her hasatta bir sonraki mahsulün daha verimli olması için denemeler. Dünyanın gıda tüketimi dolayısıyla yeni bir krizin eşiğinde olduğu tahmin ediliyor. Öyle ki 2050 yılına dek nüfusun 9 milyarın üzerine çıkması bekleniyor. Ancak dünyada bu kadar nüfusu besleyecek bir tarım arazisi bulunmuyor. Diğer bir deyişle, üreme ve tüketme hızımız gıda üretim kapasitemizden çok daha fazla. Halihazırda gerçekleştirilen sürdürülebilirlik kampanyaları, israfa karşı sıfır atık çalışmaları, iklim krizine karşı uyarılar da bu bilgi ile ilişkili. Zira geleneksel tarımsal üretim anlayışı ile gelecekte tüm dünyanın doyması mümkün değil. Üstelik bir de erozyon ve küresel doğal afetler nedeniyle hızla kuraklaşan bir dünyada yaşıyoruz. Bu bağlamda kuraklığa dayanıklı toprak oluşturma girişimleri de çözüm üretmek adına birbirini kovalıyor. Tüm bu nedenlerden ötürü, gelecekte topraksız üretime ihtiyaç olacağı öngörülüyor. Ayrıca kentlere yapılan göçler, insanların uzmanlaşma gereksinimi tarımsal üretimde çalışacak insan sayısının her geçen gün azalmasına yol açıyor. Buna bir de değişen iklim, verimsizleşen toprak ve şehirleşen arazi doneleri eklendiğinde, geleneksel üretim anlayışının önümüzdeki yüzyıllarda tarihe karışacağını ön görebilmek mümkün. ''',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Koyunlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Koyun Yetiştiriciliği'),
        backgroundColor: Colors.deepPurple,
        leading: BackButton(
          color: Colors.black,
        ),
      ),

      body: ListView(

        children: [

          SizedBox(height: 20),
          Text(
            'Küçükbaş hayvancılık işletmesi kuracaklar nereden başlamalı?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Küçükbaş hayvan yetiştiriciliği Anadolu coğrafyasında tarih boyunca önemli bir yere sahip oldu. Günümüz koşullarında küçükbaş hayvancılık yapmak isteyenler nereden başlamalı, koyunculuk için mera şart mı, Türkiye şartlarında kapalı koyunculuk sürdürülebilir mi, iklimin koyun ırkı üzerine etkisi var mı, gibi sorularımızı Bakanlığımız Bandırma Koyunculuk Araştırma Enstitüsü Müdürü Erdinç Veske cevapladı. Türkiye coğrafyasının küçükbaş hayvan yetiştiriciliği özellikle koyun için uygun olduğu söyleniyor. Bu konuda istenilen noktaya gelmek için neler yapılabilir? Ülkemizin coğrafi yapısı ile geniş meralarını göz önüne aldığımızda, düşük maliyetli kaliteli hayvancılık yapılabilmesi için gereken potansiyele sahip olduğunu söyleyebiliriz. Bu meraların büyük çoğunluğu düşük verime sahip olduğundan küçükbaş hayvancılık yapılması daha uygun bir tercih olacak. Yerli koyun ırklarımızın büyük bir çoğunluğu (yaklaşık %90’ı) meraya dayalı yetiştiriciliğe uygun. Bu nedenle, mera alanlarımızın vasıflarının iyileştirilmesi ve olanların  korunması hatta mümkünse arttırılması küçükbaş yetiştiriciliği yapılabilmesi için en önemli koşul. Küçükbaş hayvan yetiştiriciliği yapacak olanlar illa bunu mera ile yapmak zorunda mı? Kapalı koyunculuk sürdürülebilir mi? Kapalı koyunculuk yapıp kar ettiğini söyleyenler var bu konuda neler söylersiniz? Yerli ırklarımızın genetik kapasiteleri ve yapıları dolayısı ile tamamen kapalı olarak yetiştiriciliğe uygun değil. Tamamen kapalı sistemde yem harcamalarının karşılığı olarak elde edilecek et ve süt miktarı karlılığı istenen seviyede sağlamaz. Ülkemizin tek entansif ırkı olan ve koyun varlığımızın yaklaşık yüzde 10’u nu teşkil eden Merinos ve melezlerinde içeride besi faaliyeti yürütülebilse de damızlık koyunların en azından fiziki sağlıkları için merada yayılmaları gerekir. Kısacası, yetiştirici eğer kârlı, sağlıklı ve sürdürülebilir küçükbaş hayvan yetiştiriciliği hedefliyorsa meralardan azami seviyede faydalanması şarttır. Merinos ırkında veya az sayıda da olsa ithal olarak gelen et verimi yüksek ırklarda, içeride kuzu besisi yapılması karlılık için uygun olur, 45 günlük yaşta besiye alınan kuzu yoğun besi uygulanarak kapalı ortamda 105-120 günlük iken kesime gönderilir. Koyunculuk işletmeleri sadece kuzu temin edip besi yapan az sayıdaki işletme  dışında büyük oranda karma işletmelerdir. Bu nedenle büyük oranda mera ihtiyacı bulunur. Yerli ırklarımızda kaba yem kaynağı olarak mera ihtiyacı bulunmasına rağmen, mera alanlarının yeterli ve istenilen kalitede olmadığı bölgelerde zaten değişik oranlarda içeride yemleme yapmak gerekir.  Saydığımız tüm faktörler ışığında yetiştirilen ırk ve yetiştiricilik yapılan bölgenin, mera  özellikleri beslenme şeklini belirler. Başka bir deyişle, yetiştiricilik şeklini ekstansif(tamamen meraya dayalı) ile entansif (tamamen içeride besleme) arasında değişik noktalarda seyretmesi çevredeki meraların özelliğine bağlıdır. ''',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/koyun1.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Koyun yetiştirmek isteyenlerin karar verme kriterleri neler olmalı,  girişimci ilk olarak ne yapmalı,  hangi imkanlara sahip olması gerekir? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Bölgeye uygun ırk seçimi, hastalıklara ve olumsuz çevresel koşullara karşı dayanıklılık açısından çok önemli. Yetiştiriciliği yapılacak koyun ırkına karar verildikten sonra kaliteli ve üstün damızlık vasfına sahip hayvanların temini de son derece önemli. Ayrıca meraya dayalı üretim yapılacaksa bölgede mera varlığı ile meraya yakın hayvan barınağına da ihtiyaç var. Girişimcinin üzerinde durması gereken diğer bir husus ise koyunlardan elde edeceği et/süt ve yapağı gibi hayvansal ürünleri pazarlayabilmesi. KOMBİNE IRKLARIN ET VE SÜT VERİMİ DENGELİ Bir girişimci işletme kurarken süt ve et ırkı tercihi yapmalı mı? İşletme tipine göre, olmazsa olmazları var mı? Üretim yapılacak alanda hakim ırkların verim özellikleri bu konuda belirleyici oluyor. Örneğin Kıvırcık ırkı et yönünden en önemli ırklarımızdan olmasının yanı sıra süt verimi ile de peynir üretiminde önemli rol oynayan kombine bir ırk. Aynı üretim alanında yetiştirilen Karacabey Merinosu ırkı ise et-yapağı özellikli kombine bir ırkımız olup et verimi Kıvırcığa oranla daha yüksektir fakat Kıvırcık ırkı karlı üretim için 9 ay meraya ihtiyaç duyarken soğuğa dayanımı Merinosa göre daha iyidir. Merinos ırkı ise içeride hazır yem tüketimi fazla olmasına rağmen kârlılığını daha fazla et sağlayarak korumaktadır. Yerli ırklarımızın tamamına yakını yetiştirme modellerine göre kombine ırklar olup bunların et ve süt verimi dengelidir.  Kıvırcık, Gökçeada, Akkaraman, İvesi ve Tahirova  ırkları kombine ırklarımıza başlıca örneklerdir, süt ağırlıklı olarak üretimi yapılan başlıca ırkımız Sakız iken et üretimi olarak başlıca ırkımız Merinos ve melezleridir. ''',
            style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/koyun2.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'Koyun ve keçi yetiştirmek isteyenler, anaç koyun ve keçileri nereden alabilir? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Koyun yetiştiriciliğinde başarılı olmak isteyen bir girişimci öncelikli olarak, bölgeye ve işletme tipine uygun koyun ırkına karar verip bu ırkın da yüksek verimli sağlıklı bireylerini seçerek başlangıç sürüsünü oluşturması gerekir. Eğer yakınında yetiştirmek istediği ırkta yürütülen “Halk Elinde Küçükbaş Hayvan Islahı Projesi” varsa, öncelikli olarak buradan teminini gerçekleştirebilir. Bu mümkün değilse, anaç koyun ve keçilerin küçükbaş hayvan yetiştiriciliğinde iyi bilinen güvenilir işletmelerden hayvanın verim/performans kayıtları ile dış yapı özellikleri birlikte değerlendirilerek seçilmesi gerekir. Etrafımızda genellikle şehirde yaşamış insanların, keçi, koyun veya tavuk  çiftliği kurma heveslerini görüyoruz. Hayvancılıkta başarı için tecrübe önemli bir faktör mü? Bu düşüncede olanlara tavsiyeniz var mı? Her işte olduğu gibi hayvancılıkta da başarılı olmak için verilen emek kadar bilgi ve tecrübeye sahip olmak gerekir. Halk Elinde Küçükbaş Hayvan Islahı Projeleri ile asli işi hayvancılık olan üreticilerimiz bile sürü yönetimi, damızlık seçimi, yavru bakımı ve hastalıklara karşı alınacak önleyici tedbirler konusunda bilgi ve tecrübeleri uzman teknik personeller vasıtası ile geliştirildiğinde, üreticilere çok önemli ekonomik kazanımlar sağladığı görülmüştür. Hayvancılıkta başarı için doğru ırk, doğru yer, doğru bakım ve doğru bilgiye ulaşmak gerekmekte olup bunun için gerek Kurumumuz gerekse Bakanlık İl ve İlçe Teşkilatlarımız görevlerinin başındadır. ''',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class devrim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Hızlı ıslah teknolojisi tarımda ikinci yeşil devrime yol açar mı?'),
        backgroundColor: Colors.teal,
        leading: BackButton(
          color: Colors.black,
        ),
      ),

      body: ListView(

        children: [
          SizedBox(height: 20),
          Text(
            'Son yıllarda bütün dünyada gıda temini ve güvenliği en stratejik konuların başında gelmekte. Gıda temini için tohum çok önemli. Tohum ıslahı ile ilgili çalışmalar ise yıllardır aralıksız devam etmekte. Tohum ıslah çalışmalarında 2018 yılında yaşanan önemli bir gelişmeyle hızlı ıslah teknolojisi (speed breeding) olarak adlandırılan yeni bir yöntem geliştirilmiştir. Hızlı ıslah yöntemi, ülkemizde ilk kez Karamanoğlu Mehmetbey Üniversitesi tarafından TÜBİTAK 1005 proje desteği kapsamında yürütülmüş ve başarıyla sonuçlandırılmıştır.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''İnsanlık için geleceğin en stratejik başlığı şüphesiz sürdürülebilir gıda temini ve güvenliğidir. Bu durumun yaşanmasında nüfus artışı ve küresel iklim değişikliğinin önemli bir etkisi vardır. Başka bir ifadeyle tarımsal üretim için şartların daha zorlu hale geleceği öngörülen bir dünyada daha fazla insanı beslemek zorunda kalacağız. Gıda güvenliğinin sağlanabilmesi için değişen iklim şartlarında bitkilerin veriminin aynı seviyede kalması hatta artırılması gerekmektedir. Bunun başarılmasında ilk akla gelen ve en çevreci yöntem değişen iklim şartlarına uygun tohumların geliştirilmesidir. İlk tohum geliştirme çalışmaları seleksiyon (seçim) şeklinde binlerce yıl önce başlamıştır. Üreticiler daha verimli, kaliteli ve zor şartlara dayanıklı tohumları seçmiş ve onları bir sonraki yılın tohumluğu olarak kullanmışlardır. Daha sonra melezleme yoluyla yeni tohumlar geliştirilmeye başlamış ve 1953 yılında DNA’nın keşfedilmesiyle birlikte tohum geliştirme çalışmalarında önemli gelişmeler yaşanmıştır. Tohum geliştirme çalışmalarında önemli aşamalardan biri, melezleme sonrasında tohumların genotipik olarak saflaşmasının beklendiği ve erken generasyon olarak adlandırılan dönemdir. 1960’lı yıllarda bu sürenin hızla geçilmesi amacıyla kuzey ve güney yarım kürelerde ekim yapılarak mekik ıslahı dediğimiz yöntem kullanılmış ve yılda iki generasyon ürün yetiştirilmiştir. Bilindiği üzere yarım kürelerde aynı zaman diliminde farklı iklimler yaşanmaktadır. Tohum geliştirme çalışmaları daha sonra sıcaklık ve ışık kontrolünün yapıldığı seralarda yürütülmeye başlanmıştır. Serada tohumların saflaştırıldığı çalışmalarda yılda 2-3 generasyon ürün alınmaya başlanmıştır. Tohum geliştiren araştırma kuruluşlarının çoğu sera imkânlarından faydalanmaktadır. Serada yürütülen ıslah çalışmalarında 2018 yılında önemli bir gelişme yasanmış ve hızlı ıslah teknolojisi (speed breeding) olarak adlandırılan yeni bir yöntem geliştirilmiştir. ''',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/islah2.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'HIZLI ISLAH TEKNOLOJİSİ NEDİR? ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Avustralya’da bulunan Queensland Üniversitesinden Dr. Lee Hickey ve çalışma arkadaşları NASA’nın uzayda bitki yetiştirme çalışmalarından esinlenerek melezleme sonrasında tohum geliştirme çalışmalarının hızla tamamlanması amacıyla hızlı ıslah teknolojisini geliştirmişlerdir. Bu teknoloji oldukça basit üç uygulamaya sahiptir. Bunlar; seradaki ışıklandırma süresinin 22 saate çıkarılarak bitkilerin daha uzun süre fotosentez yapmasının sağlanması, tohumların tamamen kurumadan hasat edilmesi ve hasat edilen tohumların kurutulmasıdır. Son olarak elde edilen tohumlar tekrar ekilirken tohumlar 4°C’de tutulmakta ve oda sıcaklığında çimlenmeleri sağlanmaktadır. Yöntemin buğdayda uygulanmasıyla yazlık buğdayın tohum geliştirme çalışmalarında yılda 6 generasyon ürün, kışlık buğdayda ise 3-4 generasyon ürün alınabilmektedir. 2022 yılında geliştirilen hızlı vernalizasyon yöntemiyle kışlık buğdayda da yılda 5 generasyon alınması mümkün hale gelmiştir.  ''',
            style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/islah1.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'BİR İKİ YIL GİBİ KISA SÜREDE TOHUMLARIN GELİŞTİRİLMESİ TAMAMLANABİLMEKTEDİR ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' Hızlı ıslah teknolojisiyle tohumların geliştirilmesinde moleküler yöntemlerinin de kullanılması hedeflenen tohumların geliştirilmesinde büyük kolaylıklar sağlamaktadır. Bu teknoloji kullanılarak bir-iki yıl gibi kısa bir sürede tohum geliştirme çalışmalarının tamamlanması ve sonrasında arazi çalışmalarına başlama fırsatı sunması tohum geliştirme çalışmalarında yeni bir dönem başlatmıştır. Son yıllarda hızlı ıslah teknolojisiyle geliştirilen tohumların sera şartlarında bitkisel özelliklerinin belirlenebilmesi amacıyla görüntü işleme ve yapay zeka çalışmaları da yoğun şekilde kullanılmaya başlanmıştır. Tohum geliştirme çalışmaları yanında değişen iklim şartları bazı ürünlerde bitkisel üretimin Hollanda örneğinde olduğu gibi yoğun şekilde seralara taşınmasına neden olacağı öngörülmektedir. Dolayısıyla hızlı ıslah teknolojisi serada bitkisel üretim için de katkılar sağlayacaktır. Hızlı ıslah teknolojisi tohum geliştirme süresinin kısaltılmasını sağlamakla birlikte bilimsel çalışmalarda kullanılmak üzere nitelikli genetik materyallerin geliştirmesinde de önemli yararlar sağlamaktadır. Özellikle kuraklık ve iklim değişikliği gibi birçok stres faktörlerinin arttığı son yıllarda tarımsal üretimin artırılması amacıyla hızlı ıslah teknolojisi stratejik bir öneme sahiptir. Tarımsal araştırma dünyasında önemli bir etki doğuran ve bütün dünyada hızla yaygınlaşan hızlı ıslah teknolojisinin ikinci yeşil devrim olarak adlandırılacağı öngörülmektedir. ''',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class tarimda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Ulusal su planı hazırlandı'),
        backgroundColor: Colors.amber,
        leading: BackButton(
          color: Colors.black,
        ),
      ),

      body: ListView(

        children: [

          SizedBox(height: 20),
          Text(
            'İklim değişikliğinin başta su kaynakları olmak üzere bütün doğal kaynaklar üzerindeki etkileri dünyada olduğu gibi ülkemizde de gündem konularından. Gıda güvenliği ve su verimliliği açısından su kaynaklarımızın etkin kullanılması için yapılan çalışmalar hakkında Su Yönetimi Genel Müdürü Afire Sever ile bir söyleşi gerçekleştirdik.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '''İklim değişikliğinin etkilerini her alanda her geçen gün daha fazla hissediyoruz. İklim değişikliği; tarımsal faaliyetler, gıda güvenliği, sağlık, turizm başta olmak üzere insanın merkezinde olduğu tüm sistemleri oldukça olumsuz yönde etkilemektedir. İklim değişikliğinin su kaynaklarına etkisi de ayrıca üzerinde durulması gereken bir konu olarak karşımıza çıkmaktadır. Birleşmiş Milletlerin iklim değişikliği raporunda, küresel ısınmanın "temel insan ihtiyaçları için suyun mevcudiyetini, kalitesini ve miktarını etkileyeceği" ve bu durumun "potansiyel olarak milyarlarca insanın" su ve sanitasyon (arındırma) hakkını tehdit edeceği ifade edilmektedir. ''',
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            'assets/su1.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'KULLANILABİLİR SU POTANSİYELİMİZ 112 MİLYAR METREKÜP ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            ''' 
Ülkemiz Akdeniz Havzası'nda, yani iklim değişikliğinin olumsuz etkilerinin en fazla yaşanacağı bölgede yer almakta olup gelecekte ülkemizde daha sık, şiddetli ve uzun süreli kuraklıklar, sıcak hava dalgaları, orman yangınları, su kıtlığı gibi olumsuz durumların görülmesi beklenmektedir. Ülkemizin mevcut su potansiyeline gelecek olursak, teknik ve ekonomik kullanılabilir su potansiyelimiz 112 milyar metreküptür. Toplam su tüketimimiz ise 58,41 milyar metreküp olup, bunun yüzde 77’si sulama suyu, yüzde 23’ü ise içme-kullanma ve sanayi suyu ihtiyaçlarının karşılanmasında kullanılmaktadır. Nüfusumuzun 84,6 milyon kişi olduğunu düşünürsek, ülkemizde kişi başına düşen kullanılabilir yıllık su miktarının 1.323 metreküp olduğu görülmektedir. Bu değerin 2050 yılında nüfus artışı ile birlikte 1.069 metreküpe kadar düşmesi beklenmektedir. Uluslararası göstergelere göre ülkemizin bugün su stresi altında olduğu, yakın gelecekte ise su kıtlığı çeken bir ülke durumuna geleceği öngörülüyor. Diğer taraftan, Su Yönetimi Genel Müdürlüğü olarak su kaynaklarının iklim değişikliğinden nasıl etkileneceğine yönelik yürüttüğümüz çalışmalara göre, su kaynaklarımızın 2100 yılına kadar yüzde 20-30’lara varan oranlarda azalabileceğini öngörüyoruz. Bu da bize su kaynaklarının korunması, verimli ve sürdürülebilir şekilde kullanılmasıyla ilgili planların ve su politikalarının hayata geçirilmesinin önemini bir kez daha göstermektedir.   ''',
            style: TextStyle(fontSize: 16),
          ),     Image.asset(
            'assets/su2.jpg',
            width: 300,
            height: 300,

          ),
          SizedBox(height: 20),
          Text(
            'ULUSAL SU PLANI HAKKINDA',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          Text(
            ''' Genel Müdürlük olarak tüm ekosistem unsurlarını doğrudan etkileyen su kaynaklarının bütüncül havza yönetimi anlayışı ile miktar ve kalite bakımından korunması ve su güvenliğinin sağlanması maksadıyla birçok çalışma yapıyoruz. Millî  su politikasının ortaya konulması bağlamında Türkiye’nin su ile ilgili mevcut ve gelecek politikalarının belirlenmesi ve uygulanması, su kaynaklarımızın koruma ve kullanma dengesi gözetilerek, miktar ve kalite açısından sürdürülebilir yönetimi için katılımcı ve bütüncül bir yaklaşımla Ulusal Su Planı’nı hazırladık. İlaveten, havzalarımızda yer alan su kaynaklarımızın miktar ve kalite olarak korunması maksadıyla Nehir Havza Yönetim Planlarını hazırlıyoruz. Bu planlar ile havza bazında su kaynakları üzerindeki bütün baskı ve etkileri belirliyor, yapılan izleme çalışmaları ile suyun miktar ve kalite durumlarını tespit ediyor ve bütün su kütlelerinde iyi su durumuna ulaşılması maksadıyla bilimsel yaklaşımları temel alan hidroloji ve su kalitesi modellerini kullanarak gerekli tedbirleri belirliyoruz. TAŞKIN TAHMİN VE ERKEN UYARI SİSTEMİNİN KURULUMU ÇALIŞMALARINA DEVAM EDİYORUZ İçme-kullanma suyu temin edilen veya edilmesi planlanan su havzalarının korunması, kirlenmesinin önlenmesi ve sürdürülebilir kullanımının sağlanabilmesi için havzaya özgü koruma esasları ve koruma alanlarının belirlendiği İçme-Kullanma Suyu Havza Koruma Planlarını hazırlıyoruz. Taşkın Yönetim Planlarını hazırlıyoruz. Bu planlarla taşkın riski taşıyan alanları belirliyor, sayısal hidrodimanik modeller kullanarak suyun yayılımını ve derinliğini gösteren taşkın tehlike ve risk haritaları ile tahliye planlarını hazırlıyor ve gerekli tedbirleri belirliyoruz. Ayrıca muhtemel taşkının zararlarını asgari seviyeye indirmek için Taşkın Tahmin ve Erken Uyarı Sisteminin (TATUS) kurulumu çalışmalarına devam ediyoruz. Kuraklık Yönetim Planları ile muhtemel kuraklık risklerinin olumsuz etkilerini asgari düzeye indirmeyi ve kuraklıklara karşı hazırlıklı olmayı hedefliyoruz. Planlar kapsamında; havzanın kuraklık analizlerini, mevcut ve gelecek su potansiyeli tespitini yaparak, tarım, içme suyu, sanayi, ekosistem, turizm sektörlerine kuraklığın etkilerini belirliyor ve olası kuraklık durumlarına hazırlıklı olmak maksadıyla tedbirleri ortaya koyuyoruz. Diğer taraftan, günümüz Türkiye’sinin ihtiyaçlarını karşılayabilecek nitelikte, su kaynaklarının sürdürülebilir şekilde korunması, kullanılması, iyileştirilmesi, geliştirilmesine yönelik Su Kanunu Taslağı’nı hazırladık ve yürürlüğe girmesi için çalışmalarımıza devam ediyoruz. Burada saydığımız çalışmalar su kaynaklarımızın korunması dolayısıyla sağlıklı gıdaya erişmek için toprağımızın korunmasına yardımcı olan başlıca çalışmalar olup, bunun yanı sıra burada ifade etmeye fırsat bulamadığım birçok çalışmayı da aynı maksatla büyük bir gayretle sürdürüyoruz. ''',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}