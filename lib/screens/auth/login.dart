import 'package:foodoo/hooks/export.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomePageState();
}

class _HomePageState extends State<Login> {
  TextController textController = TextController();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                          // child: IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(Icons.arrow_back_ios),
                          // ),
                        ),
                        //  SizedBox(width: 70.w),
                        SizedBox(width: 113.w),
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
                      text: 'Email',
                    ),
                    SizedBox(height: 5.h),
                    fieldMethod(
                      hintText: "name@example.com",
                      controller: textController.emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      obscureText: false,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 14.w),
                        child: FaIcon(
                          FontAwesomeIcons.at,
                          size: 15.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    commonText2(
                      text: 'Password',
                    ),
                    SizedBox(height: 5.h),
                    fieldMethod(
                      hintText: "Password",
                      controller: textController.passwordController,
                      keyboardType: TextInputType.text,
                      autofillHints: [AutofillHints.password],
                      obscureText: isvisible,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              isvisible = !isvisible;
                            },
                          );
                        },
                        icon: Icon(
                          isvisible ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    forgotMethod(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const ForgetPassword()),
                        ),
                      );
                    }),
                    SizedBox(height: 30.h),
                    Center(
                      child: Column(
                        children: [
                          buttonMethod(
                              text: 'Login',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const HomePage()),
                                  ),
                                );
                              }),
                          SizedBox(height: 10.h),
                          commonText(text: "or collaborate with"),
                          SizedBox(height: 30.h),
                          RichText(
                            text: TextSpan(
                              text: 'Don\'t have an account, please',
                              style: TextStyle(color: Colors.grey.shade500),
                              children: [
                                TextSpan(
                                  text: " Sign up",
                                  style: const TextStyle(color: Colors.black),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) => const SignUp()),
                                        ),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
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
