enum MessageType { sent, received }

class Message {
  final String text;
  final String? imageUrl;
  final MessageType type;

  Message({required this.text, this.imageUrl, required this.type});
}
