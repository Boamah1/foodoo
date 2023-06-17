import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodoo/hooks/export.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Item> items = listItems;

  num numOfItems = 0;

  // List <String> ddhc = [
  //   'fsf',
  //   'ddd',
  //   'dsvds',
  //   'dvsv',
  //   'afd',
  //   'ffgsr',
  //   'rsg',
  //   'afa',
  // ];

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
        centerTitle: true,
        title: boldText(
          text: "Cart",
          fontSize: 16.sp,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: SlidableAutoCloseBehavior(
        closeWhenOpened: true,
        child: SafeArea(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: items.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = items[index];
              return Slidable(
                key: UniqueKey(),
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  dismissible: DismissiblePane(
                    // dismissalDuration: Duration(seconds: 1),
                    onDismissed: () => onDismissed(index, SliderAction.delete),
                  ),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                      label: "Delete",
                      onPressed: (context) =>
                          onDismissed(index, SliderAction.delete),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(width: 15.w),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      padding: EdgeInsets.all(10.w),
                      height: 140.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.r),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(17.w),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                              width: 120.w,
                              height: 120.h,
                            ),
                          ),
                          // SizedBox(width: 1.sp),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  commonText(
                                    text:
                                        //  images.values.elementAt(index)
                                        item.title,
                                  ),
                                  SizedBox(width: 80.w),
                                  const LikeButton(),
                                ],
                              ),
                              commonText(text: item.dics),
                              SizedBox(height: 3.h),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.alarm,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 3.w),
                                  commonText(text: item.time),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 3.w),
                                  commonText(text: item.rating),
                                  SizedBox(width: 80.w),
                                  CircleAvatar(
                                    radius: 10.r,
                                    backgroundColor: Colors.grey.shade200,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        // ignore: deprecated_member_use
                                        primary: Colors.black,
                                        shape: const CircleBorder(),
                                        padding: EdgeInsets.all(0),
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
                                  SizedBox(width: 5.w),
                                  commonText(
                                    text: numOfItems.toString().padLeft(2, '0'),
                                  ),
                                  SizedBox(width: 5.w),
                                  CircleAvatar(
                                    radius: 10.r,
                                    backgroundColor: Colors.grey,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Colors.black,
                                        shape: const CircleBorder(),
                                        padding: EdgeInsets.all(0),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          numOfItems++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void onDismissed(int index, SliderAction action) {
    final item = items[index];
    setState(() => items.removeAt(index));

    switch (action) {
      case SliderAction.delete:
        _showSnackBar(
          context,
          "${item.title} is deleted",
          Colors.black,
          // const Duration(seconds: 50),
          SnackBarAction(
            label: "Dismiss",
            onPressed: () {},
          ),
        );
        break;
    }
  }

  void _showSnackBar(
      BuildContext context, String message, Color color, var action) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      // duration: duration,
      action: action,
    );
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
