import 'package:foodoo/hooks/export.dart';

class OfferCard extends StatelessWidget {
  //  OfferCard({super.key});
  List<String> images = [
    "images/Sichuan.jpg",
    "images/Kimchi Jjigae (Kimchi Stew).png",
    "images/Sweet Chili Tofu.jpg",
  ];

  List<String> info = [
    "Sichuan Hotpt   ",
    "kimchi-jjigae   ",
    "Sweet Chili Tofu",
  ];

  List<String> rating = [
    '4.5',
    '4.2',
    '4.0',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: images.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        return Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              height: 140.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(6, 6),
                    spreadRadius: 1,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 8.h),
                  Container(
                    height: 120.h,
                    width: 140.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.w),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          images[index],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 18.h),
                      Row(
                        children: [
                          commonText(
                            text: info[index],
                          ),
                          SizedBox(width: 50.w),
                          const LikeButton(),
                        ],
                      ),
                      commonText(text: "Spicy dish for special"),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Icon(Icons.alarm),
                          SizedBox(width: 2.h),
                          commonText(text: "jnajha"),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Icon(Icons.star_border_outlined),
                          SizedBox(width: 3.w),
                          commonText(
                            text: rating[index],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
