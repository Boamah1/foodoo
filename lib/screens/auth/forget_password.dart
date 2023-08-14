import 'package:foodoo/hooks/export.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: boldText(
          text: "Forget Password",
          fontSize: 12.sp,
        ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: ((context) => const Login()),
        //       ),
        //     );
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.w),
                  child: Container(
                    alignment: Alignment.center,
                    width: 250.w,
                    height: 250.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/Do vegetables fly_!.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Enter your phone number to get\n",
                    style: TextStyle(
                      fontFamily: "Lobster Two",
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),
                    children: const [
                      TextSpan(
                        text: "a verification code",
                        style: TextStyle(
                          fontFamily: "Lobster Two",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText2(text: "Email"),
                    SizedBox(height: 3.h),
                    fieldMethod(
                      obscureText: false,
                      hintText: "name@example.com",
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 14.h),
                        child: FaIcon(
                          FontAwesomeIcons.at,
                          size: 15.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                buttonMethod(
                    text: "Send",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const ChangePassword()),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
