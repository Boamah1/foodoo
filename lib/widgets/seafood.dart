import 'package:foodoo/hooks/export.dart';

class SeaFood extends StatelessWidget {
  List<String> images = [
    "images/Shoyu Ramen.jpg",
    "images/Tufo1.jpg",
    "images/noodles.jpg",
  ];

  List<String> price = [
    "46.2",
    "36.2",
    "26.2",
  ];
  List<String> food = [
    'Sea Food',
    'Tofu Soap',
    'Noodles',
  ];
  List<String> info = [
    'dzjc',
    'uacbskc',
    'llsdiofqh',
  ];
  List<String> rating = [
    '4.5',
    '4.2',
    '4.0',
  ];

  SeaFood({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const ChangePassword(),
        //   ),
        // );
      },
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(width: 15.w),
              Container(
                // margin: EdgeInsets.only(left: 15.w),
                width: 190.w,
                height: 285.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // const Color(0xff242931),
                  borderRadius: BorderRadius.circular(15.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(6, 6),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 8.h),
                    Container(
                      height: 180.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              commonText(
                                text: food[index],
                                fontSize: 15.sp,
                              ),
                              const Spacer(),
                              const LikeButton(),
                              // const Icon(
                              //   Icons.favorite,
                              //   color: Colors.grey,
                              // )
                            ],
                          ),
                          // SizedBox(height: 4.h),
                          Row(
                            children: [
                              // FaIcon(FontAwesomeIcons.alarm),
                              const Icon(Icons.alarm),
                              SizedBox(width: 3.w),
                              commonText(
                                text: info[index],
                              ),
                            ],
                          ),
                          // SizedBox(height: 4.h),
                          Row(
                            children: [
                              const Icon(Icons.star_border_outlined),
                              SizedBox(width: 3.w),
                              commonText(
                                text: rating[index],
                              ),
                              const Spacer(),
                              commonText(text: r"$", fontSize: 20.sp),
                              SizedBox(width: 3.w),
                              commonText(
                                text: price[index],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
