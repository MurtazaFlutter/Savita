import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'categories_screen.dart';
import 'home.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const HomeScreen(),
      'title': 'Home Screen',
    },
    {
      'page': const CategoriesScreen(),
      'title': 'Categories Screen',
    },
    // {
    //   'page': const CartScreen(),
    //   'title': 'Cart Screen',
    // },
    // {
    //   'page': const UserScreen(),
    //   'title': 'user Screen',
    // },
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final themeState = Provider.of<DarkThemeProvider>(context);

    //bool isDark = themeState.getDarkTheme;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedIndex]['title']),
      // ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        //  backgroundColor: isDark ? Theme.of(context).cardColor : Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        // unselectedItemColor: isDark ? Colors.white10 : Colors.black12,
        // selectedItemColor: isDark ? Colors.lightBlue.shade200 : Colors.black87,
        onTap: _selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1
                ? IconlyBold.category
                : IconlyLight.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? IconlyBold.bag : IconlyLight.bag),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 1 ? IconlyBold.chat : IconlyLight.chat),
            label: "Categories",
          ),
          // BottomNavigationBarItem(
          //   icon:
          //       Consumer<CartProvider>(builder: (context, cartProvider, child) {
          //     return Badge(
          //       backgroundColor: Colors.lightBlueAccent,
          //       label: Text(
          //         cartProvider.getCartItems.length.toString(),
          //       ),
          //       child: Icon(
          //         _selectedIndex == 1 ? IconlyBold.buy : IconlyLight.buy,
          //       ),
          //     );
          //   }),
          //   label: "Cart",
          // ),
          // BottomNavigationBarItem(
          //   icon: Badge(
          //       toAnimate: true,
          //       shape: BadgeShape.circle,
          //       badgeColor: Colors.blue,
          //       borderRadius: BorderRadius.circular(8),
          //       position: BadgePosition.topEnd(top: -7, end: -7),
          //       badgeContent: FittedBox(
          //           child: TextWidget(
          //               text: '1', color: Colors.white, textSize: 15)),
          //       child: Icon(
          //           _selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy)),
          //   label: "Cart",
          // ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 3 ? IconlyBold.user2 : IconlyLight.user2),
            label: "User",
          ),
        ],
      ),
    );
  }
}
