import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        // elevation: 0,
        // backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final options = AppRoutes.menuOptions[index];
          return ListTile(
            leading: Icon(
              options.icon,
              color: AppTheme.primary,
            ),
            title: Text(options.name),
            trailing: const Icon(Icons.circle_notifications_sharp,
                color: AppTheme.primary),
            onTap: () {
              Navigator.pushNamed(context, options.route);
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
