import 'package:flutter/material.dart';
import 'package:malzamati/pages/widgets/header_widget.dart';

import '../model/class_list.dart';
class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          Container(

            height: 150, child: HeaderWidget(150,true,Icons.group),),



          Expanded(child: Stack(
            children: [
              Container(
                margin:EdgeInsets.only(
                  top: 50
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )
                ),
              ),
              ListView.builder(

                itemCount: classList.length,

                  itemBuilder: (context,index)=>ClassCard(
                    itemIndex: index,
                    classl: classList[index],
                  )
              )

            ],
          ))
        ],
      ),
    );
  }
}
class ClassCard extends StatelessWidget {
  const ClassCard({Key key, this.itemIndex, this.classl}) : super(key: key);
final int itemIndex;
final ClassList classl;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return      Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.2,
        vertical: 20.0/2,

      ),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.indigo,
                boxShadow: [BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 27,
                    color: Colors.grey
                )]
            ),
            child: Container(
              margin: EdgeInsets.only(
                  right: 15
              ),
              decoration: BoxDecoration(

                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(22)
              ),
            ),
          ),
          Positioned(
            top: 0,
              left: 0,
              child: Container(

            height: 150,
            width: 170,
            child: Image.asset(classl.img
            ,
              fit: BoxFit.fitHeight,
            ),
          )),
          Positioned(
          bottom: 0,
          right: 0
          ,child: SizedBox(
            height: 136,
            width: size.width-170,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
left: 40,
                  right: 15,
                  top: 10),
                  child: Text("Name : "+classl.title+" "
                      "teacher :"+classl.teacherName,style:TextStyle(color: Colors.white),),

                ),
                Container(


                  margin: EdgeInsets.only(
                    top: 20
                        ,
                    left: 125
                  ),
height: 40,
                  width: 80,

                  decoration: BoxDecoration(

                    color: Colors.indigo,
borderRadius: BorderRadius.only(
  topLeft: Radius.circular(15),

  bottomRight: Radius.circular(15),
)
                  ),
                  child: RaisedButton(

                    child: Text("View")
                    ,

                    onPressed: (){},
                    color: Colors.transparent,
                    elevation: 0,
                    focusElevation: 0,
                    highlightElevation: 0,
                    hoverElevation: 0,
                    disabledElevation: 0
                    ,

                  ),

                ),
              ],
            ),
          )),
        ],
      ),

    );
  }
}
