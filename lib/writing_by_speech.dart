import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as st;

class SpeechWriting extends StatefulWidget {
  const SpeechWriting({Key? key}) : super(key: key);

  @override
  State<SpeechWriting> createState() => _SpeechWritingState();
}

class _SpeechWritingState extends State<SpeechWriting> {
  st.SpeechToText _speechToText = st.SpeechToText();
  String text="";
  bool isinit=false;
  void _initSpeech() async {
    bool v=await _speechToText.initialize(debugLogging: true);
    setState(() {
      isinit=v;
    });
  }
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      text = result.recognizedWords;
    });
  }
  void _stopListening() async {
    await _speechToText.stop();
  }
  String status="Not Listening";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSpeech();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(status,style: TextStyle(color: Colors.black)),
          SizedBox(
            height: 10,
          ),
          Text(isinit.toString(),style: TextStyle(color: Colors.black)),
          SizedBox(
            height: 10,
          ),
          Text(text,style: TextStyle(color: Colors.black)),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onLongPressStart: (details) async {
              setState(() {
                text="";
                status="Listening";
              });
              await _speechToText.listen(onResult: _onSpeechResult);
            },
            onLongPressEnd: (details){
              setState(() {
                status="Not Listening";
              });
              _stopListening();
            },
            child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Long Press',style: TextStyle(color: Colors.black),)
            ),
          )
        ],
      ),
    );
  }
}
