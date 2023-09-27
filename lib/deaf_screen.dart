import 'package:braille/live_captions_screen.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as st;
import 'package:http/http.dart' as http;
class DeafScreen extends StatefulWidget {
  const DeafScreen({Key? key}) : super(key: key);

  @override
  State<DeafScreen> createState() => _DeafScreenState();
}

class _DeafScreenState extends State<DeafScreen> {
  String writings="";
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
      writings = result.recognizedWords;
    });
  }

  // void sendToDatabase(String writings) async{
  //   String putbaseUrl="https://braille-70ade-default-rtdb.firebaseio.com/Prototype.json";
  //   final body={
  //     'Data':writings
  //   };
  //   final response=await http.put(Uri.parse(putbaseUrl),headers: { 'Content-Type':'application/json' },
  //       body: jsonEncode(body)
  //   );
  //   print(response.body.toString());
  // }

  void _stopListening() async {
    await _speechToText.stop();
    print('In stop listening function');
    await Future.delayed(Duration(seconds: 5));
    print(writings);
    setState(() {
      status="Not Listening";
      //writings=writings+text;
      //sendToDatabase(writings);
    });
    for(int i=0;i<writings.length;i++){
      var c=writings[i];
      print(c);
      await Future.delayed(Duration(seconds: 1),(){
        if(c==' '){
          wid=Container();
        }
        if(c=='A'||c=='a'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2012/04/24/16/59/sign-40436_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/A.jpg')),
            );
          });
        }
        if(c=='B'||c=='b'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298288_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/B.jpg')),
            );
          });
        }
        if(c=='C'||c=='c'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298289_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/C.jpg')),
            );
          });
        }
        if(c=='D'||c=='d'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298315_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/D.jpg')),
            );
          });
        }
        if(c=='E'||c=='e'){
          setState(() {
            handUrl="";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/E.jpg')),
            );
          });
        }
        if(c=='F'||c=='f'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298292_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/F.jpg')),
            );
          });
        }
        if(c=='G'||c=='g'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298293_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/G.jpg')),
            );
          });
        }
        if(c=='H'||c=='h'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298294_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/H.jpg')),
            );
          });
        }
        if(c=='I'||c=='i'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298295_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/I.jpg')),
            );
          });
        }
        if(c=='J'||c=='j'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298296_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/J.jpg')),
            );
          });
        }
        if(c=='K'||c=='k'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298297_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/K.jpg')),
            );
          });
        }
        if(c=='L'||c=='l'){
          setState(() {
            handUrl="";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/L.jpg')),
            );
          });
        }
        if(c=='M'||c=='m'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298299_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/M.jpg')),
            );
          });
        }
        if(c=='N'||c=='n'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298300_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/N.jpg')),
            );
          });
        }
        if(c=='O'||c=='o'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298314_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/O.jpg')),
            );
          });
        }
        if(c=='P'||c=='p'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298302_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/P.jpg')),
            );
          });
        }
        if(c=='Q'||c=='q'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298303_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/Q.jpg')),
            );
          });
        }
        if(c=='R'||c=='r'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298304_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/R.jpg')),
            );
          });
        }
        if(c=='S'||c=='s'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298305_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/S.jpg')),
            );
          });
        }
        if(c=='T'||c=='t'){
          setState(() {
            handUrl="";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/T.jpg')),
            );
          });
        }
        if(c=='U'||c=='u'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298307_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/U.jpg')),
            );
          });
        }
        if(c=='V'||c=='v'){
          setState(() {
            handUrl="";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/Q.jpg')),
            );
          });
        }
        if(c=='W'||c=='w'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298717_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/W.jpg')),
            );
          });
        }
        if(c=='X'||c=='x'){
          setState(() {
            handUrl="";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/X.jpg')),
            );
          });
        }
        if(c=='Y'||c=='y'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298311_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/Y.jpg')),
            );
          });
        }
        if(c=='Z'||c=='z'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298313_640.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/alphabet_sign/Z.jpg')),
            );
          });
        }
        if(c=='0'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298314_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/0.jpg')),
            );
          });
        }
        if(c=='1'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298315_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/1.jpg')),
            );
          });
        }
        if(c=='2'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298712_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/2.jpg')),
            );
          });
        }
        if(c=='3'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298713_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/3.jpg')),
            );
          });
        }
        if(c=='4'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298714_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/4.jpg')),
            );
          });
        }
        if(c=='5'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298716_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/5.jpg')),
            );
          });
        }
        if(c=='6'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298309_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/6.jpg')),
            );
          });
        }
        if(c=='7'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298718_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/7.jpg')),
            );
          });
        }
        if(c=='8'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298719_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/8.jpg')),
            );
          });
        }
        if(c=='9'){
          setState(() {
            handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298720_1280.png";
            wid=Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/numeric_sign/9.jpg')),
            );
          });
        }
      });
    }
  }
  String status="Not Listening";
  String handUrl="";
  Widget wid=Container();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSpeech();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LiveCaptionScreen()));
          }, child: Text('Live Captions',style: TextStyle(color: Colors.black),))
        ],
      ),
      body: Center(
        child: Column(
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
            Text(writings,style: TextStyle(color: Colors.black)),
            GestureDetector(
              onLongPressStart: (details)async {
                setState(() {
                  writings="";
                  wid=Container();
                  //text="";
                  status="Listening";
                });
                await _speechToText.listen(onResult: _onSpeechResult);
              },
              onLongPressEnd: (details){
                _stopListening();
                // for(int i=0;i<writings.length;i++){
                //   var c=writings[i];
                //   print(c);
                //   Future.delayed(Duration(seconds: 2),(){
                //     if(c=='A'||c=='a'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2012/04/24/16/59/sign-40436_1280.png";
                //         wid=Container(
                //           height: 200,
                //           width: 200,
                //           child: Image(image: AssetImage('assets/alphabet_sign/A.jpg')),
                //         );
                //       });
                //     }
                //     if(c=='B'||c=='b'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298288_640.png";
                //         wid=Container(
                //           height: 200,
                //           width: 200,
                //           child: Image(image: AssetImage('assets/alphabet_sign/B.jpg')),
                //         );
                //       });
                //     }
                //     if(c=='C'||c=='c'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298289_640.png";
                //         wid=Container(
                //           height: 200,
                //           width: 200,
                //           child: Image(image: AssetImage('assets/alphabet_sign/C.jpg')),
                //         );
                //       });
                //     }
                //     if(c=='D'||c=='d'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298315_640.png";
                //       });
                //     }
                //     if(c=='E'||c=='e'){
                //       setState(() {
                //         handUrl="";
                //       });
                //     }
                //     if(c=='F'||c=='f'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298292_640.png";
                //       });
                //     }
                //     if(c=='G'||c=='g'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/36/alphabet-1298293_640.png";
                //       });
                //     }
                //     if(c=='H'||c=='h'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298294_640.png";
                //       });
                //     }
                //     if(c=='I'||c=='i'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298295_640.png";
                //       });
                //     }
                //     if(c=='J'||c=='j'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298296_640.png";
                //       });
                //     }
                //     if(c=='K'||c=='k'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298297_640.png";
                //       });
                //     }
                //     if(c=='L'||c=='l'){
                //       setState(() {
                //         handUrl="";
                //       });
                //     }
                //     if(c=='M'||c=='m'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298299_640.png";
                //       });
                //     }
                //     if(c=='N'||c=='n'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298300_640.png";
                //       });
                //     }
                //     if(c=='O'||c=='o'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298314_640.png";
                //       });
                //     }
                //     if(c=='P'||c=='p'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298302_640.png";
                //       });
                //     }
                //     if(c=='Q'||c=='q'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298303_640.png";
                //       });
                //     }
                //     if(c=='R'||c=='r'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298304_640.png";
                //       });
                //     }
                //     if(c=='S'||c=='s'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298305_640.png";
                //       });
                //     }
                //     if(c=='T'||c=='t'){
                //       setState(() {
                //         handUrl="";
                //       });
                //     }
                //     if(c=='U'||c=='u'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/37/alphabet-1298307_640.png";
                //       });
                //     }
                //     if(c=='V'||c=='v'){
                //       setState(() {
                //         handUrl="";
                //       });
                //     }
                //     if(c=='W'||c=='w'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298717_640.png";
                //       });
                //     }
                //     if(c=='X'||c=='x'){
                //       setState(() {
                //         handUrl="";
                //       });
                //     }
                //     if(c=='Y'||c=='y'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298311_640.png";
                //       });
                //     }
                //     if(c=='Z'||c=='z'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298313_640.png";
                //       });
                //     }
                //     if(c=='0'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298314_1280.png";
                //       });
                //     }
                //     if(c=='1'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298315_1280.png";
                //       });
                //     }
                //     if(c=='2'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298712_1280.png";
                //       });
                //     }
                //     if(c=='3'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298713_1280.png";
                //       });
                //     }
                //     if(c=='4'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298714_1280.png";
                //       });
                //     }
                //     if(c=='5'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298716_1280.png";
                //       });
                //     }
                //     if(c=='6'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/00/38/alphabet-1298309_1280.png";
                //       });
                //     }
                //     if(c=='7'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298718_1280.png";
                //       });
                //     }
                //     if(c=='8'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298719_1280.png";
                //       });
                //     }
                //     if(c=='9'){
                //       setState(() {
                //         handUrl="https://cdn.pixabay.com/photo/2016/04/01/08/27/alphabet-1298720_1280.png";
                //       });
                //     }
                //   });
                // }
              },
              child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Long Press',style: TextStyle(color: Colors.black),)
              ),
            ),
            SizedBox(height: 200,),
            handUrl.length>0?
            Container(
              height: 200,
              width: 200,
              child: Image(image: NetworkImage(handUrl)),
            ):
                Container(),
          ],
        ),
      ),
    );
  }
}
