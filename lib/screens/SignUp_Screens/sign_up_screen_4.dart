import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tambola_frontend/screens/SignUp_Screens/widgets/sign_up_card_4.dart';
import 'package:video_player/video_player.dart';

class NewSignUpScreen4 extends StatefulWidget {
  const NewSignUpScreen4({Key? key}) : super(key: key);

  @override
  State<NewSignUpScreen4> createState() => _NewSignUpScreen2State();
}

class _NewSignUpScreen2State extends State<NewSignUpScreen4> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset("assets/videos/features_video.mov")
          ..initialize().then((_) {
            _controller.play();
            _controller.setLooping(false);
            // Ensure the first frame is shown after the video is initialized
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 512.h, bottom: 30.h, left: 10.w, right: 10.w),
              child: SignUpCard4(),
            ),
          ],
        ),
      ),
      designSize: const Size(428, 926),
    );
  }
}
