import 'package:flutter/material.dart';

class AvatarPages extends StatelessWidget {
  const AvatarPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatar'),
            actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child:const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
        ),
      
        body: const Center(
          child: FadeInImage(
            placeholder: AssetImage('image/jar-loading.gif'),
           image: NetworkImage('https://i.pinimg.com/originals/ce/0d/9e/ce0d9ead299eb0ee550b2e5b9306b882.png'),
           fadeInDuration: Duration(milliseconds: 200),
           ),
        ),
        );
  }
}
