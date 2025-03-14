import 'package:chat_si_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class SiNoMessageBubble extends StatelessWidget {
  
  final Message message;
  
  const SiNoMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    //Guardamos los colores de tema en colors
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: Colors.white),),
          ),
        ),
        SizedBox(height: 5),

        _ImageBuble(image: message.imageUrl!),

         SizedBox(height: 20),

        //todo :imagen
      ],
    );
  }
}

class _ImageBuble extends StatelessWidget {

  final String image;

  const _ImageBuble({required this.image});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(image,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        // menjase de carga antes de mostrar la imagen
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text("Terminator te esta enviando un mensaje", style: TextStyle(fontSize: 15),),
          );
        },
      )
      );
  }
}