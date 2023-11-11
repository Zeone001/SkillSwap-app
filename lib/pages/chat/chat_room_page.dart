import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/pages/chat/item_chat.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({super.key});

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  @override
  Widget build(BuildContext context) {
    List messageList = [
      {
        "message": "Can you check your email?",
        "images": [],
        "time": "10:02",
        "isSender": false,
        "sender": {
          "name": "Keanue Reeve",
          "avatar_url":
              "https://i.ibb.co/PMKdvj4/photo-1529156349890-84021ffa9107-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        }
      },
      {
        "message": "",
        "images": [
          "https://images.unsplash.com/photo-1483972117325-ce4920ff780b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dW5pdGVkJTIwa2luZ2RvbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60g",
          "https://images.unsplash.com/photo-1601860354536-8e0dd988651b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dW5pdGVkJTIwc3RhdGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          "https://images.unsplash.com/photo-1522885147691-06d859633fb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmlubGFuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        ],
        "time": "10:02",
        "isSender": true,
      },
      {
        "message": "Yes. i have check it. Thanks for your update!",
        "images": [],
        "time": "10:02",
        "isSender": true,
      },
      {
        "message": "This jelly fish is awesome",
        "images": [
          "https://images.unsplash.com/photo-1628944682084-831f35256163?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amVsbHklMjBmaXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ],
        "time": "10:02",
        "isSender": true,
      },
      {
        "message": "I have one!",
        "images": [
          "https://images.unsplash.com/photo-1545537619-3b5475acd977?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amVsbHklMjBmaXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ],
        "time": "10:02",
        "isSender": false,
        "sender": {
          "name": "Keanue Reeve",
          "avatar_url":
              "https://i.ibb.co/ysF41JY/photo-1546957221-37816b007052-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
        }
      },
      {
        "message": "Haha, Cool!",
        "images": [
          "https://images.unsplash.com/photo-1565799557186-1abfed8a31e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8amVsbHklMjBmaXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          "https://images.unsplash.com/photo-1563204424-83201789377d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8amVsbHklMjBmaXNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        ],
        "time": "10:02",
        "isSender": true,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              InkWell(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                onTap: () {
                  // Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 24.0,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1200.0),
                    ),
                    child: Image.network(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                      fit: BoxFit.cover,
                      width: 45,
                      height: 45,
                    ),
                  ),
                  title: Text(
                    "Name",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    maxLines: 1,
                    'status',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: AppColors.black,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.videocam_rounded,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call_rounded,
                          size: 24.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 58.0,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                    children: List.generate(messageList.length, (index) {
                  print('ini list ${messageList[index]}');
                  var item = messageList[index];
                  if (index == 0) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text('${item['time']}'),
                        ),
                        itemChat(
                          message: '${item['message']}',
                          isSender: item['isSender'],
                          time: item['time'],
                        ),
                      ],
                    );
                  } else {
                    if (item['time'] == messageList[index - 1]['time']) {
                      return itemChat(
                        message: '${item['message']}',
                        isSender: item['isSender'],
                        time: item['time'],
                      );
                    } else {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text('${item['time']}'),
                          ),
                          itemChat(
                            message: '${item['message']}',
                            isSender: item['isSender'],
                            time: item['time'],
                          ),
                        ],
                      );
                    }
                  }
                })),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 5.0, left: 20, right: 20),
            // color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 220, 220, 222),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            autocorrect: false,
                            // controller: controller.chatC,
                            // focusNode: controller.focusNode,
                            cursorColor: Colors.black,
                            // onEditingComplete: () => controller.newChat(
                            //     authC.user.value.email!,
                            //     controller.chatC.text,
                            //     Get.arguments as Map<String, dynamic>),
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 20,
                                )),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.mic_rounded,
                                size: 24.0,
                              ),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.attach_file_rounded,
                                size: 24.0,
                              ),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const ImageIcon(
                                AssetImage(
                                  "assets/images/ic_camera.png",
                                ),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Material(
                  borderRadius: BorderRadius.all(
                    Radius.circular(1200.0),
                  ),
                  color: AppColors.primary,
                  child: InkWell(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1200.0),
                    ),
                    // onTap: () => controller.newChat(
                    //     authC.user.value.email!,
                    //     controller.chatC.text,
                    //     Get.arguments as Map<String, dynamic>),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      child: const ImageIcon(
                        AssetImage(
                          "assets/images/ic_send.png",
                        ),
                        size: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
