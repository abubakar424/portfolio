import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({super.key, required this.title, this.image});
 // final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          Image.asset(image!,height: 15,width: 15,fit: BoxFit.cover,),
          const SizedBox(width: 5,),
          Text(title,style: const TextStyle(color: Colors.white),),
        ],
      )

    );}
  }


class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator( title: 'Flutter',image: 'assets/icons/flutter.png',),
        AnimatedLinearProgressIndicator(title: 'Dart',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(title: 'Rest APIs',image: 'assets/icons/firebase.png'),
       // AnimatedLinearProgressIndicator(percentage: 0.85, title: 'Sqlite',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(title: 'Responsive Design',image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(title: 'Firebase',image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(title: 'Clean Architecture',image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(title: 'Provider',image: 'assets/icons/flutter.png'),
       // AnimatedLinearProgressIndicator(percentage: 0.5, title: 'Bloc',image: 'assets/icons/bloc.png'),
        AnimatedLinearProgressIndicator(title: 'Getx',image: 'assets/icons/dart.png'),
      ],);
  }
}
