import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tarim_gelistirme/widget/navigation_drawer_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Hakkında';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: MainPage(),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                'assets/hakkinda.jpg', // Logo resminizin yolunu belirtin
                height: 250,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Biz Kimiz?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'ÖZTÜRKLER Firma adı olarak 2019 yılında kurulduk. Amacımız müşterilerimize en iyi hizmeti ve ürünleri sunmak için çalışmak.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Misyonumuz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Müşterilerimize en kaliteli hizmeti ve ürünleri sunmak. Sektörde öncü olmak ve kalite standartlarını belirlemek.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Vizyonumuz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Müşterilerimize sürekli yenilikçi ürünler ve hizmetler sunarak farklılaşmak. Müşteri memnuniyetini her zaman ön planda tutmak ve sektörün öncü firmalarından biri olmak.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'İletişim Bilgilerimiz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text(
                  ' 213301079@ogr.selcuk.edu.tr',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text(
                  '+90 (212) 555 55 55',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text(
                  'Kosova Mah. Selçuklu/Konya',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
