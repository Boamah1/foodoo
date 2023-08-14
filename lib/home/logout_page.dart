import 'package:foodoo/hooks/export.dart';

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  State<LogOutPage> createState() => _LogOutPageState();
}

class _LogOutPageState extends State<LogOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDCDCDC),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: Stack(
        // clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 100.h,
                width: double.maxFinite,
                color: const Color(0xFFDCDCDC),
              ),
              profileStyle(),
            ],
          ),
          Positioned(
            top: 48.0.h,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50.r,
            ),
          ),
          Positioned(
            top: 127.h,
            right: 142.w,
            child: CircleAvatar(
              radius: 8.r,
              backgroundColor: const Color(0xFFDCDCDC),
            ),
          ),
        ],
      ),
    );
  }
}

Expanded profileStyle() {
  return Expanded(
    child: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 55.h),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "datass",
              ),
            ),
          ),
          SizedBox(height: 20.h),
          rowmethod(
            text: "Favourite",
            firsticon: const LikeButton(size: 22),
          ),
          rowmethod(
            text: "Edit Profile",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
          rowmethod(
            text: "Location",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
          rowmethod(
            text: "History",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
          rowmethod(
            text: "About",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
          rowmethod(
            text: "Changed Password",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
          SizedBox(height: 35.h),
          rowmethod(
            text: "Log out",
            firsticon: const Icon(Icons.favorite_outline_outlined),
          ),
        ],
      ),
    ),
  );
}
