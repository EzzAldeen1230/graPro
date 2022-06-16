// @dart=2.11

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:malzamati/pages/student_pages/list.dart';
import 'package:malzamati/pages/widgets/custom_drawer.dart';

class MyHomePageS extends StatefulWidget {
  @override
  _MyHomePageSState createState() => _MyHomePageSState();
}

class _MyHomePageSState extends State<MyHomePageS> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FoldableSidebarBuilder(
        drawerBackgroundColor: Theme.of(context).primaryColor,
        drawer: CustomDrawer(closeDrawer: (){
          setState(() {
            drawerStatus = FSBStatus.FSB_CLOSE;
          });
        },),
        screenContents: FirstScreen(),
        status: drawerStatus,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            setState(() {
              drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
            });
          }),


    );

  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [




            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),

                ),

                gradient: new LinearGradient(
                  colors: [
                    Theme
                        .of(context)
                        .accentColor,
                    Theme
                        .of(context)
                        .primaryColor,
                    
                    

                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],

                ),

              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 88,
                      left: 0,


                      child: Container(
                        height: 90,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white
                            ,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)
                            )
                        ),

                      )),
                  Positioned(
                    top: 110,
                    left: 20,

                    child: Text(
                      "Wellcome", style: TextStyle(fontSize: 40, color: Theme
                        .of(context)
                        .accentColor,),),

                  )
                ],
              ),
            ),

            Expanded(child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 20),
                  height: 120,

                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme
                          .of(context)
                          .accentColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80.0),
                        bottomRight: Radius.circular(80.0),
                        topRight: Radius.circular(80.0),

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-10, 10),
                          blurRadius: 20,
                          spreadRadius: 4,
                        )
                      ],

                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                                color: Colors.transparent,
                                margin: EdgeInsets.only(
                                    top: 20,
                                    left: 20,
                                    bottom: 10,
                                    right: 10

                                ),
                                elevation: 7.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child:
                                Icon(Icons.book,color: Colors.white,size: 40,)
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10
                                  , left: 20
                              ),
                              child: Text("Your a Book",
                                style: TextStyle(color: Colors.white,fontSize: 20),),

                            )

                          ],
                        ),

                        Container(
                          width: 200,
                          height: 20,


                          child: RaisedButton(

                            color: Theme
                                .of(context)
                                .primaryColor
                            ,
                            child: Text("View The Classes", style: TextStyle(
                                color: Colors.white,fontSize: 12),),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Classes()));
                            },
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              ),

                            ),


                          ),
                        )
                      ],
                    ),
                  )
                  ,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 20),
                  height: 120,
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme
                          .of(context)
                          .accentColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80.0),
                        bottomRight: Radius.circular(80.0),
                        topRight: Radius.circular(80.0),

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-10, 10),
                          blurRadius: 20,
                          spreadRadius: 4,
                        )
                      ],

                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                                color: Colors.transparent,
                                margin: EdgeInsets.only(
                                    top: 20,
                                    left: 20,
                                    bottom: 10,
                                    right: 10

                                ),
                                elevation: 7.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child:
                                Icon(Icons.task,color: Colors.white,size: 40,)
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10
                                  , left: 20
                              ),
                              child: Text("Your a Task",
                                style: TextStyle(color: Colors.white,fontSize: 20),),

                            )

                          ],
                        ),

                        Container(
                          width: 200,
                          height: 20,


                          child: RaisedButton(

                            color: Theme
                                .of(context)
                                .primaryColor
                            ,
                            child: Text("View The Classes", style: TextStyle(
                                color: Colors.white,fontSize: 12),),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Classes()));
                            },
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              ),

                            ),


                          ),
                        )
                      ],
                    ),
                  )
                  ,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 20),
                  height: 120,
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme
                          .of(context)
                          .accentColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(80.0),
                        bottomRight: Radius.circular(80.0),
                        topRight: Radius.circular(80.0),

                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-10, 10),
                          blurRadius: 20,
                          spreadRadius: 4,
                        )
                      ],

                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                                color: Colors.transparent,
                                margin: EdgeInsets.only(
                                    top: 20,
                                    left: 20,
                                    bottom: 10,
                                    right: 10

                                ),
                                elevation: 7.0,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child:
                                Icon(Icons.notifications,color: Colors.white,size: 40,)
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10
                                  , left: 20
                              ),
                              child: Text("Your a Notification",
                                style: TextStyle(color: Colors.white,fontSize: 20),),

                            )

                          ],
                        ),

                        Container(
                          width: 200,
                          height: 20,


                          child: RaisedButton(

                            color: Theme
                                .of(context)
                                .primaryColor
                            ,
                            child: Text("View The Classes", style: TextStyle(
                                color: Colors.white,fontSize: 12),),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Classes()));
                            },
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)
                              ),

                            ),


                          ),
                        )
                      ],
                    ),
                  )
                  ,
                ),





              ],
            ),
            ),



          ],
        ));
  }}