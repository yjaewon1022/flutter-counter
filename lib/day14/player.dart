// 음악파일을 재생할 수 있는 외부라이브러리 사용하기
//audio players 설치해줬음

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AudioPageState();
  }
}

class AudioPageState extends State<AudioPage> {
  // AudioPlayer() :앱에서 음악실행해주는 class
  final player = AudioPlayer();

  // 음악진행시간표기
  double value = 0;

  //슬라이더에 표시될 총길이
  double totalPlayTime = 0;

  // 현재음악의 진행상태를 확인해주는 변수 생성
  // 추후에 더블로 변경헤서 totalPlayTime에 담아줘야함.
  Duration duration = Duration.zero;

  // / Slider에서 현재 음악 진행 상태를 표기하기 위해서 음악의 총 길이에서 현재 위치를 뜻하는 변수
  // 첫값은 0로 줬음.
  Duration position = Duration.zero;

  //initstate로 value변수에 음악파일 전체 재생시간을 담자
  // override initstate한다.
  // initstate : 현재화면으로들어왔을때 가장먼저 실행한다.
  @override
  void initState() {
    // 부모클래스의 initState사용하겠다.
    super.initState();
    // player.onDurationChanged : 현재 음악진행이 변경되었을때 실행되는지 확인
    // .listen((Duration d)... : 값이 변경될때마다 값을 duration에 담아줘
    player.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
        // inSeconds.toDouble() : 초단위로 나누어 더블로 변환
        // 초를 더블로 바꿔야 슬라이더를 사용할 수 있음.
        totalPlayTime = duration.inSeconds.toDouble();
      });
    });

    //
    player.onPositionChanged.listen((Duration d) {
      setState(() {
        duration = d;
        // d(현재상태)를 초단위로 나눠서 0~음악최대길이까지로 제한을 건다.
        // clamp(최소길이, 최대길이)
        value = d.inSeconds.clamp(0, duration.inSeconds).toDouble();
      });
    });

    //음악을 끝까지 재생했을때 슬라이더의 값을 0으로 만드는 기능
    player.onPlayerComplete.listen((event) {
      setState(() {
        position = Duration.zero;
        value = Duration.zero.inSeconds.toDouble();
      });
    });
  }

  //UrlSource() 이링크의 소스를 가져와서 음악실행해라
  // UrlSource('링크') = 링크에 있는 소스를 가지고 와라.
  // player.play 를 통해서 () 안에 있는 음악 파일을 재생할 수 있게 해주는 코드는 다음과 같음

  playMusic() async {
    try {
      await player.play(
        // UrlSource(
        //   'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
        // ),
        //
        // 인터넷이 연결되있지 않다면?? 컴퓨터 내부에 있는 음악파일 불러오기. assetsource를 쓴다.
        // 혹시 재생이 안된다면 : 앱에서는 우리가 만든 폴더를 다른 방법으로 인식시켜주어야함.
        // 앱에서는 컴퓨터의 경로에 접근할 수 있도록 권한이 있어야 함. -> pubspec.yaml파일 수정하기 - assets부분에 폴더를 적어주자.
        AssetSource("audio/SoundHelix-Song-1.mp3"),
      );
    } catch (error) {
      print("에러 : $error");
    }
    //만약 음악재생  클릭시 소리없이 30초 뒤에 에러가 발생한다면?
    // player.play기능은 UrlSource()의 재생요청을 보내는데
    // 실제로 없는 음악파일이기때문에...timeout Exception 오류발생함
    // try catch 사용해서 에러 잡자.
  }

  //일시 정지 함수
  pauseMusic() async {
    await player.pause();
  }

  //정지 함수
  stopMusic() async {
    await player.stop();
  }

  // slider를 옮겼을 때 해당위치에서 음악재생하는기능
  moveMusic(double seconds) async {
    // 사용자가 옮긴 값은 더블이라 duration으로 변경해줘야함.
    final newPosition = Duration(seconds: seconds.toInt());
    // seek() : 이후에 입력한 구간으로 재생시간 옮겨줘
    await player.seek(newPosition);
  }

  //
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("뮤직플레이어")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 슬라이더
            Slider(
              value: value,
              min: 0, //최저점
              max: totalPlayTime, //최고점
              activeColor: Colors.red,
              // 라벨지정-------------
              // label: "라벨지정",
              onChanged: (double newValue) {
                setState(() {
                  moveMusic(newValue);
                });
                // value = newValue;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    playMusic();
                  },
                  child: Text("재생"),
                ),
                ElevatedButton(
                  onPressed: () {
                    pauseMusic();
                  },
                  child: Text("일시정지"),
                ),
                ElevatedButton(
                  onPressed: () {
                    stopMusic();
                  },
                  child: Text("정지"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
