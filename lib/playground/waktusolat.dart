import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class WaktuSolatMaster extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10),
//       width: double.infinity,
//       decoration: BoxDecoration(
//           //color: Color(0XFF2980b9),
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(.5),
//               offset: Offset(0, 10),
//               blurRadius: 20,
//             ),
//           ]),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text('Sekarang',
//                             style: GoogleFonts.roboto(fontSize: 10)),
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: <Widget>[
//                             Text('MAGHRIB',
//                                 style: GoogleFonts.raleway(fontSize: 18)),
//                             Text('07.36',
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.w500)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(0),
//                     width: 60,
//                     color: Colors.grey,
//                     child: Column(
//                       children: <Widget>[],
//                     ),
//                   ),
//                   // Container(
//                   //   child: Column(
//                   //     mainAxisSize: MainAxisSize.max,
//                   //     mainAxisAlignment: MainAxisAlignment.end,
//                   //     crossAxisAlignment: CrossAxisAlignment.end,
//                   //     children: <Widget>[
//                   //       Text('07.36',
//                   //           style: GoogleFonts.montserrat(
//                   //               fontSize: 18, fontWeight: FontWeight.w500)),
//                   //       // Text('P.M',
//                   //       //     style: GoogleFonts.montserrat(
//                   //       //         fontSize: 18, fontWeight: FontWeight.w500)),
//                   //     ],
//                   //   ),
//                   // ),
//                   VerticalDivider(),
//                   Expanded(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text('Seterusnya',
//                             style: GoogleFonts.roboto(fontSize: 10)),
//                         Text('ISYAK', style: GoogleFonts.raleway(fontSize: 18)),
//                       ],
//                     ),
//                   ),
//                   Column(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: <Widget>[
//                       Text('07.36',
//                           style: GoogleFonts.montserrat(
//                               fontSize: 20, fontWeight: FontWeight.w500)),
//                       Text('P.M',
//                           style: GoogleFonts.montserrat(
//                               fontSize: 18, fontWeight: FontWeight.w500)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // SizedBox(
//             //   width: 30,
//             //   child: IconButton(
//             //     iconSize: 18,
//             //     icon: Icon(Icons.refresh),
//             //     onPressed: () {},
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

class WaktuSolatMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          //color: Color(0XFF2980b9),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              offset: Offset(0, 10),
              blurRadius: 20,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Sekarang', style: GoogleFonts.roboto(fontSize: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('MAGHRIB', style: GoogleFonts.raleway(fontSize: 18)),
                Text('07.36 P.M', style: GoogleFonts.montserrat(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
