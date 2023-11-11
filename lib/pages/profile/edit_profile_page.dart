import 'package:flutter/material.dart';
import 'package:flutter_tags_x/flutter_tags_x.dart';
import 'package:skill_swap/const/app_colors.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  GlobalKey<TagsState> _skillsKey = GlobalKey<TagsState>();
  GlobalKey<TagsState> _learnKey = GlobalKey<TagsState>();

  List<String> _skills = <String>[];
  List<String> _learn = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 149,
                height: 155,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 149,
                        height: 149,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 107,
                      top: 113,
                      child: InkWell(
                        borderRadius: BorderRadius.all(
                          Radius.circular(1200.0),
                        ),
                        onTap: () {},
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(
                              side: BorderSide(width: 2, color: Colors.white),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/ic_camera.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   left: 119,
                    //   top: 125,
                    //   child: Container(
                    //     width: 17.50,
                    //     height: 17.50,
                    //     child: Stack(
                    //       children: [
                    //         Positioned(
                    //           left: 0,
                    //           top: 1.09,
                    //           child: Container(
                    //             width: 17.50,
                    //             height: 15.31,
                    //             decoration: BoxDecoration(
                    //               image: DecorationImage(
                    //                 image: AssetImage(
                    //                     'assets/images/ic_camera.png'),
                    //                 fit: BoxFit.fill,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                      autofillHints: const [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      // focusNode: _emailNode,
                      // controller: _emailController,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.blueGrey,
                      onFieldSubmitted: (value) {
                        // FocusScope.of(context).requestFocus(_emailNode);
                      },
                      decoration: const InputDecoration(
                        hintText: "Username",
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                      autofillHints: const [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      // focusNode: _emailNode,
                      // controller: _emailController,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.blueGrey,
                      onFieldSubmitted: (value) {
                        // FocusScope.of(context).requestFocus(_emailNode);
                      },
                      decoration: const InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 2,
                          )),
                      child: Tags(
                        key: _skillsKey,
                        alignment: WrapAlignment.start,
                        itemCount: _skills.length,
                        columns: 10,
                        textField: TagsTextField(
                          width: double.infinity,
                          hintText: 'Keterampilan Anda',
                          textStyle: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                          inputDecoration: InputDecoration(
                              hintStyle: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                          onSubmitted: (string) {
                            setState(() {
                              _skills.add(string);
                            });
                          },
                        ),
                        itemBuilder: (index) {
                          return ItemTags(
                            index: index,
                            title: _skills[index],
                            combine: ItemTagsCombine.withTextAfter,
                            pressEnabled: false,
                            elevation: 0,
                            active: true,
                            activeColor: AppColors.primary,
                            onPressed: (i) => print(i),
                            onLongPressed: (i) => print(i),
                            removeButton: ItemTagsRemoveButton(
                              color: AppColors.primary,
                              backgroundColor: AppColors.white,
                              onRemoved: () {
                                setState(() {
                                  _skills.removeAt(index);
                                });
                                return true;
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 2,
                          )),
                      child: Tags(
                        key: _learnKey,
                        alignment: WrapAlignment.start,
                        itemCount: _learn.length,
                        columns: 10,
                        textField: TagsTextField(
                          width: double.infinity,
                          hintText: 'Keterampilan yang ingin di pelajari',
                          textStyle: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                          inputDecoration: InputDecoration(
                              hintStyle: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                          onSubmitted: (string) {
                            setState(() {
                              _learn.add(string);
                            });
                          },
                        ),
                        itemBuilder: (index) {
                          return ItemTags(
                            index: index,
                            title: _learn[index],
                            combine: ItemTagsCombine.withTextAfter,
                            pressEnabled: false,
                            elevation: 0,
                            active: true,
                            activeColor: AppColors.primary,
                            onPressed: (i) => print(i),
                            onLongPressed: (i) => print(i),
                            removeButton: ItemTagsRemoveButton(
                              color: AppColors.primary,
                              backgroundColor: AppColors.white,
                              onRemoved: () {
                                setState(() {
                                  _learn.removeAt(index);
                                });
                                return true;
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                      autofillHints: const [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      // focusNode: _emailNode,
                      // controller: _emailController,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.blueGrey,
                      onFieldSubmitted: (value) {
                        // FocusScope.of(context).requestFocus(_emailNode);
                      },
                      decoration: const InputDecoration(
                        hintText: "No. Telepon",
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                      autofillHints: const [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      minLines: 5,
                      maxLines: 10,
                      // focusNode: _emailNode,
                      // controller: _emailController,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.blueGrey,
                      onFieldSubmitted: (value) {
                        // FocusScope.of(context).requestFocus(_emailNode);
                      },
                      decoration: const InputDecoration(
                        hintText: "Deskripsi",
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
