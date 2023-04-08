import 'package:flutter/material.dart';

import '../../utils/globalColors.dart';

class BtnFormGlobal extends StatelessWidget {
  const BtnFormGlobal({Key? key, required this.nameBtn}) : super(key: key);
  final String nameBtn;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        print('Login')
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        height: 42,
        decoration: BoxDecoration(
            color: GlobalColors.textMainColor,
            borderRadius: BorderRadius.circular(80),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 7)
            ]),
        child: Text(
          nameBtn,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
