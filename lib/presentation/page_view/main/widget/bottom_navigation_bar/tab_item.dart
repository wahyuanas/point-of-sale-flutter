import 'package:flutter/material.dart';

class TabItemWidget extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItemWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  TabItemWidgetState createState() => TabItemWidgetState();
}

class TabItemWidgetState extends State<TabItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 1, 12, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              widget.icon,
              size: widget.isSelected ? 30 : 25,
              color: widget.isSelected ? const Color(0xFF536cad) : Colors.grey,
            ),
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.isSelected ? Colors.blue : Colors.grey,
                  fontWeight:
                      widget.isSelected ? FontWeight.w600 : FontWeight.normal,
                  fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
