import 'package:foodoo/hooks/export.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: Column(
            children: [
              Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  // color: Colors.red,
                  image: const DecorationImage(
                    image: AssetImage('images/Do vegetables fly_!.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              Text(
                "Dlivery",
                style: TextStyle(
                  fontFamily: "PlayfairDisplay",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.h,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      "Food anything solid or liquid which when swallowed, igested and",
                  style: TextStyle(
                    fontFamily: 'Lobster Two',
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                  children: const [
                    TextSpan(
                      text:
                          "\nassimilated in the body provides it with essential nsubstances\n",
                      style: TextStyle(
                        fontFamily: 'Lobster Two',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "called nnutrients and keeps it well..",
                      style: TextStyle(
                        fontFamily: 'Lobster Two',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
