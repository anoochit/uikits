import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen06 extends StatelessWidget {
  const SignUpScreen06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pin Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PinInput(
          maxPin: 6,
          onSubmit: (value) {
            // do something
          },
        ),
      ),
    );
  }
}

class PinInput extends StatefulWidget {
  const PinInput({super.key, required this.onSubmit, this.maxPin});

  final ValueChanged<String>? onSubmit;
  final int? maxPin;

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  final _textController = TextEditingController();
  String _textValue = "";

  final _keypads = [
    "1", // 0
    "2", // 1
    "3", // 2
    "4", // 3
    "5", // 4
    "6", // 5
    "7", // 6
    "8", // 7
    "9", // 8
    "ลบ", // 8
    "ยืนยัน", // 10
    "0" // 11
  ];

  @override
  Widget build(BuildContext context) {
    _textController.text = _textValue;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(
          children: [
            // display input box
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textController,
                readOnly: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),

            const SizedBox(
              height: 16.0,
            ),

            // visual keypad
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 18.0,
              crossAxisSpacing: 18.0,
              shrinkWrap: true,
              children: _keypads.asMap().entries.map((e) {
                return MaterialButton(
                  elevation: 0.0,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shape: const CircleBorder(),
                  onPressed: () {
                    // show only number
                    if (e.value.isNum) {
                      setState(() {
                        if (widget.maxPin == null) {
                          _textValue = _textValue + e.value;
                        } else {
                          if (_textValue.length < widget.maxPin!) {
                            _textValue = _textValue + e.value;
                          }
                        }
                      });
                    } else {
                      // delete value
                      if ((e.key == 9) && (_textValue.isNotEmpty)) {
                        setState(() {
                          _textValue = _textValue.substring(
                            0,
                            _textValue.length - 1,
                          );
                        });
                      }

                      if (e.key == 10) {
                        // submit value
                        widget.onSubmit!.call(_textValue);
                      }
                    }
                  },
                  child: Text(
                    e.value,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
