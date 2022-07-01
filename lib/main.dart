import 'package:flutter/material.dart';
import 'package:flutter_deliberysi2/src/pages/client/products/list/client_product_list_page.dart';
import 'package:flutter_deliberysi2/src/pages/client/update/client_update_page.dart';
import 'package:flutter_deliberysi2/src/pages/delivery/orders/list/delivery_orders_list_page.dart';
import 'package:flutter_deliberysi2/src/pages/login/login_page.dart';
import 'package:flutter_deliberysi2/src/pages/minimarket/categories/minimarket_categories_create_page.dart';
import 'package:flutter_deliberysi2/src/pages/minimarket/orders/list/minimarket_orders_list_page.dart';
import 'package:flutter_deliberysi2/src/pages/minimarket/products/create/minimarket_products_create_page.dart';
import 'package:flutter_deliberysi2/src/pages/register/register_page.dart';
import 'package:flutter_deliberysi2/src/pages/roles/roles_page.dart';
import 'package:flutter_deliberysi2/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delibery App flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login' ,

      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'roles': (BuildContext context) => RolesPage(),
        'client/products/list': (BuildContext context) => ClientProductsListPage(),
        'client/update': (BuildContext context) => ClientUpdatePage(),
        'minimarket/orders/list': (BuildContext context) => MinimarketOrdersListPage(),
        'minimarket/categories/create': (BuildContext context) => MinimarketCategoriesCreatePage(),
        'minimarket/products/create': (BuildContext context) => MinimarketProductsCreatePage(),
        'delivery/orders/list': (BuildContext context) => DeliveryOrdersListPage(),

      },
      theme: ThemeData(
        //fontFamily: 'NimbusSans',
        primaryColor: MyColors.primaryColor,
        appBarTheme: AppBarTheme(elevation: 0)
      ),
    );

  }
}
