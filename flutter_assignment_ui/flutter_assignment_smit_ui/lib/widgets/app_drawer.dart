import 'package:flutter/material.dart';
import 'package:flutter_assignment_smit_ui/theme/theme.dart';

class AppDrawer extends StatelessWidget {
  final ValueChanged<String>? onItemSelected;

  const AppDrawer({super.key, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Apptheme.Lighttheme;
    final orange = theme.indicatorColor ?? Colors.deepOrange;

    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      width: MediaQuery.sizeOf(context).width * 0.82,
      child: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 26),
              decoration: const BoxDecoration(
                color: Color(0xFF24150E),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'My Profile.',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Discover something beautiful.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Scrollable menu
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(14, 18, 14, 20),
                children: [
                  _drawerItem(
                    context,
                    icon: Icons.home_outlined,
                    title: 'Home',
                    selected: true,
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.person_outline,
                    title: 'My Profile',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.shopping_bag_outlined,
                    title: 'My Orders',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.favorite_border,
                    title: 'Wishlist',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.location_on_outlined,
                    title: 'Shipping Address',
                    orange: orange,
                  ),

                  const SizedBox(height: 18),
                  const Divider(color: Color(0xFFEEEEEE)),
                  const SizedBox(height: 14),

                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 10),
                    child: Text(
                      'SHOP BY CATEGORY',
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),

                  _drawerItem(
                    context,
                    icon: Icons.checkroom_outlined,
                    title: 'Women',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.person_outline,
                    title: 'Men',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.child_care_outlined,
                    title: 'Kids',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.watch_outlined,
                    title: 'Accessories',
                    orange: orange,
                  ),

                  const SizedBox(height: 18),
                  const Divider(color: Color(0xFFEEEEEE)),

                  _drawerItem(
                    context,
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    orange: orange,
                  ),
                  _drawerItem(
                    context,
                    icon: Icons.headset_mic_outlined,
                    title: 'Help & Support',
                    orange: orange,
                  ),

                  const SizedBox(height: 18),

                  // Promotional card
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAF4EF),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A little something for you',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF34251D),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Explore the latest arrivals and seasonal trends.',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Explore collection  →',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color orange,
    bool selected = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Material(
        color: selected ? const Color(0xFFFFF0E7) : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: ListTile(
          onTap: () {
            Navigator.pop(context);
            onItemSelected?.call(title);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          leading: Icon(
            icon,
            color: selected ? orange : Colors.grey.shade700,
            size: 24,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: selected
                  ? Theme.of(context).indicatorColor
                  : Theme.of(context).cardColor,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: selected ? orange : Colors.grey.shade400,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 14),
          minTileHeight: 52,
        ),
      ),
    );
  }
}
