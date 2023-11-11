import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/widgets/bottom_navbar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 100),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 28.0,
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          title: Text("John doe",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 17)),
                          trailing: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                border: Border.all(
                                    width: 1, color: AppColors.redCream)),
                            child: const Badge(
                              backgroundColor: Color(0xff892CDC),
                              label: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              child: const ImageIcon(
                                AssetImage(
                                  "assets/images/ic_notification.png",
                                ),
                                size: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          iconColor: AppColors.primary,
                          prefixIconColor: AppColors.primary,
                          suffixIconColor: AppColors.primary,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 15.0),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(1200.00)),
                            borderSide: BorderSide(
                              color: AppColors.primary,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(1200.00)),
                            borderSide: BorderSide(
                              color: AppColors.primary,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(1200.00)),
                            borderSide: BorderSide(
                              color: AppColors.primary,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.search,
                              size: 33,
                              color: Colors.blueGrey[900],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Message",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // InkWell(
                        //   onTap: () {},
                        //   child: Padding(
                        //     padding:
                        //         const EdgeInsets.symmetric(horizontal: 5.0),
                        //     child: Text(
                        //       "Keterampilan",
                        //       style: TextStyle(
                        //         fontSize: 15.0,
                        //         fontWeight: FontWeight.w600,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: List.generate(
                        10,
                        (index) => InkWell(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  margin: EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(1000.0),
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("John doe",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Text("john.doe@gmail.com"),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("10.30",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500)),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 2),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(1200.0),
                                              ),
                                              color: AppColors.primary,
                                            ),
                                            child: Text("1",
                                                style: TextStyle(
                                                  color: AppColors.white,
                                                )),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(bottom: 0, child: BottomNavigationBarApps()),
        ],
      ),
    ));
  }
}
