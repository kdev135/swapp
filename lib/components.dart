import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

var appBar = AppBar(
  leading: BackButton(color: Colors.black),
  backgroundColor: Colors.transparent,
  elevation: 0,
);

var swappLogo = SvgPicture.asset("images/swappLogo.svg");

