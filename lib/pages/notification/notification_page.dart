import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Notifikasi",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        leadingWidth: 70,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: InkWell(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.redCream),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Icon(
                Icons.chevron_left_rounded,
                color: Colors.black,
                size: 29.0,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: List.generate(
                  10,
                  (index) => Container(
                    padding: EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFBF0FF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(1200.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(1600.0),
                            ),
                            color: Colors.blue[400],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Pesan Masuk",
                                style: TextStyle(
                                  fontSize: AppSize(context) / 30,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1, // Maksimal satu baris
                                overflow: TextOverflow
                                    .ellipsis, // Memotong dan menampilkan elipsis jika melebihi satu baris
                              ),
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: AppSize(context) / 35,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1, // Maksimal satu baris
                                overflow: TextOverflow
                                    .ellipsis, // Memotong dan menampilkan elipsis jika melebihi satu baris
                              ),
                              Text(
                                "10 Minutes ago",
                                style: TextStyle(
                                  fontSize: AppSize(context) / 50,
                                ),
                                maxLines: 1, // Maksimal satu baris
                                overflow: TextOverflow
                                    .ellipsis, // Memotong dan menampilkan elipsis jika melebihi satu baris
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.close_rounded,
                              size: 25.0,
                              color: Color(0xffFF0000),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.check_rounded,
                              size: 25.0,
                              color: Color(0xff13EA42),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: const ImageIcon(
                              AssetImage(
                                "assets/images/ic_notif_chat.png",
                              ),
                              size: 25.0,
                              color: Color(0xff13EA42),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
