import 'package:foodoo/hooks/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.all(20.w),
          children: [
            SizedBox(
              width: double.infinity,
              height: 970.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(.6.w),
                        ),
                      ),
                      boldText(
                        text: "Home",
                        fontSize: 12.sp,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.notification_add_outlined),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: double.infinity.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black.withOpacity(.2),
                          size: 25.sp,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(.2),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 45.h,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TabBar(
                        controller: tabController,
                        physics: const BouncingScrollPhysics(),
                        isScrollable: true,
                        padding: EdgeInsets.only(
                          top: 10.h,
                        ),
                        indicator:
                            // CircleTabPointer(color: Colors.black, radius: 4.r),
                            BoxDecoration(
                          // border: InputBorder.none,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(
                            child: commonText(text: "Spicy Food"),
                          ),
                          Tab(
                            child: commonText(text: "Burger"),
                          ),
                          Tab(
                            child: commonText(text: "Sweets"),
                          ),
                          Tab(
                            child: commonText(text: "Vergetarian"),
                          ),
                          Tab(
                            child: commonText(text: "Pizza"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 20.h),
                  Flexible(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        SeaFood(),
                        const Text("datas"),
                        const Text("Plural"),
                        const Text("Plural"),
                        const Text("Plural"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  commonText(
                    text: "Big Offer",
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  OfferCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Container tabMethod({child}) {
  //   return Container(
  //     // width: 80,
  //     height: 65.h,
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10.w),
  //         border: Border.all(color: Colors.red)),
  //     child: child,
  //     //    Align(
  //     //     alignment: Alignment.center,
  //     //     child: commonText(text: "Spicy Food"),
  //     //   ),
  //   );
  // }
}

class CircleTabPointer extends Decoration {
  final Color color;
  final double radius;
  const CircleTabPointer({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}


   // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leadingWidth: 70,
      //   leading: Padding(
      //     padding: EdgeInsets.only(left: 20.w),
      //     child: GestureDetector(
      //       onTap: () {},
      //       child: CircleAvatar(
      //         radius: 25.w,
      //         backgroundColor: Colors.grey.withOpacity(.4.w),
      //       ),
      //     ),
      //   ),
      //   centerTitle: true,
      //   title: boldText(
      //     text: 'home'.toUpperCase(),
      //     fontSize: 12.sp,
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20.w),
      //       child: const Icon(Icons.notification_add_outlined),
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   backgroundColor: Colors.black,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Colors.orange.withOpacity(0.6),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: '',
      //     ),
      //   ],
      //   currentIndex: selectedIndex,
      //   onTap: onItemTapped,
      // ),
      // body: SafeArea(
      //   child: ListView(
      //     shrinkWrap: true,
      //     physics: const BouncingScrollPhysics(),
      //     scrollDirection: Axis.vertical,
      //     padding: EdgeInsets.all(20.w),
      //     children: [
      //       SizedBox(
      //         width: double.infinity,
      //         height: 450.w,
      //         child: Column(
      //           children: [
      //             SizedBox(height: 5.h),
      //             Container(
      //               width: double.infinity.w,
      //               height: 40.h,
      //               decoration: BoxDecoration(
      //                 color: Colors.grey.withOpacity(.1),
      //                 borderRadius: BorderRadius.circular(3.w),
      //               ),
      //               child: TextField(
      //                 decoration: InputDecoration(
      //                   prefixIcon: Icon(
      //                     Icons.search,
      //                     color: Colors.black.withOpacity(.2),
      //                     size: 25.sp,
      //                   ),
      //                   hintText: "Search",
      //                   hintStyle: TextStyle(
      //                     color: Colors.black.withOpacity(.2),
      //                   ),
      //                   border: InputBorder.none,
      //                 ),
      //               ),
      //             ),
      //             SizedBox(height: 20.h),
      //             TabBar(
      //               controller: tabController,
      //               physics: const BouncingScrollPhysics(),
      //               isScrollable: true,
      //               padding: EdgeInsets.only(
      //                 top: 10.h,
      //               ),
      //               indicator: BoxDecoration(
      //                 // border: InputBorder.none,
      //                 color: Colors.grey,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               indicatorColor: Colors.transparent,
      //               tabs: [
      //                 Tab(
      //                   child: commonText(text: "Spicy Food"),
      //                 ),
      //                 Tab(
      //                   child: commonText(text: "Burger"),
      //                 ),
      //                 Tab(
      //                   child: commonText(text: "Sweets"),
      //                 ),
      //                 Tab(
      //                   child: commonText(text: "Vergetarian"),
      //                 ),
      //                 Tab(
      //                   child: commonText(text: "Pizza"),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 20.h),
      //       Seafood(),
      //     ],
      //   ),
      // ),