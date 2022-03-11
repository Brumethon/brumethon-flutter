import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils.dart';

class MaterialLoaderButton extends StatefulWidget {
  final GestureTapCallback onTap;
  final String title;
  final double? heightBtn;
  final TextStyle? styleText;
  final bool? needLoading;
  final Color? colorBtn;

  const MaterialLoaderButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.heightBtn,
    this.styleText,
    this.needLoading = false,
    this.colorBtn
  }): super(key: key);

  @override
  _MaterialLoaderButtonState createState() => _MaterialLoaderButtonState();
}

class _MaterialLoaderButtonState extends State<MaterialLoaderButton> {
  Color colorBtn(BuildContext context) => Theme.of(context).highlightColor;

  bool _isLoading = false;

  void _onLoading() {
    setState(() {
      _isLoading = true;
      new Future.delayed(new Duration(milliseconds: 300), widget.onTap).then(
              (value) => setState(() { _isLoading = false; })
      );
    });
  }

  @override
  Widget build(BuildContext context) => Material(
    color: widget.colorBtn == null ? colorBtn(context) : widget.colorBtn,
    borderRadius: BorderRadius.circular(Utils.radiusBtn),
    child: InkWell(
      onTap: () async {
        widget.needLoading == true ? _onLoading() : widget.onTap();
      },
      child: Container(
        height: Utils.heightBtn,
        child: Align(
          alignment: Alignment.center,
          child: _isLoading
              ? SizedBox(
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).cardColor),
            ),
          )
              : Text(widget.title,
            style: widget.styleText != null ? widget.styleText : Utils.btnTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
