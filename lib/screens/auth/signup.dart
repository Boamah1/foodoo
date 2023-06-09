import 'package:foodoo/hooks/export.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextController textController = TextController();
  bool isVisible = true;
  bool isVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.sp),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 110.h,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        SizedBox(width: 70.w),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Container(
                            height: 150.h,
                            width: 125.w,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'images/Do vegetables fly_!.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Foodoo',
                    style: getHeader(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText2(
                      text: "Name",
                    ),
                    SizedBox(height: 3.h),
                    fieldMethod(
                      hintText: "Bighead✌🏿",
                      controller: textController.nameController,
                      keyboardType: TextInputType.name,
                      autofillHints: [AutofillHints.name],
                      obscureText: false,
                      suffixIcon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    commonText2(
                      text: "Phone",
                    ),
                    SizedBox(height: 3.h),
                    fieldMethod(
                      hintText: "234355432",
                      obscureText: true,
                      controller: textController.phoneNumController,
                      keyboardType: TextInputType.phone,
                      suffixIcon: Icon(
                        Icons.phone_outlined,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    commonText2(text: "Password"),
                    SizedBox(height: 3.h),
                    fieldMethod(
                      hintText: "jbsbjsaajc",
                      obscureText: isVisible,
                      keyboardType: TextInputType.text,
                      controller: textController.passwordController,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                          isVisible ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    commonText2(text: "Confirm Password"),
                    SizedBox(height: 3.h),
                    fieldMethod(
                      hintText: 'shdskkcsc',
                      obscureText: isVisible2,
                      keyboardType: TextInputType.text,
                      controller: textController.confirmPassController,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible2 = !isVisible2;
                          });
                        },
                        icon: Icon(
                          isVisible2 ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    forgotMethod(onTap: () {}),
                    SizedBox(height: 25.h),
                    Center(
                      child: Column(
                        children: [
                          buttonMethod(
                            text: "Sign up",
                            onPressed: () {},
                          ),
                          SizedBox(height: 10.h),
                          boldText(text: 'or continue with', fontSize: 10.sp),
                        ],
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
