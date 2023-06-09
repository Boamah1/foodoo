import 'package:foodoo/hooks/export.dart';

Padding fieldMethod({
  hintText,
  controller,
  keyboardType,
  obscureText,
  onChanged,
  autofillHints,
  suffixIcon,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.sp),
    child: Container(
      width: double.infinity,
      height: 45.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Center(
        child: TextField(
          onChanged: onChanged,
          obscureText: obscureText,
          cursorColor: Colors.grey[700],
          controller: controller,
          keyboardType: keyboardType,
          autofillHints: autofillHints,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}

Row forgotMethod({onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: GestureDetector(
          onTap: onTap,
          child: commonText(text: "Forgot Password?"),
        ),
      )
    ],
  );
}

SizedBox buttonMethod({text, onPressed}) {
  return SizedBox(
    width: 145.w,
    height: 55.h,
    child: TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: const Color(0xffCACACA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.w),
        ),
      ),
      onPressed: onPressed,
      child: boldText(text: text),
    ),
  );
}

Container boxMethod({onChange, controller}) {
  return Container(
    height: 50.h,
    width: 35.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: TextField(
      controller: controller,
      cursorColor: Colors.black,
      onChanged: onChange,
      style: const TextStyle(color: Colors.black),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
        border: InputBorder.none,
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.black),
        // ),
      ),
    ),
  );
}
