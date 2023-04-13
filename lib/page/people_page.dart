import 'package:flutter/material.dart';
import 'package:tarim_gelistirme/widget/navigation_drawer_widget.dart';

class PeoplePage extends StatelessWidget {
  final anahtar = GlobalKey<FormState>();
  String? alanAdi;
  double? _alanBoyu;
  double? _alanEni;
  double? tohum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Tarla Bitkileri Hesaplama Sayfası'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Form(
        key: anahtar,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tarla Adı',
                ),
                onSaved: (value) {
                  alanAdi = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen tarla adını girin';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tarla boyunu giriniz (metre)',
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _alanBoyu = double.parse(value!);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen tarla büyüklüğünü girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tarla enini giriniz (metre)',
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _alanEni = double.parse(value!);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen tarla büyüklüğünü girin';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _submitForm(context),
                child: Text('Hesapla'),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void _submitForm(BuildContext context) {
    if (anahtar.currentState!.validate()) {
      anahtar.currentState!.save();
      double alan = _alanBoyu! * _alanEni!;
      double donum = alan / 2500;
      double toplamAlan = donum * 90;
      double damlamaBoru = donum * 3300;
      double damlamaTopu = donum * 1.2;
      double tohum = donum * 6.5;
      double torba = tohum / 13;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Bilgilendirme paneli'),
            content: Text(
                  'tarla adı: $alanAdi Tarla büyüklüğü: $donum dönüm \n'
                  'Atmanız gereken minimum gübre miktarı: $toplamAlan kg. \n'
                  'Kullanmanız gereken damlama borusu uzunluğu $damlamaBoru metredir \n'
                  '$damlamaTopu kullanılacak damlama topu ihtiyacınız var \n'
                  '$tohum kilo tohum ihtiyacınız var (danelik mısır için) \n'
                  '$torba torba mısıra ihtiyacınız var',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }
}
