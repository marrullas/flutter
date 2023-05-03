import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class UserMessageBubble extends StatelessWidget {

  final Message message;

  const UserMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:
                Text(message.text),
          ),
        ),
        const SizedBox(height: 5),

        //TODO: Add imagen
        _ImageBubble(imageUrl: message.imageUrl!), // el signo de admiracion es para decirle que no es nulo
        const SizedBox(height: 5),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: size.height * 0.3,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SizedBox(
            width: size.width * 0.7,
            height: size.height * 0.3,
            child: const Center(
              
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
