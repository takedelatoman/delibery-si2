import 'package:flutter/material.dart';
import 'package:flutter_deliberysi2/src/models/user.dart';
import 'package:flutter_deliberysi2/src/utils/shared_pref.dart';

class MinimarketOrdersListController{

  BuildContext context;
  SharedPref _sharedPref = new SharedPref();
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();
  Function refresh;
  User user;


  Future init(BuildContext context, Function refresh)async{
    this.context = context;
    this.refresh = refresh;
    user = User.fromJson(await _sharedPref.read('user'));
    refresh();
  }

  void logout(){
    _sharedPref.logout(context, user.id);
  }

  void goToCategoryCreate(){
    Navigator.pushNamed(context, 'minimarket/categories/create');
  }

  void goToProductCreate(){
    Navigator.pushNamed(context, 'minimarket/products/create');
  }

  void openDrawer(){
    key.currentState.openDrawer();
  }

  void goToRoles(){
    Navigator.pushNamedAndRemoveUntil(context, 'roles', (route) => false);
  }

}