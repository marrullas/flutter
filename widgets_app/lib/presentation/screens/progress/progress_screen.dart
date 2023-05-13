import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    //colors.secondary.

    return Center(
      child: Column(
        children: const [
          SizedBox(height: 20),
          Text('CircularProgressIndicator', style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 20,),
          Text('Circular progress indicator controlado', style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),



        ]
        ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
