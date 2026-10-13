import 'package:flutter/material.dart';
import 'package:flutter_assignment_smit_ui/theme/theme.dart';
import 'package:flutter_assignment_smit_ui/widgets/app_drawer.dart';
import 'package:flutter_assignment_smit_ui/widgets/listtile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  //int _currentIndex = 0;
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);
  final ValueNotifier<int> _selectedTileNotifier = ValueNotifier<int>(0);
  List<Widget> get _screens => [
    Column(
      children: [
        Container(
          //  margin: EdgeInsets.only(right: 60),
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    hintText: "What are you looking for?",
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Apptheme.Lighttheme.hintColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Apptheme.Lighttheme.hintColor,
                      ),
                    ),
                    focusColor: Apptheme.Lighttheme.indicatorColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Apptheme.Lighttheme.indicatorColor,
                      ),
                    ),
                    iconColor: Apptheme.Lighttheme.hintColor,
                    hintStyle: TextStyle(color: Apptheme.Lighttheme.hintColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Apptheme.Lighttheme.hintColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Apptheme.Lighttheme.hintColor, // Border Color
                    width: 2,
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CircleAvatar(
                        radius: 22,

                        backgroundColor: Theme.of(context).primaryColor,
                        child: Icon(
                          Icons.menu,
                          color: Apptheme.Lighttheme.hintColor,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Builder(
          builder: (context) {
            return TabBar(
              dividerColor:
                  Colors.transparent, // Clears the unwanted baseline divider
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              //  unselectedLabelColor: Apptheme.Lighttheme.cardColor,
              labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              unselectedLabelStyle: TextStyle(
                color: Apptheme.Lighttheme.cardColor,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),

              splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              indicator: BoxDecoration(
                color: Apptheme.Lighttheme.indicatorColor,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: [
                _buildPillTab("Women", context),
                _buildPillTab("Men", context),
                _buildPillTab("Kids", context),
              ],
            );
          },
        ),
        SizedBox(height: 20),
        Expanded(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              ValueListenableBuilder(
                valueListenable: _selectedTileNotifier,
                builder: (context, selectedIndex, child) {
                  return ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Gift Card +",
                        isSelected: selectedIndex == 0,
                        onTap: () {
                          _selectedTileNotifier.value = 0;
                        },
                        //isSelected: true,
                      ),
                      CustomListTile(
                        icon: Icons.shopify,
                        title: "Essiential Shop winger Edition",
                        isSelected: selectedIndex == 1,
                        onTap: () {
                          _selectedTileNotifier.value = 1;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.bug_report,
                        title: "New in",
                        isSelected: selectedIndex == 2,
                        onTap: () {
                          _selectedTileNotifier.value = 2;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.arrow_outward,
                        title: "Trends",
                        isSelected: selectedIndex == 3,
                        onTap: () {
                          _selectedTileNotifier.value = 3;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.checkroom,
                        title: "Clothing",

                        // isSelected: false,
                        isSelected: selectedIndex == 4,
                        onTap: () {
                          _selectedTileNotifier.value = 4;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.space_dashboard,
                        title: "Shoes",
                        isSelected: selectedIndex == 5,
                        onTap: () {
                          _selectedTileNotifier.value = 5;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.sports_soccer,
                        title: "Sports",
                        isSelected: selectedIndex == 6,
                        onTap: () {
                          _selectedTileNotifier.value = 6;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.run_circle_outlined,
                        title: "Sports",
                        isSelected: selectedIndex == 7,
                        onTap: () {
                          _selectedTileNotifier.value = 7;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Accessories",
                        isSelected: selectedIndex == 8,
                        onTap: () {
                          _selectedTileNotifier.value = 8;
                        },
                        // isSelected: false,
                      ),
                    ],
                  );
                },
              ),
              ValueListenableBuilder(
                valueListenable: _selectedTileNotifier,
                builder: (context, selectedIndex, child) {
                  return ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Gift Card +",
                        isSelected: selectedIndex == 0,
                        onTap: () {
                          _selectedTileNotifier.value = 0;
                        },
                        //isSelected: true,
                      ),
                      CustomListTile(
                        icon: Icons.shopify,
                        title: "Essiential Shop winger Edition",
                        isSelected: selectedIndex == 1,
                        onTap: () {
                          _selectedTileNotifier.value = 1;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.bug_report,
                        title: "New in",
                        isSelected: selectedIndex == 2,
                        onTap: () {
                          _selectedTileNotifier.value = 2;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.arrow_outward,
                        title: "Trends",
                        isSelected: selectedIndex == 3,
                        onTap: () {
                          _selectedTileNotifier.value = 3;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.checkroom,
                        title: "Clothing",

                        // isSelected: false,
                        isSelected: selectedIndex == 4,
                        onTap: () {
                          _selectedTileNotifier.value = 4;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.space_dashboard,
                        title: "Shoes",
                        isSelected: selectedIndex == 5,
                        onTap: () {
                          _selectedTileNotifier.value = 5;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.sports_soccer,
                        title: "Sports",
                        isSelected: selectedIndex == 6,
                        onTap: () {
                          _selectedTileNotifier.value = 6;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.run_circle_outlined,
                        title: "Sports",
                        isSelected: selectedIndex == 7,
                        onTap: () {
                          _selectedTileNotifier.value = 7;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Accessories",
                        isSelected: selectedIndex == 8,
                        onTap: () {
                          _selectedTileNotifier.value = 8;
                        },
                        // isSelected: false,
                      ),
                    ],
                  );
                },
              ),
              ValueListenableBuilder(
                valueListenable: _selectedTileNotifier,
                builder: (context, selectedIndex, child) {
                  return ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Gift Card +",
                        isSelected: selectedIndex == 0,
                        onTap: () {
                          _selectedTileNotifier.value = 0;
                        },
                        //isSelected: true,
                      ),
                      CustomListTile(
                        icon: Icons.shopify,
                        title: "Essiential Shop winger Edition",
                        isSelected: selectedIndex == 1,
                        onTap: () {
                          _selectedTileNotifier.value = 1;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.bug_report,
                        title: "New in",
                        isSelected: selectedIndex == 2,
                        onTap: () {
                          _selectedTileNotifier.value = 2;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.arrow_outward,
                        title: "Trends",
                        isSelected: selectedIndex == 3,
                        onTap: () {
                          _selectedTileNotifier.value = 3;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.checkroom,
                        title: "Clothing",

                        // isSelected: false,
                        isSelected: selectedIndex == 4,
                        onTap: () {
                          _selectedTileNotifier.value = 4;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.space_dashboard,
                        title: "Shoes",
                        isSelected: selectedIndex == 5,
                        onTap: () {
                          _selectedTileNotifier.value = 5;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.sports_soccer,
                        title: "Sports",
                        isSelected: selectedIndex == 6,
                        onTap: () {
                          _selectedTileNotifier.value = 6;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.run_circle_outlined,
                        title: "Sports",
                        isSelected: selectedIndex == 7,
                        onTap: () {
                          _selectedTileNotifier.value = 7;
                        },
                        //isSelected: false,
                      ),
                      CustomListTile(
                        icon: Icons.card_giftcard,
                        title: "Accessories",
                        isSelected: selectedIndex == 8,
                        onTap: () {
                          _selectedTileNotifier.value = 8;
                        },
                        // isSelected: false,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
    const Center(child: Text('Search Screen')),
    const Center(child: Text('Favorites Screen')),
    const Center(child: Text('History Screen')),
    const Center(child: Text('Profile Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _currentIndexNotifier,
      builder: (context, _currentIndex, child) {
        return SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              drawer: AppDrawer(
                onItemSelected: (title) {
                  debugPrint('Selected: $title');
                },
              ),
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFFE5E5E5), // Soft gray top divider line
                      width: 1.0,
                    ),
                  ),
                ),
                child: BottomNavigationBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    _currentIndexNotifier.value = index;
                  },
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Theme.of(context).primaryColor,
                  selectedItemColor:
                      Apptheme.Lighttheme.indicatorColor, // UI Orange accent
                  unselectedItemColor:
                      Apptheme.Lighttheme.hoverColor, // UI Medium gray
                  selectedLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.home_outlined, 0, _currentIndex),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.search, 1, _currentIndex),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.favorite_border, 2, _currentIndex),
                      label: 'Favorites',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(
                        Icons.shopping_bag_outlined,
                        3,
                        _currentIndex,
                      ),
                      label: 'History',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.person_outline, 4, _currentIndex),
                      label: 'Profile',
                    ),
                  ],
                ),
              ),
              body: _screens[_currentIndex],
            ),
          ),
        );
      },
    );
  }
}

Widget _buildPillTab(String title, BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;
  return Container(
    width: 200,
    height: 45,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        color: isDark ? Colors.grey.shade700 : Colors.grey.shade300,
        width: 2,
      ),
    ),
    child: Text(
      title,
      style: TextStyle(color: isDark ? Colors.white : Colors.black87),
    ),
  );
}

Widget _buildIcon(IconData iconData, int index, int currentIndex) {
  final bool isSelected = currentIndex == index;

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      // Top Indicator Line
      Container(
        width: 32, // Width of the top accent line
        height: 3, // Thickness of the line
        margin: const EdgeInsets.only(bottom: 6), // Space between line and icon
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF6B35) : Colors.transparent,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      Icon(iconData, size: 26),
    ],
  );
}
