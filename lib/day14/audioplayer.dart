// 음악 파일을 재생할 수 있는 외부 라이브러리 설치
// https://pub.dev/packages/audioplayers

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPage extends StatefulWidget {
  @override
  State<AudioPage> createState() {
    return AudioPageState();
  }
}

class AudioPageState extends State<AudioPage> {
  // AudioPlayer() = 앱에서 음악을 실행할 수 있게 해주는 클래스
  final player = AudioPlayer();

  // 우리의 음악 진행 시간을 표기해주는 변수
  double value = 0;

  // Slider에 표기될 총 길이를 뜻하는 변수
  double totalPlayTime = 0;

  // 현재 음악 총 길이를 담을 변수 (추후에 이 값을 double로 변경해서 totalPlayTime에 담아줘야 함)
  late Duration duration = Duration.zero;

  // Slider에서 현재 음악 진행 상태를 표기하기 위해서 음악의 총 길이에서 현재 위치를 뜻하는 변수
  // Duration.zero = 진행 상태가 0인 상태 (초기 상태)
  late Duration position = Duration.zero;

  // initState 기능을 이용해서 value 라는 변수에 우리의 음악 파일 전체 재생 시간을 담겠다!
  // initState 는 무엇이냐? -> 우리가 현재 화면에 들어왔을 때 제일 먼저 실행이 되는 함수
  @override
  void initState() {
    super.initState();

    // value 변수에 현재 재생되는 음악의 시간을 담는 코드를 작성
    // player.onDurationChanged = 현재 음악의 총 길이를 확인하는 기능
    // listen((Duration d) {}) => 값이 변경 될 때 마다 d 라는 변수에 해당 변경된 값을 담아서 사용하겠다.
    // 현재 실행중인 음악의 총 길이는 double 타입이 아니라 Duration 이라는 타입으로 저장이 된다.
    // 그래서 실제로 우리가 Slider 기능에 길이를 지정하기 위해서는
    // 해당 Duration 타입을 double 타입으로 변경해주는 코드를 작성해주어야 한다.
    player.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
        // duration.inSeconds = 음악의 총 길이를 초 단위로 분할해서 반환해주는 기능 (int형)
        // 초를 double 로 변형을 해야 Slider 에서 사용할 수 있기 때문에 toDouble() 을 이용해서
        // 현재 진행 상태를 실수형 (예: 10.0) 으로 변경을 해줌
        totalPlayTime = duration.inSeconds.toDouble();
      });
    });

    // 음악이 진행되면 될수록 현재 Slider에서 얼만큼 진행됐는지 position을 변경해주는 기능
    // onPositionChanged = 음악이 얼만큼 재생되었는지 확인해주는 기능
    player.onPositionChanged.listen((Duration d) {
      setState(() {
        position = d;
        // value 라는 변수에 d (현재 재생상태)를 초 단위로 나누어서 0부터 음악의 최대 길이까지
        // 제한을 건다.
        value = d.inSeconds.clamp(0, duration.inSeconds).toDouble();
      });
    });

    // 음악을 끝까지 재생했을 때 Slider의 값을 0으로 만들어주는 기능
    // onPlayerComplete = 음악이 100% 재생되었는지 확인해주는 기능
    player.onPlayerComplete.listen((event) {
      setState(() {
        position = Duration.zero;
        value = Duration.zero.inSeconds.toDouble();
      });
    });
  }

  // 재생
  playMusic() async {
    // player.play() 기능을 통해서 음악을 실제로 재생할 수 있음!
    // UrlSource('링크') = 링크에 있는 소스를 가지고 와라.
    // player.play 를 통해서 () 안에 있는 음악 파일을 재생할 수 있게 해주는 코드는 다음과 같음
    // UrlSource 로 음악파일을 인터넷에서 가져오게 되면
    // 인터넷이 작동하지 않을 때에는 해당 음악을 재생할 수 없다는 단점이 있음
    // 그렇기 때문에 인터넷이 작동하지 않을 때에도 음악을 재생할 수 있게 만들어보고자 함.
    // 우리의 앱에서 mp3 파일을 재생하기 위해선 어떻게 해야하는가?
    // AssetSource('파일경로') -> 를 이용하면 됨.

    try {
      // AssetSource('파일경로') 로 파일 경로까지 작성했는데 왜 음악이 실행이 안될까?
      // 현재 앱에서는 우리가 만든 폴더를 특수한 방법으로 인식시켜주어야 컴퓨터가 해당 폴더를 확인할 수 있음
      // 쉽게 말해서 우리가 경로는 지정을 했는데, 앱이 해당 경로에 접근할 수 있는 권한이 없음!
      // 앱이 이 폴더로 접근할 수 있는 방법 -> pubspec.yaml 파일을 수정해줘야 함.
      // pubspec.yaml 파일에서 assets: 를 이용해서 이 파일 또는 폴더를 이용할거야. 라고 수정을 해야 함
      // AssetSource() 는 기본적으로 /assets 폴더를 가리키고 있음
      // 그렇기 때문에 파일 경로에 assets 를 제외한 나머지 파일경로를 작성해주면 됨
      await player.play(AssetSource("audio/SoundHelix-Song-1.mp3"));
    } catch (error) {
      print("에러 : $error");
    }

    // 현재는 아무리 실행을 해도 아무런 소리가 나지 않고, 30초 뒤에 에러가 발생하게 되는데
    // 그 이유가 무엇이냐?
    // 기본적으로 player.play 기능은 () 안에 있는 음악 파일을 재생하게 요청을 보내게 되는데,
    // 해당 요청에 대한 응답으로 실제 음악 파일이 실행되지 않는 상태가 30초간 유지되게 되면
    // 이 파일을 재생할 수 없다 라는 에러를 반환하게 됩니다.
    // TimeoutException (TimeoutException after 0:00:30.000000: Future not completed)
    // 이 에러는 앱을 강제로 연결 종료시킬 수 있기 때문에,
    // 앱을 강제 연결 종료 시키지 않고 에러를 해결할 수 있는 방법을 찾아야 함.
    // try-catch 문을 이용해서 에러가 발생해도 앱이 종료되지 않게 코드를 수정하면 되겠다!
  }

  // 일시정지
  pauseMusic() async {
    // player.pause() 기능은 현재 실행중인 음악을 일시정지해라! 라는 기능을 가지고 있음
    await player.pause();
  }

  // 중단 (재생 상태를 아예 처음으로 되돌림)
  stopMusic() async {
    await player.stop();
  }

  // Slider를 옮겼을 때 해당 위치(재생시간) 에 맞게 변경해주는 기능
  moveMusic(double seconds) async {
    // 현재 사용자가 Slider 를 이용해서 옮긴 값은 double로 저장이 됨.
    // 우리의 음악 재생 player는 재생시간을 Duration 타입으로 이용하고 있기 때문에
    // 우리의 double 값을 Duration 으로 변경해주는 코드를 작성해야 함.
    final newPosition = Duration(seconds: seconds.toInt());

    // seek = 이후에 입력한 구간(재생시간)으로 옮기겠다.
    await player.seek(newPosition);
  }

  @override
  void dispose() {
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MP3 플레이어")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              value: value,
              min: 0,
              max: totalPlayTime,
              // label: "슬라이더1",
              // divisions 를 이용하게 되면, 슬라이더를 구간별로 나눠서
              // 사용자가 선택할 수 있게 지정할 수 있다!
              // divisions: 10,
              onChanged: (double newValue) {
                moveMusic(newValue);
              },
            ),
            ElevatedButton(
              onPressed: () {
                playMusic();
              },
              child: Text("음악 재생하기"),
            ),
            ElevatedButton(
              onPressed: () {
                pauseMusic();
              },
              child: Text("음악 일시정지"),
            ),
            ElevatedButton(
              onPressed: () {
                stopMusic();
              },
              child: Text("음악 중단하기"),
            ),
          ],
        ),
      ),
    );
  }
}
