import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_utils.dart';

class TopCurve extends StatelessWidget {
  const TopCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        height: 300.h,
        width: MediaQuery.of(context).size.width,
        color: primary.withOpacity(0.25),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 370.w;
    final double _yScaling = size.height / 460.h;
    path.lineTo(341.99 * _xScaling, 165.17 * _yScaling);
    path.cubicTo(
      341.95 * _xScaling,
      165.11999999999998 * _yScaling,
      341.92 * _xScaling,
      165.05999999999997 * _yScaling,
      341.88 * _xScaling,
      165.01 * _yScaling,
    );
    path.cubicTo(
      341.54 * _xScaling,
      164.29999999999998 * _yScaling,
      341.08 * _xScaling,
      163.64999999999998 * _yScaling,
      340.51 * _xScaling,
      163.1 * _yScaling,
    );
    path.cubicTo(
      340.46999999999997 * _xScaling,
      163.04 * _yScaling,
      340.43 * _xScaling,
      162.98999999999998 * _yScaling,
      340.39 * _xScaling,
      162.93 * _yScaling,
    );
    path.cubicTo(
      339.83 * _xScaling,
      162.4 * _yScaling,
      339.18 * _xScaling,
      161.96 * _yScaling,
      338.46 * _xScaling,
      161.64000000000001 * _yScaling,
    );
    path.cubicTo(
      338.03999999999996 * _xScaling,
      161.45000000000002 * _yScaling,
      337.59 * _xScaling,
      161.29000000000002 * _yScaling,
      337.13 * _xScaling,
      161.20000000000002 * _yScaling,
    );
    path.cubicTo(
      336.61 * _xScaling,
      161.06000000000003 * _yScaling,
      336.07 * _xScaling,
      161.00000000000003 * _yScaling,
      335.51 * _xScaling,
      161.00000000000003 * _yScaling,
    );
    path.cubicTo(
      335.31 * _xScaling,
      161.00000000000003 * _yScaling,
      335.12 * _xScaling,
      161.01000000000002 * _yScaling,
      334.93 * _xScaling,
      161.03000000000003 * _yScaling,
    );
    path.cubicTo(
      333.82 * _xScaling,
      161.12000000000003 * _yScaling,
      332.78000000000003 * _xScaling,
      161.46000000000004 * _yScaling,
      331.87 * _xScaling,
      162.00000000000003 * _yScaling,
    );
    path.cubicTo(
      331.87 * _xScaling,
      162.00000000000003 * _yScaling,
      331.85 * _xScaling,
      162.02000000000004 * _yScaling,
      331.85 * _xScaling,
      162.02000000000004 * _yScaling,
    );
    path.cubicTo(
      331.85 * _xScaling,
      162.02000000000004 * _yScaling,
      331.84000000000003 * _xScaling,
      162.02000000000004 * _yScaling,
      331.84000000000003 * _xScaling,
      162.03000000000003 * _yScaling,
    );
    path.cubicTo(
      331.37 * _xScaling,
      162.30000000000004 * _yScaling,
      330.96000000000004 * _xScaling,
      162.63000000000002 * _yScaling,
      330.57000000000005 * _xScaling,
      163.00000000000003 * _yScaling,
    );
    path.cubicTo(
      330.2900000000001 * _xScaling,
      163.27000000000004 * _yScaling,
      330.03000000000003 * _xScaling,
      163.57000000000002 * _yScaling,
      329.80000000000007 * _xScaling,
      163.88000000000002 * _yScaling,
    );
    path.cubicTo(
      329.80000000000007 * _xScaling,
      163.88000000000002 * _yScaling,
      329.7800000000001 * _xScaling,
      163.90000000000003 * _yScaling,
      329.7800000000001 * _xScaling,
      163.90000000000003 * _yScaling,
    );
    path.cubicTo(
      328.85719909920425 * _xScaling,
      165.1246100476235 * _yScaling,
      328.35868955684776 * _xScaling,
      166.61662804447565 * _yScaling,
      328.36000000000007 * _xScaling,
      168.15000000000003 * _yScaling,
    );
    path.cubicTo(
      328.36000000000007 * _xScaling,
      169.55000000000004 * _yScaling,
      328.76000000000005 * _xScaling,
      170.85000000000002 * _yScaling,
      329.4600000000001 * _xScaling,
      171.95000000000005 * _yScaling,
    );
    path.cubicTo(
      329.4700000000001 * _xScaling,
      171.97000000000006 * _yScaling,
      329.4700000000001 * _xScaling,
      171.98000000000005 * _yScaling,
      329.49000000000007 * _xScaling,
      171.99000000000004 * _yScaling,
    );
    path.cubicTo(
      329.62000000000006 * _xScaling,
      172.18000000000004 * _yScaling,
      329.75000000000006 * _xScaling,
      172.36000000000004 * _yScaling,
      329.88000000000005 * _xScaling,
      172.55000000000004 * _yScaling,
    );
    path.cubicTo(
      329.88000000000005 * _xScaling,
      172.56000000000003 * _yScaling,
      329.89000000000004 * _xScaling,
      172.56000000000003 * _yScaling,
      329.89000000000004 * _xScaling,
      172.56000000000003 * _yScaling,
    );
    path.cubicTo(
      340.48 * _xScaling,
      187.55000000000004 * _yScaling,
      346.47 * _xScaling,
      204.55000000000004 * _yScaling,
      346.47 * _xScaling,
      222.55000000000004 * _yScaling,
    );
    path.cubicTo(
      346.47 * _xScaling,
      222.55000000000004 * _yScaling,
      346.47 * _xScaling,
      401.27000000000004 * _yScaling,
      346.47 * _xScaling,
      401.27000000000004 * _yScaling,
    );
    path.cubicTo(
      346.47 * _xScaling,
      401.27000000000004 * _yScaling,
      280.64000000000004 * _xScaling,
      335.86 * _yScaling,
      280.64000000000004 * _xScaling,
      335.86 * _yScaling,
    );
    path.cubicTo(
      273.64397652167366 * _xScaling,
      328.8809616956859 * _yScaling,
      264.16186003091764 * _xScaling,
      324.9672527756294 * _yScaling,
      254.28000000000003 * _xScaling,
      324.98 * _yScaling,
    );
    path.cubicTo(
      251.14000000000004 * _xScaling,
      324.98 * _yScaling,
      248.00000000000003 * _xScaling,
      325.37 * _yScaling,
      244.95000000000002 * _xScaling,
      326.14000000000004 * _yScaling,
    );
    path.cubicTo(
      229.16247069203052 * _xScaling,
      330.02991624220743 * _yScaling,
      212.95966084703417 * _xScaling,
      331.9809703214216 * _yScaling,
      196.70000000000002 * _xScaling,
      331.95000000000005 * _yScaling,
    );
    path.cubicTo(
      174.75000000000003 * _xScaling,
      331.95000000000005 * _yScaling,
      153.88000000000002 * _xScaling,
      328.47 * _yScaling,
      135.08 * _xScaling,
      322.23 * _yScaling,
    );
    path.cubicTo(
      134.66000000000003 * _xScaling,
      322.04 * _yScaling,
      134.21 * _xScaling,
      321.88 * _yScaling,
      133.75 * _xScaling,
      321.79 * _yScaling,
    );
    path.cubicTo(
      133.22117403258574 * _xScaling,
      321.65223005896166 * _yScaling,
      132.67645426829995 * _xScaling,
      321.58498072494353 * _yScaling,
      132.13 * _xScaling,
      321.59000000000003 * _yScaling,
    );
    path.cubicTo(
      131.93 * _xScaling,
      321.59000000000003 * _yScaling,
      131.74 * _xScaling,
      321.6 * _yScaling,
      131.54999999999998 * _xScaling,
      321.62 * _yScaling,
    );
    path.cubicTo(
      129.86999999999998 * _xScaling,
      321.75 * _yScaling,
      128.35 * _xScaling,
      322.47 * _yScaling,
      127.20999999999998 * _xScaling,
      323.57 * _yScaling,
    );
    path.cubicTo(
      123.49364758334855 * _xScaling,
      327.1099116235548 * _yScaling,
      124.62914698616113 * _xScaling,
      333.299703703269 * _yScaling,
      129.35999999999999 * _xScaling,
      335.29 * _yScaling,
    );
    path.cubicTo(
      129.39999999999998 * _xScaling,
      335.31 * _yScaling,
      129.44 * _xScaling,
      335.32 * _yScaling,
      129.48 * _xScaling,
      335.33000000000004 * _yScaling,
    );
    path.cubicTo(
      129.72 * _xScaling,
      335.42 * _yScaling,
      129.95 * _xScaling,
      335.50000000000006 * _yScaling,
      130.19 * _xScaling,
      335.58000000000004 * _yScaling,
    );
    path.cubicTo(
      150.51999999999998 * _xScaling,
      342.42 * _yScaling,
      173.03 * _xScaling,
      346.22 * _yScaling,
      196.69 * _xScaling,
      346.22 * _yScaling,
    );
    path.cubicTo(
      214.12 * _xScaling,
      346.25 * _yScaling,
      231.48 * _xScaling,
      344.16 * _yScaling,
      248.39 * _xScaling,
      339.99 * _yScaling,
    );
    path.cubicTo(
      256.3209406956005 * _xScaling,
      337.9496290941376 * _yScaling,
      264.7405838842083 * _xScaling,
      340.22828759639236 * _yScaling,
      270.56 * _xScaling,
      345.99 * _yScaling,
    );
    path.cubicTo(
      270.56 * _xScaling,
      345.99 * _yScaling,
      337.57 * _xScaling,
      412.56 * _yScaling,
      337.57 * _xScaling,
      412.56 * _yScaling,
    );
    path.cubicTo(
      340.11 * _xScaling,
      415.09 * _yScaling,
      343.55 * _xScaling,
      416.52 * _yScaling,
      347.14 * _xScaling,
      416.52 * _yScaling,
    );
    path.cubicTo(
      350.9 * _xScaling,
      416.52 * _yScaling,
      354.3 * _xScaling,
      415 * _yScaling,
      356.76 * _xScaling,
      412.53 * _yScaling,
    );
    path.cubicTo(
      359.21999999999997 * _xScaling,
      410.07 * _yScaling,
      360.74 * _xScaling,
      406.66999999999996 * _yScaling,
      360.75 * _xScaling,
      402.90999999999997 * _yScaling,
    );
    path.cubicTo(
      360.75 * _xScaling,
      402.90999999999997 * _yScaling,
      360.75 * _xScaling,
      222.54 * _yScaling,
      360.75 * _xScaling,
      222.54 * _yScaling,
    );
    path.cubicTo(
      360.75 * _xScaling,
      201.85 * _yScaling,
      353.97 * _xScaling,
      182.32 * _yScaling,
      341.99 * _xScaling,
      165.17 * _yScaling,
    );
    path.cubicTo(
      341.99 * _xScaling,
      165.17 * _yScaling,
      341.99 * _xScaling,
      165.17 * _yScaling,
      341.99 * _xScaling,
      165.17 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
