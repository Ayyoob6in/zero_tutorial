// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:zego/constants.dart';

// Package imports:
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

// Project imports:

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CallPageState();
}

class CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map<String, String>;
    final callID = arguments[PageParam.call_id] ?? '';

    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
          appID: 1047661351 /*input your AppID*/,
          appSign:
              'c83b3a438b44b4e26f2d736dddc8745b79a5e43486b1ec3d112af78add45692c' /*input your AppSign*/,
          userID: currentUser.id,
          userName: currentUser.name,
          callID: callID,
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()

            /// support minimizing
            ..topMenuBar.isVisible = true
            ..topMenuBar.buttons = [
              ZegoCallMenuBarButtonName.minimizingButton,
              ZegoCallMenuBarButtonName.showMemberListButton,
              ZegoCallMenuBarButtonName.soundEffectButton,
            ]
          // ..avatarBuilder = customAvatarBuilder(),
          ),
    );
  }
}
