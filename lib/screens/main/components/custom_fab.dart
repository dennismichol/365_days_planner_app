import 'package:flutter/material.dart';

class CustomFAB extends StatefulWidget {
  const CustomFAB(
      {Key? key,
      required this.width,
      required this.height,
      required this.color,
      required this.icon,
      required this.onClick})
      : super(key: key);

  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function() onClick;

  @override
  State<CustomFAB> createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFAB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        shape: BoxShape.circle,
      ),
      width: widget.width,
      height: widget.height,
      child: IconButton(
        onPressed: widget.onClick,
        icon: widget.icon,
        enableFeedback: true,
      ),
    );
  }
}
