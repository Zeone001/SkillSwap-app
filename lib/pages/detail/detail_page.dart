import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/widgets/app_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Menanam Padi",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            Text(
              "Rangga",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        leadingWidth: 55,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 15),
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
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                child: Image.network(
                  "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Deskripsi",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Menanam pohon adalah tindakan penting yang dilakukan untuk melestarikan lingkungan alam dan mendukung keberlanjutan planet kita. Kegiatan ini melibatkan penanaman bibit pohon atau benih di tanah dengan tujuan untuk menciptakan hutan yang lebih hijau, mengurangi dampak perubahan iklim, dan meningkatkan kualitas lingkungan. Selain itu, menanam pohon juga memiliki manfaat ekologis dan sosial yang signifikan.",
                style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Jadwal",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Pertukaran menanam pohon biasanya diadakan pada waktu yang sesuai dengan musim penanaman yang paling ideal, seperti musim semi atau musim gugur. Jadwal pertukaran ini dapat bervariasi tergantung pada wilayah geografis dan kondisi cuaca. Acara-acara ini sering diatur pada akhir pekan atau hari libur untuk memungkinkan partisipasi lebih banyak orang. Informasi lebih lanjut tentang jadwal acara ini akan diumumkan sebelum pelaksanaan. \n \nBergabunglah dalam pertukaran ilmu kami tentang menanam pohon! Ayo berpartisipasi, belajar bersama, dan berbagi ide untuk menjaga lingkungan. Gabunglah sekarang dan mari kita jadikan dunia ini lebih hijau bersama-sama!",
                style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Rating dan Ulasan",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/ic_star.png",
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(
                        fontSize: AppSize(context) / 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 1,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 135,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image:
                                    NetworkImage("https://picsum.photos/1000"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 22,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image:
                                    NetworkImage("https://picsum.photos/1000"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Colors.white),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 55,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image:
                                    NetworkImage("https://picsum.photos/1000"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Colors.white),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 85,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/1000"),
                                          fit: BoxFit.fill,
                                          opacity: 400),
                                      color: Color(0xFF1B1A1D),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50, color: Colors.white),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+1000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: AppColors.primary),
                      child: Text(
                        "Join",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
