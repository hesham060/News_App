import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/cubit/states.dart';

import '../shared/cubit/cubit.dart';

class NewsAppLayout extends StatelessWidget {
  const NewsAppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewCubit(),
      child: BlocConsumer<NewCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('NewsApp'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (() {}),
                ),
              ],
            ),
            body: cubit.Screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.itemsBottom,
              onTap: (index) => cubit.changeBottomNavBar(index: index),
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,
            ),
          );
        },
      ),
    );
  }
}
