import 'package:foodoo/home/bottom_nav_page.dart';
import 'package:foodoo/hooks/export.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextController textcontroller = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => ChangePassword()),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                        SizedBox(width: 95.w),
                        boldText(
                          text: "Change Password",
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.w),
                    child: Container(
                      alignment: Alignment.center,
                      width: 250.w,
                      height: 250.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "images/Do vegetables fly_!.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Enter the four-digit code sent\n",
                      style: TextStyle(
                        fontFamily: "Lobster Two",
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                      children: const [
                        TextSpan(
                          text: "to your email",
                          style: TextStyle(
                            fontFamily: "Lobster Two",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    boxMethod(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        controller: textcontroller.controller2),
                    boxMethod(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        controller: textcontroller.controller1),
                    boxMethod(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        controller: textcontroller.controller3),
                    boxMethod(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        controller: textcontroller.controller4),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Resend Code",
                style: TextStyle(
                  fontFamily: "Lobster Two",
                  fontSize: 15.sp,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.grey.withOpacity(0.5),
                  decorationThickness: 2,
                ),
              ),
              SizedBox(height: 15.h),
              buttonMethod(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const BottomNavPage()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
