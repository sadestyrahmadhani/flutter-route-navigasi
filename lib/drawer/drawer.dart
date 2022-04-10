import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _DrawerHeader(),
          _DrawerItem(
            icon: Icons.account_circle_rounded,
            text: 'Profile',
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            }
          ),
          _DrawerItem(
            icon: Icons.file_present_rounded,
            text: 'Portofolio',
            onTap: () {
              Navigator.pushNamed(context, '/portofolio');
            }
          ),
          _DrawerItem(
            icon: Icons.contact_page,
            text: 'Contact Us',
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            }
          ),
          const Divider(
            color: Colors.black26,
            thickness: 1.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10.0, bottom: 20.0),
            child: Text('Keterangan'),
          ),
          _DrawerItem(
            icon: Icons.settings,
            text: 'Setting',
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            }
          ),
          _DrawerItem(
            icon: Icons.collections,
            text: 'Gallery',
            onTap: () {
              Navigator.pushNamed(context, '/gallery');
            }
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _DrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text('Sadesty Rahmadhani'),
      accountEmail: Text('sadestyrahmadhani012@gmail.com'),
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/user.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _DrawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
      onTap: onTap,
    );
  }
}