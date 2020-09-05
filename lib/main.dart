import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
   //   theme: _buildShrineTheme(),
      home: MyHomePage(title: 'Flutter Demo Text Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
          TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            initialValue: 'Input text',
            maxLength: 20,
            decoration: InputDecoration(
              icon: Icon(Icons.favorite),
              labelText: 'Label text',
              helperText: 'Helper text',
              suffixIcon: Icon(
                Icons.check_circle,
              ),
            ),
          ),
          TextFormField(
            cursorColor: Theme.of(context).cursorColor,
            initialValue: 'Input text',
            maxLength: 20,
            decoration: InputDecoration(
              icon: Icon(Icons.favorite),
              labelText: 'Label text',
              helperText: 'Helper text',
              errorText: 'Error message',
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
          TextFormField(
            initialValue: 'Input text',
            decoration: InputDecoration(
              labelText: 'Label text',
              errorText: 'Error message',
              border: OutlineInputBorder(),
              suffixIcon: Icon(
                Icons.error,
              ),
            ),
          ),
              SizedBox(height: 40,),
              TextFormField(

                decoration: InputDecoration(
                  labelText: 'Label text',
hintText: "Enter Your Message",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  suffixIcon: IconButton(
                icon:Icon(Icons.error)
                  ),
                ),
              ),
        ]),
      ),
    );
  }
}
