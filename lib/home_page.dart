import 'package:flutter/material.dart';
import 'package:flutterandgeminiai/home_notifier.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeNotifier(context: context),
      child: Consumer<HomeNotifier>(
        builder: (context, value, child) => Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/pattern_background.jpg",
                  repeat: ImageRepeat.repeat,
                ),
              ),
              Positioned(
                top: 60,
                left: 16,
                right: 16,
                bottom: 80,
                child: ListView(
                  reverse: true,
                  children: value.list
                      .map((e) => Column(
                            crossAxisAlignment: e.posisi == "kiri"
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 240,
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(bottom: 16),
                                decoration: BoxDecoration(
                                  color: e.posisi == "kiri"
                                      ? Colors.white
                                      : Colors.tealAccent[400],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      e.chat,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      e.createdDate,
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                  // children: [
                  //   Text("Hallo"),
                  //   Text("Apa Kabar"),
                  //   Text("Siapa di sana?"),
                  // ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(360),
                        child: Image.asset(
                          "assets/putri.jpeg",
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      // Text("${value.chat.text}"),
                      Text("Putri Ajeng Imamah"),
                      Spacer(),
                      Icon(
                        Icons.videocam,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.call,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  // height: 60,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextField(
                          maxLines: null,
                          controller: value.chat,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () => value.submit(),
                              child: Icon(Icons.send),
                            ),
                            fillColor: Colors.grey[300],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.camera_alt),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.mic),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
