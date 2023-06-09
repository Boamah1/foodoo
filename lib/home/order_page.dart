import 'package:foodoo/hooks/export.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int numOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        // Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: boldText(
          text: "Order",
          fontSize: 16.sp,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add_outlined,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h),
                Center(
                  child: Container(
                    height: 270.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: const DecorationImage(
                        image: AssetImage("images/Do vegetables fly_!.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                commonText(
                  text: "karahi curry",
                  fontSize: 15.sp,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                        color: Colors.grey.shade700),
                    commonText(
                      text: "hsdvbdjx",
                      color: Colors.grey.shade700,
                    ),
                    const Spacer(),
                    Icon(Icons.location_on_outlined,
                        color: Colors.grey.shade700),
                    commonText(text: "hsdvbdjx", color: Colors.grey.shade700),
                    const Spacer(),
                    Icon(Icons.alarm_outlined, color: Colors.grey.shade700),
                    commonText(text: "34min", color: Colors.grey.shade700),
                  ],
                ),
                SizedBox(height: 15.h),
                commonText(
                  text: "Discription",
                  fontSize: 15.sp,
                ),
                commonText(
                  text:
                      "Description is the pattern of narrative development that aims to make \nvivid a place, object, character, or group. Description is one of four \nrhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one \nof the four basic modes.",
                  color: Colors.black.withOpacity(.7),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    boldText(
                      text: r"$",
                      fontSize: 18.sp,
                    ),
                    SizedBox(width: 3.w),
                    boldText(
                      text: "48.5",
                      fontSize: 18.sp,
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // ignore: deprecated_member_use
                          primary: Colors.black,
                          shape: const CircleBorder(),
                          // padding: EdgeInsets.all(8),
                        ),
                        onPressed: () {
                          if (numOfItems > 0) {
                            setState(() {
                              numOfItems--;
                            });
                          }
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.grey.shade200,
                    //     shape: const CircleBorder(),
                    //     padding: const EdgeInsets.all(8),
                    //   ),
                    //   child: const Icon(Icons.remove),
                    // ),
                    SizedBox(width: 5.w),
                    commonText(
                      text: numOfItems.toString().padLeft(2, "0"),
                    ),
                    SizedBox(width: 5.w),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // ignore: deprecated_member_use
                          primary: Colors.black,
                          shape: const CircleBorder(),
                          // padding: EdgeInsets.all(8),
                        ),
                        onPressed: () {
                          setState(() {
                            numOfItems++;
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.grey.shade200,
                    //     shape: const CircleBorder(),
                    //     padding: const EdgeInsets.all(8),
                    //   ),
                    //   child: const Icon(Icons.add),
                    // ),
                  ],
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                    onPressed: () {},
                    child: commonText(
                      text: "Add to Cart",
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                commonText(
                  text: "Add Extra",
                  fontSize: 15.sp,
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10.w),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20.w),
                            width: 80,
                            height: 80,
                            color: Colors.grey.shade300,
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
