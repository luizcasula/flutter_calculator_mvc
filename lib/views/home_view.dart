import 'package:flutter/material.dart';
import 'package:flutter_calculator_mvc/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController _controller = HomeController();

  _buildButton(Function onPressed,
      {double height, double width, String hintText, IconData icon}) {
    return Container(
      height: height != null ? height : 89,
      width: width,
      child: RaisedButton(
        //shape: ,
        child: Center(
          child: hintText != null
              ? Text(
                  hintText,
                  style: TextStyle(fontSize: 20),
                )
              : icon != null ? Icon(icon) : Center(),
        ),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30),
              enabled: false,
              textAlign: TextAlign.center,
              controller: _controller.textController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(330, 16, 0, 16),
              ),
            ),
            Row(
              children: <Widget>[
                _buildButton(() => _controller.textController.text = "",
                    hintText: 'C'),
                _buildButton(() => _controller.textController.text = "",
                    hintText: ''),
                _buildButton(() => _controller.textController.text = "9",
                    hintText: '/'),
                _buildButton(() => _controller.textController.text = "",
                    icon: Icons.backspace),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton(() => _controller.textController.text = "7",
                    hintText: '7'),
                _buildButton(() => _controller.textController.text = "8",
                    hintText: '8'),
                _buildButton(() => _controller.textController.text = "9",
                    hintText: '9'),
                _buildButton(() => _controller.textController.text = "",
                    hintText: "X"),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton(() => _controller.textController.text = "4",
                    hintText: '4'),
                _buildButton(() => _controller.textController.text = "5",
                    hintText: '5'),
                _buildButton(() => _controller.textController.text = "6",
                    hintText: '6'),
                _buildButton(() => _controller.textController.text = "",
                    hintText: "-"),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton(() => _controller.textController.text = "1",
                    hintText: '1'),
                _buildButton(() => _controller.textController.text = "2",
                    hintText: '2'),
                _buildButton(() => _controller.textController.text = "3",
                    hintText: '3'),
                _buildButton(() => _controller.textController.text = "",
                    hintText: "+"),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton(() => _controller.textController.text = "0",
                    hintText: '0', width: 176),
                _buildButton(() => _controller.textController.text = ".",
                    hintText: '.'),
                _buildButton(() => _controller.textController.text = "",
                    hintText: "="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
