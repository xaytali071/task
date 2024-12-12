import 'package:flutter/material.dart';

class KeyboardDissimer extends StatelessWidget {
  final Widget child;
  const KeyboardDissimer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: child,
    );
  }
}