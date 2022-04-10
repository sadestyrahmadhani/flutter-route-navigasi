import 'package:flutter/material.dart';
import 'package:flutter_routing/pages/contact.dart';
import 'package:flutter_routing/pages/home.dart';
import 'package:flutter_routing/pages/portofolio.dart';
import 'package:flutter_routing/pages/profile.dart';
import 'package:flutter_routing/pages/gallery.dart';
import 'package:flutter_routing/pages/setting.dart';

Map<String, WidgetBuilder> buildRoute(BuildContext context){
  return {
    '/': (context) => const HomePage(),
    '/portofolio':(context) => Portofolio(),
    '/profile':(context) => Profile(),
    '/contact':(context) => Contact(),
    '/gallery':(context) => Gallery(),
    '/setting':(context) => Setting(),
  };
}