import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/home/domain/usecases/bloc/home_bloc.dart';

class HomeSmartView extends StatefulWidget {
  const HomeSmartView({Key? key}) : super(key: key);

  @override
  State<HomeSmartView> createState() => _HomeSmartViewState();
}

class _HomeSmartViewState extends State<HomeSmartView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: _builder(context),
    );
  }

  Widget _builder(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text('Home Screen'),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
