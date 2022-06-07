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
          appBar: AppBar(
            title: Center(child: Text('Page ${state.page}')),
          ),
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
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                mini: true,
                onPressed: () {
                  context.read<HomeUsecase>().add(const ChangePage('1'));
                },
                child: const Text('1'),
              ),
              FloatingActionButton(
                mini: true,
                onPressed: () {
                  context.read<HomeUsecase>().add(const ChangePage('2'));
                },
                child: const Text('2'),
              ),
            ],
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
              return BlocListener<HomeUsecase, HomeState>(
                listenWhen: (previous, current) =>
                    previous.page != current.page,
                listener: (context, state) {
                  context.read<HomeUsecase>().add(const RequestUsers());
                },
                child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, i) {
                    return UserCard(user: userList[i]);
                  },
                ),
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
