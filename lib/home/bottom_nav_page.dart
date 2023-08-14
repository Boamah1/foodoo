import 'package:foodoo/home/logout_page.dart';
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
    const LogOutPage(),
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
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          onTap: onTap,
          currentIndex: currentIndex,
          iconSize: 25,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          selectedItemColor: Colors.black,
          // selectedIconTheme: IconThemeData(
          // color: Colors.blue,
          // ),
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_outlined),
              // Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(Icons.shopping_cart_outlined),
              //  FaIcon(
              //   FontAwesomeIcons.cartShopping,
              //   size: 15.sp,
              //   color: Colors.grey[700],
              // ),
              //  Icon(Icons.insert_chart),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(Icons.person_2_outlined),
            ),
            BottomNavigationBarItem(
              label: "Info",
              icon: Icon(Icons.notification_add_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
