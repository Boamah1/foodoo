import 'package:foodoo/hooks/export.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextController textController = TextController();
  bool canSee = true;
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.h, vertical: 10.h),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        SizedBox(width: 85.w),
                        Center(
                          child: boldText(
                            text: "Change Password",
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.w),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 230.h,
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
                      text: "Your password is same in both\n",
                      style: TextStyle(
                        fontFamily: "Lobster Two",
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                      children: const [
                        TextSpan(
                          text: "password and confirmed password",
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
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText2(text: "Password"),
                    SizedBox(height: 8.h),
                    fieldMethod(
                      obscureText: canSee,
                      hintText: "hdbx",
                      keyboardType: TextInputType.text,
                      controller: textController.passwordController,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            canSee = !canSee;
                          });
                        },
                        icon: Icon(
                          canSee ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    commonText2(text: "Comfirm Password"),
                    SizedBox(height: 8.h),
                    fieldMethod(
                      obscureText: isvisible,
                      keyboardType: TextInputType.text,
                      controller: textController.confirmPassController,
                      hintText: "jdvjd",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: Icon(
                          isvisible ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Center(
                      child: buttonMethod(text: "Login"),
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
