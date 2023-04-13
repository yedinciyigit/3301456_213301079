import 'package:flutter/material.dart';
import 'package:tarim_gelistirme/main.dart';
import 'package:tarim_gelistirme/page/favourites_page.dart';
import 'package:tarim_gelistirme/page/people_page.dart';
class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Material(
        color: Color.fromRGBO(37, 51, 119, 1.0),
        child: ListView(
          children: <Widget>[

            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Forum',
                    icon: Icons.menu,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Hesapla',
                    icon: Icons.calculate,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Borsa',
                    icon: Icons.currency_exchange,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Hava Durumu',
                    icon: Icons.wb_cloudy_rounded,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Hesabım',
                    icon: Icons.manage_accounts_rounded,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'İletişim',
                    icon: Icons.call_rounded,
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;


      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainPage(),
        ));
        break;
    }
  }
}
