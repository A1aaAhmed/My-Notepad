import 'package:flutter/material.dart';
class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
   Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        leading:const Icon(
          Icons.menu_book_rounded,
        ),
        title: const Text(
          'My Notepad',
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
            onPressed: (){
              print("Serching");},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: (){
              print("notification");},
            icon:  const Icon(
              Icons.notifications_active,
            ),
          )


        ],

      ),


    );
  }
}
