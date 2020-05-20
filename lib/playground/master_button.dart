import 'package:flutter/material.dart';

// class MasterButtonOne extends StatelessWidget {
//   final String buttonText;
//   final double buttonFontSize;
//   final Function buttonOnClick;
//   final double buttonWidth;
//   final double buttonHeight;
//   final double buttonPaddingVertical;

//   const MasterButtonOne(
//       {Key key,
//       this.buttonText,
//       this.buttonFontSize = 16,
//       this.buttonOnClick,
//       this.buttonWidth = double.infinity,
//       this.buttonHeight = 60,
//       this.buttonPaddingVertical = 16})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: buttonOnClick,
//       child: Container(
//         width: buttonWidth,
//         height: buttonHeight,
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(vertical: buttonPaddingVertical),
//         decoration: BoxDecoration(
//           color: Colors.green,
//           borderRadius: BorderRadius.circular(25),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0, 15),
//               blurRadius: 15,
//               color: Color(0xFF666666).withOpacity(.15),
//             ),
//           ],
//         ),
//         child: Text(buttonText,
//             style: TextStyle(
//               fontSize: buttonFontSize,
//               fontWeight: FontWeight.bold,
//             )),
//       ),
//     );
//   }
// }

class MasterButton extends StatelessWidget {
  final String buttonText;
  final double buttonFontSize;
  final Function buttonOnClick;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonPaddingVertical;

  const MasterButton(
      {Key key,
      this.buttonText,
      this.buttonFontSize = 16,
      this.buttonOnClick,
      this.buttonWidth = double.infinity,
      this.buttonHeight = 60,
      this.buttonPaddingVertical = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(buttonText,
          style: TextStyle(
            fontSize: buttonFontSize,
            fontWeight: FontWeight.bold,
          )),
      onPressed: () {},
      minWidth: buttonWidth,
      height: buttonHeight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.redAccent,
      highlightColor: Colors.green,
      splashColor: Colors.orange,
    );
  }
}
