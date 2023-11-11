import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/widgets/app_bar.dart';
import 'package:skill_swap/widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBarApps(),
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
                      const EdgeInsets.only(left: 20.0, right: 20, bottom: 123),
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
                            "Keterampilan",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                "Keterampilan",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: AppSize(context) / 800,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        // itemCount: controller.products.length,
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          // var item = controller.products[index];
                          return ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            child: Container(
                              color: Color(0xffFBF0FF),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            // item["photo"],
                                            "https://picsum.photos/1000",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            6.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Membuat Pupuk Kompos",
                                          style: TextStyle(
                                            fontSize: AppSize(context) / 30,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "Jhon Dhoe",
                                          style: TextStyle(
                                            fontSize: AppSize(context) / 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/ic_star.png",
                                              width: 15.0,
                                              height: 15.0,
                                              fit: BoxFit.fill,
                                            ),
                                            Text(
                                              "4.9 | 1000 Ulasan",
                                              style: TextStyle(
                                                  fontSize:
                                                      AppSize(context) / 50,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8.0),
                                            ),
                                            color: AppColors.primary),
                                        child: Text(
                                          "Join",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(bottom: 0, child: BottomNavigationBarApps()),
          ],
        ),
      ),
    );
  }
}
