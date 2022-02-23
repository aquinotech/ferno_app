import 'package:ferno_app/widgets/menu_widget.dart';
import 'package:ferno_app/widgets/products_widget.dart';
import 'package:ferno_app/widgets/sales_widget.dart';
import 'package:ferno_app/widgets/settings_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MenuWidget(),
    ProductsWidget(),
    SalesWidget(),
    SettingsWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 10.0, blurRadius: 50.0),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              label: 'Menu',
              backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory),
              label: 'Produtos',
                backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Vendas',
                backgroundColor: Color(0xff000000),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuração',
                backgroundColor: Color(0xff000000),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffe5461f),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
