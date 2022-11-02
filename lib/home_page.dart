import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TorchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder<bool?>(
                future: controller.isTorchActive,
                builder: (_, snapshot) {
                  final snapshotData = snapshot.data ?? false;

                  if (snapshot.connectionState == ConnectionState.done)
                    return Text(
                        'Is torch on? ${snapshotData ? 'Yes!' : 'No :('}');

                  return Container();
                }),
            MaterialButton(
                child: Text('Toggle'),
                onPressed: () {
                  controller.toggle(intensity: 1);
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
