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
    
    //final colors = Theme.of(context).colorScheme;
    //colors.secondary.

    return const Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('CircularProgressIndicator', style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 20,),
          Text('Circular progress indicator controlado', style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          _ControllerProgressIndicator(),


        ]
        ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) => (value * 2)/100)
      .takeWhile((value) => value <= 99),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0.0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.black12,),
              const SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(value:progressValue, backgroundColor: Colors.black12,))
              
          
            ],
          ),
        );
      }
    );
  }
}
