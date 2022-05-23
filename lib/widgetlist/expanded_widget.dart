import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedWidgetTest extends StatefulWidget {
  const ExpandedWidgetTest({Key? key}) : super(key: key);

  @override
  State<ExpandedWidgetTest> createState() => _ExpandedWidgetTestState();
}

class _ExpandedWidgetTestState extends State<ExpandedWidgetTest> {
  List<int> flexList = [1, 1, 1, 1, 1, 1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text("ROW"),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.indigo,
                width: 0.5,
              ),
            ),
            height: 300,
            child: Row(
              children: [
                Expanded(
                  flex: flexList[0],
                  child: boxWidget(0),
                ),
                Expanded(
                  flex: flexList[1],
                  child: boxWidget(1),
                ),
              ],
            ),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          ),
          Center(
            child: TextButton(
              // color: Colors.amber,
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(
              //     Colors.red,
              //   ),
              // ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'lsdjsdf',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  flexList = [1, 1, 1, 1, 1, 1];
                });
                print('asldjflasjdf');
              },
            ),
          )
        ],
      ),
    );
  }

  // 박스 위젯 설정
  boxWidget(int flexIndex) {
    return GestureDetector(
      child: Container(
        // height: 30,
        // width: 50,
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          border: Border.all(
            color: Colors.blueAccent,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Text(
            "flex: ${flexList[flexIndex]}",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: () {
        print(flexIndex);
        setState(() {
          flexList[flexIndex] = flexList[flexIndex] + 1;
        });
      },
    );
  }
}
