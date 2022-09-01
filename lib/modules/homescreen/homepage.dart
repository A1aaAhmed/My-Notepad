// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../../models/memory/memory.dart';
import '../appbar/appbar.dart';


//emulator -list-avds
//emulator @NameOfAvd
// alt + enter mix the icon in icon button


class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Memory> memeries =[
    Memory(date:'10/11/2020',note: 'feeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great today'),
    Memory(date:'10/11/2020',note: 'feeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great today'),
    Memory(date:'10/11/2020',note: 'feeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great today'),
    Memory(date:'10/11/2020',note: 'feeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great todayfeeling great today'),


  ];

@override
  Widget build(BuildContext context) {
  //matrial app for the homepage
  //sacfflod for the screens
  return Scaffold(
    appBar:Bar(),
    // ignore: avoid_unnecessary_containers
    body:SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue[200],
                height:40,
                alignment: Alignment.center,
                child: Text(
                  'Memories',
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
              child:ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount:memeries.length,
                itemBuilder: (context,index){
                  return happendTOdayItem(memeries[index]);

                },
                separatorBuilder: (context,index)=> SizedBox(
                width: 10.0,
                ),





              )),

            ],
          ),// slid of happened today


      Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue[200],
            height:40,
            alignment: Alignment.center,
            child: Text(
              'How Was Your Day ?',
              style: TextStyle(
                color: Colors.white,

                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
             itemCount:5 ,
              itemBuilder: (context,index){
               return NewNoteItem();

              },
            separatorBuilder: (context,index)=> SizedBox(
              height: 20.0,
            ),

          ),
        ],
      ),
          //the rest of the events


        ],
      ),
    ),
  );

  }

  Widget NewNoteItem() => SizedBox(
    height: 200,
    width: 200,

    child:Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(

          image:AssetImage(
            'assets/images/happy.jpg'
          ),
          fit: BoxFit.contain,



        ),
        Container(

          width:200,
           height: 200,
          alignment: AlignmentDirectional.centerEnd,

          child: Text(
            'Happy',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 20,


              color: Colors.amberAccent

            ) ,
          ),
        ),
      ],

    ),

  );
//the rest of the events
  Widget happendTOdayItem(Memory mem) => Container(

width:200,
height: 200,
color: Colors.grey[100],
child: Stack(

    alignment: Alignment.center,

    // ignore: prefer_const_literals_to_create_immutables

    children: [


    Container(
      alignment: Alignment.center,
      child: Column(
        children: [

          Text(
          mem.date,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),

          ),
          Container(
            width: 200,
            padding: EdgeInsetsDirectional.only(
              start: 10,
            ),
            child: Text(
              mem.note,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
              ),

            ),
          ),
        ],
      ),
    ),

    ],

    ),

);
}