import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBuble extends StatelessWidget {
  final Message message;

  const MyMessageBuble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
            child: Text(message.text),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
