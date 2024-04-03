import 'package:flutter/material.dart';
import 'package:spalsh_screen_and_login/controllers/home_controller.dart';
import 'package:spalsh_screen_and_login/repositories/home_repository_imp.dart';
import 'package:spalsh_screen_and_login/services/prefs_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              PrefsService.logout();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login', (_) => false);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (_, index) => ListTile(
                leading: Text(list[index].id.toString()),
                title: Text(list[index].title),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () => Navigator.of(context).pushNamed(
                  '/details',
                  arguments: list[index],
                ),
              ),
              separatorBuilder: (_, __) => const Divider(),
            );
          }),
    );
  }
}
