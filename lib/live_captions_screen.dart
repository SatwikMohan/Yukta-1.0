import 'package:flutter/material.dart';
class LiveCaptionScreen extends StatefulWidget {
  const LiveCaptionScreen({Key? key}) : super(key: key);

  @override
  State<LiveCaptionScreen> createState() => _LiveCaptionScreenState();
}

class _LiveCaptionScreenState extends State<LiveCaptionScreen> {
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: Row(
              children: [
                TextField(
                  controller: textEditingController,
                ),
                SizedBox(width: 15,),
                FloatingActionButton(onPressed: (){

                },
                  child: Icon(Icons.send),
                ),
              ],
            ),

          )
        ],
      ),
    );
  }
}
