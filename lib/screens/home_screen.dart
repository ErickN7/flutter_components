import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOptions.elementAt(index).name),
          leading:  Icon(AppRoutes.menuOptions.elementAt(index).icon, color: AppTheme.primary),
          onTap: (){
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen()
            // );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, AppRoutes.menuOptions.elementAt(index).route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length
      ),
    );
  }
}