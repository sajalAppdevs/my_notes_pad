import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_notes_pad/accessories.dart';

import 'home.dart';

class NotePad extends StatefulWidget {
  String mLine;
  int index;
  NotePad({Key? key, required this.mLine, required this.index})
      : super(key: key);

  @override
  _NotePadState createState() => _NotePadState();
}

class _NotePadState extends State<NotePad> {
  String _text = "";
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _controller = TextEditingController(text: widget.mLine);
    _text = widget.mLine;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFafe5cd),
        actions: [
          MaterialButton(
              onPressed: () {
                setState(() {
                  saveData(widget.index, _text);
                });
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (route) => false);
              },
              child: Text("Save and Exit")),
          SizedBox(
            width: 15,
          ),
          MaterialButton(
              onPressed: () {
                setState(() {
                  saveData(widget.index, _text);
                });
              },
              child: Text("Save")),
        ],
      ),
      body: TextField(
        onChanged: (String val) {
          setState(() {
            _text = val;
          });
        },
        controller: _controller,
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}
