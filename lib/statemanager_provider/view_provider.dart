import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanager/statemanager_provider/manager_provider.dart';

class ViewProvider extends StatefulWidget {
  const ViewProvider({Key? key}) : super(key: key);

  @override
  State<ViewProvider> createState() => _ViewProviderState();
}

class _ViewProviderState extends State<ViewProvider> {
  
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ManagerProvider>(context);
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Valuetextprovider(),
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    provider.increment();
                  },
                  icon: const Icon(Icons.add)),
              const SizedBox(
                width: 60,
              ),
              IconButton(
                  onPressed: () {
                     provider.decrement();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    ));
  }
}

class Valuetextprovider extends StatelessWidget {
  const Valuetextprovider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final count = context.select<ManagerProvider, int>((value) => value.count);
    return Text(count.toString(), style: const TextStyle(fontSize: 20),);
  }
}
 