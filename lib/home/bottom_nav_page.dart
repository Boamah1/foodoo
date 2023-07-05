import 'package:foodoo/hooks/export.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List pages = [
    const HomePage(),
    const OrderPage(),
    const CartPage(),
    // const AboutPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          onTap: onTap,
          currentIndex: currentIndex,
          iconSize: 25,
          unselectedItemColor: Colors.redAccent.withOpacity(0.5),
          selectedItemColor: Colors.black,
          // selectedIconTheme: IconThemeData(
          // color: Colors.blue,
          // ),
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
           const  BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
              // Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Cart",

              icon: 
              FaIcon(
                FontAwesomeIcons.cartShopping,
                size: 15.sp,
                color: Colors.grey[700],
              ),
              //  Icon(Icons.insert_chart),
            ),
           const BottomNavigationBarItem(
              label: "Order",
              icon: Icon(Icons.event_note),
            ),
            // BottomNavigationBarItem(
            //   label: "Info",
            //   icon: Icon(Icons.info),
            // ),
          ],
        ),
      ),
    );
  }
}
