import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

<<<<<<< HEAD
void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Button 2'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
=======
void main(){
  runapp(0);
>>>>>>> button/master
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget>[
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
              final snackBar = SnackBar(                                        //1的字
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                backgroundColor: Colors.blue.shade900,
                content: const Text('You pressed RaisedButton'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('RaisedButton',style: TextStyle(color: Colors.red,fontSize: 20),),
          ),
          const SizedBox(height: 20,),

          TextButton(
              style: flatButtonStyle,                                              //2的字
              child: Text("FlatButton",style: TextStyle(color: Colors.white,fontSize: 20),),
              onPressed: (){
                final snackBar = SnackBar(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  backgroundColor: Colors.blue.shade900,
                  content: const Text('You pressed FlatButton'),
                  action: SnackBarAction(
                    label: 'Cancel',
                    onPressed: () {
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}),
          const SizedBox(height: 20,),

          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.pink.shade200, width: 1.8,
                ),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),

              child: Text("OutlineButton",style: TextStyle(color: Colors.black,fontSize: 20),),

              onPressed: (){
                final snackBar = SnackBar(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  backgroundColor: Colors.blue.shade900,
                  content: const Text('You pressed OutlineButton'),             //3的字
                  action: SnackBarAction(
                    label: 'Cancel',
                    onPressed: () {
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);}),

          const SizedBox(height: 20,),

          IconButton(
            iconSize: 50,
            onPressed: (){final snackBar = SnackBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
              backgroundColor: Colors.blue.shade900,
              content: const Text('You pressed IconButton'),               //4的字
              action: SnackBarAction(
                label: 'Cancel',
                onPressed: () {
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);},
            icon:const Icon(Icons.phone_android,color: Colors.blue,),
          ),

          const SizedBox(height: 20,),

          FloatingActionButton(
            onPressed: () {
              final snackBar = SnackBar(                                     //5的字
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                backgroundColor: Colors.blue.shade900,
                content: const Text('You pressed FloatingActionButton'),
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Icon(Icons.phone_android),
          ),

          const SizedBox(height: 20,),

          ElevatedButton.icon(
            style: raisedButtonStyleicon,
            icon: Icon(Icons.phone_android,color: Colors.red,),
            label: Text("RaisedButton.icon",style: TextStyle(color: Colors.red,fontSize: 20),),

            onPressed: (){
              final snackBar = SnackBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                backgroundColor: Colors.blue.shade900,
                content: const Text('You pressed RaisedButton.icon'),        //6的字
                action: SnackBarAction(
                  label: 'Cancel',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);},
          )
        ],
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(        //1
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  backgroundColor: Colors.yellow,
  minimumSize: Size(88, 45),
  elevation: 10,
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),

  ),
);

final ButtonStyle raisedButtonStyleicon = ElevatedButton.styleFrom(      //6
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  backgroundColor: Colors.grey.shade300,
  minimumSize: Size(88, 45),
  elevation: 10,
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),

  ),
);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(                   //2
  backgroundColor: Colors.blue,
  primary: Colors.black87,
  minimumSize: Size(88, 45),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);
