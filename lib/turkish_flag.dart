import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';
import "dart:math" show pi;

class TurkishFlag extends StatelessWidget {
  final double flagSize;

  TurkishFlag(this.flagSize);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: flagSize * 1 / 30,
              height: flagSize - 1,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: .75,
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: flagSize / 4,
                    height: flagSize,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: <Widget>[
                      Container(
                        width: flagSize / 2,
                        height: flagSize / 2,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: 0.4 * flagSize,
                          height: 0.4 * flagSize,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        left: flagSize / 8,
                      ),
                      Positioned(
                        child: Transform.rotate(
                          child: ShapeOfView(
                            shape: StarShape(
                              noOfPoints: 5,
                            ),
                            width: flagSize / 4,
                            height: flagSize / 4,
                            child: Container(
                              color: Colors.white,
                              child: Text(''),
                            ),
                          ),
                          angle: pi / 3.5,
                        ),
                        left: flagSize / 8 + flagSize / 3,
                      ),
                    ],
                    overflow: Overflow.visible,
                  ),
                ],
              ),
              color: Colors.red,
              height: flagSize,
              width: flagSize * 1.5,
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
