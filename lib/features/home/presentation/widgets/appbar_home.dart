import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/icons.dart';
import '../../../../core/utils/images.dart';

class AppBarHomePage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomePage({
    Key? key,
    this.colorTitle = Colors.black,
  }) : super(key: key);
  final Color colorTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Transform.scale(
        scale: 0.5,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            image:
                DecorationImage(image: AssetImage(manImage), fit: BoxFit.fill),
          ),
        ),
      ),
      centerTitle: true,
      title: SizedBox(
        width: 90.w,
        child: Image.asset(logo),
      ),
      actions: [
        IconButton(
          icon: ImageIcon(
            const AssetImage(searchIcon),
            color: colorTitle,
          ),
          onPressed: () {
            // Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
