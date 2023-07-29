// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_co/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ColFloatingButton extends StatefulWidget {
  final List<Widget> floatButtons;
  final int delayMilli;
  double? space;
  double? heightGround;

  ColFloatingButton({
    Key? key,
    required this.floatButtons,
    required this.delayMilli,
    this.space,
    this.heightGround,
  }) : super(key: key);

  @override
  State<ColFloatingButton> createState() => _ColFloatingButtonState();
}

class _ColFloatingButtonState extends State<ColFloatingButton> {
  bool showFloat = false;
  bool removeFloats = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        removeFloats == false
            ? Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(
                    widget.floatButtons.length,
                    (i) => Animate(
                      effects: showFloat
                          ? [
                              FadeEffect(
                                delay: Duration(
                                  milliseconds:
                                      ((widget.floatButtons.length + 1) -
                                              (i + 1)) *
                                          widget.delayMilli,
                                ),
                              ),
                              const MoveEffect(
                                begin: Offset(0, 0),
                                end: Offset(0, -3),
                              )
                            ]
                          : [
                              FadeEffect(
                                  delay: Duration(
                                      milliseconds: ((i)) * widget.delayMilli),
                                  begin: 1,
                                  end: 0),
                              const MoveEffect(
                                begin: Offset(0, -3),
                                end: Offset(0, 3),
                              )
                            ],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: EdgeInsets.all(widget.space ?? 4),
                              child: widget.floatButtons[i]),
                        ],
                      ),
                      onComplete: (controller) {
                        if (i == widget.floatButtons.length - 1 &&
                            showFloat == false) {
                          setState(() {
                            removeFloats = true;
                          });
                        }
                      },
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: MyColors.lightPurple,
                  onPressed: () {
                    setState(() {
                      if (showFloat) {
                        showFloat = false;
                      } else {
                        showFloat = true;
                        removeFloats = false;
                      }
                    });
                  },
                  child: Animate(
                    effects: showFloat
                        ? [const RotateEffect(begin: 0, end: 0.12)]
                        : [
                            const RotateEffect(
                                begin: 0.12,
                                end: 0,
                                duration: Duration(milliseconds: 500))
                          ],
                    child: removeFloats == false
                        ? const Icon(
                            Icons.add,
                          )
                        : const Icon(Icons.add),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: widget.heightGround ?? 0,
        )
      ],
    );
  }
}
