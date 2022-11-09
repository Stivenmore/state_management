import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanager/statemanager_bloc/cubit/manager_cubit.dart';

class ViewCubit extends StatefulWidget {
  const ViewCubit({Key? key}) : super(key: key);

  @override
  State<ViewCubit> createState() => _ViewCubitState();
}

class _ViewCubitState extends State<ViewCubit> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManagerCubit>();
   return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ValueTextCubit(),
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    cubit.increment();
                  },
                  icon: const Icon(Icons.add)),
              const SizedBox(
                width: 60,
              ),
              IconButton(
                  onPressed: () {
                    cubit.decrement();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    ));
  }
}

class ValueTextCubit extends StatelessWidget {
  const ValueTextCubit({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final count = context.select<ManagerCubit, int>((value) => value.state.count);
    return Text('$count', style: TextStyle(fontSize: 20),);
  }
}