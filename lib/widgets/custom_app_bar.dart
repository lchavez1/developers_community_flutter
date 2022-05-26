import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final IconData leftIcon;
  final Function? leftCallback;

  CustomAppBar(this.leftIcon, {this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        children: [
          GestureDetector(
            onTap: leftCallback != null ? () => leftCallback!() : null,
            child: _buildIcon(leftIcon),
          ),
          Text('Developers Community', style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon){
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent
      ),
      child: Icon(icon, size: 30, color: Colors.black,),
    );
  }

}