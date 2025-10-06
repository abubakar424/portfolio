import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final value = _controller.value;
          return Transform.translate(
            offset: Offset(0, 2 * value), // Move the container up and down
            child: Center(
              child: Container(
                //margin: EdgeInsetsGeometry.symmetric(horizontal: 12),// Space for shadows
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-2, 0),
                      blurRadius: 20,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Container(
                  height: widget.height!,
                  width: widget.width!,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Colors.pinkAccent,
                      Colors.blue,
                    ]),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: const EdgeInsets.all(4), // Thin padding for gradient border
                      child: Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(26), // Adjusted for inner rounding
                          image: DecorationImage(alignment: Alignment.center,
                            image: AssetImage('assets/images/image.png'),
                            fit: BoxFit.cover, // Scales and crops to fully cover
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}