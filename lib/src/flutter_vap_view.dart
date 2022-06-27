/*
 * @Created on 2022/6/27 3:06 下午 
 * @Author Lay523
 * @Description TODO
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterVapView extends StatelessWidget {
  const FlutterVapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android){
      return const SizedBox.shrink();
    }else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'flutter_vap/flutter_vap_view',
        onPlatformViewCreated: (id){
          print('onPlatformViewCreated: $id');
        },
        creationParams: const {
          'templateId': '',
        },
        creationParamsCodec: const StandardMessageCodec(),
      );
    }
    return const SizedBox.shrink();
  }
}
