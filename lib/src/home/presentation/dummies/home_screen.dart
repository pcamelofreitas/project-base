import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/home/domain/usecases/bloc/home_usecase.dart';
import 'package:project_base/src/home/presentation/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<HomeUsecase>().add(const RequestUsers());

    return BlocBuilder<HomeUsecase, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[350],
          appBar: AppBar(),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DrawerHeader(child: Container()),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    context.read<HomeUsecase>().add(const Logout());
                  },
                )
              ],
            ),
          ),
          body: state.userListRequestStatus.when(
            idle: () {
              return Center(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeUsecase>().add(const RequestUsers());
                    },
                    child: const Text('Request Users')),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            succeeded: (userList) {
              return ListView(
                children: [for (var user in userList) UserCard(user: user)],
              );
            },
            failed: (error) => Center(
              child: Text('error: ${error.slug}'),
            ),
          ),
        );
      },
    );
  }
}
