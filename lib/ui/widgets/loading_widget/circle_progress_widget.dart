import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loadWidget({double sizeLoading = 15}) => Center(
      child: SizedBox.fromSize(
        size: Size.square(sizeLoading),
        child: CupertinoActivityIndicator(
          radius: sizeLoading,
        ),
      ),
    );
