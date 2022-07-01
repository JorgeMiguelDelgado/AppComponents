import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: const Text('JD'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://scontent.fvvi1-1.fna.fbcdn.net/v/t1.6435-9/61281884_2252549984835451_2668846322152374272_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=76opGbb2GroAX-NmlD4&_nc_ht=scontent.fvvi1-1.fna&oh=00_AT-D_rfMv0RS2XwXb-N8f_mFRDzq-rl0uK3uXGUyxUkF2g&oe=62E4F5C1'),
        ),
      ),
    );
  }
}
