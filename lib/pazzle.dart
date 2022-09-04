import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class pazzle extends StatefulWidget {
  const pazzle({Key? key}) : super(key: key);

  @override
  State<pazzle> createState() => _pazzleState();
}

class _pazzleState extends State<pazzle> {
  List<String> a = [];

  int i=0;
  int cnt=0;
  String msg="";
  String ply="";
  int checkwin=0;


  @override

  void number() {
    List<int> l = [];
    for (i = 0; i < 9;) {
      int min = 0, max = 8;
      int no = min + Random().nextInt(max - min + 1);
      if (!l.contains(no)) {
        l.add(no);
        i++;
      }
    }

    for ( i = 0; i < 9; i++) {
      if (l[i] == 0) {
        a.add("");
      } else {
        a.add("${l[i]}");
      }
    }
  }
  win()
  {
    if (a[0]=="1" &&
        a[1]=="2" &&
        a[2]=="3" &&
        a[3]=="4" &&
        a[4]=="5" &&
        a[5]=="6" &&
        a[6]=="7" &&
        a[7]=="8" &&
        a[8]=="")
      {
        msg="$ply is winner";
        checkwin=1;
      }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("pazzle"),
        ),
      ),
      body: SingleChildScrollView(

        child: Container(
          height: 660,
          alignment: Alignment.center,
          color:Color(0xFF80CBC4),

          padding: EdgeInsets.only(left: 60, right: 60, top: 50, bottom: 90),
          child: Column(
            children: [

            Container(
            height: 50,
            width: 500,
            color: Color.fromARGB(255, 66, 165, 245),
            alignment: Alignment.center,

            margin: EdgeInsets.only(bottom: 20),
            child: Text("winner:-$cnt $msg", style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 165, 0, 1),fontWeight:FontWeight.bold),),
            ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor:Colors.red,
                        highlightColor:Colors.green,
                        hoverColor: Colors.red,

                        onTap: () {
                          if(a[1]=="" && checkwin==0)
                          {
                            a[1]=a[0];
                            a[0]="";
                            cnt++;
                            win();
                          }
                          else if(a[3]=="" && checkwin==0)
                          {
                            a[3]=a[0];
                            a[0]="";
                            cnt++;
                            win();
                          }
                          setState(() {});
                        },
                        child: abc(0),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),

                        onTap: () {

                          if(a[0]=="" && checkwin==0)
                          {
                            a[0]=a[1];
                            a[1]="";
                            cnt++;
                            win();
                          }
                          else if(a[2]=="" && checkwin==0)
                          {
                            a[2]=a[1];
                            a[1]="";
                            cnt++;
                            win();
                          }
                          else if(a[4]=="" && checkwin==0)
                            {
                              a[4]=a[1];
                              a[1]="";
                              cnt++;
                              win();
                            }
                          setState(() {});
                        },
                        child: abc(1),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[1]=="" && checkwin==0)
                          {
                            a[1]=a[2];
                            a[2]="";
                            cnt++;
                            win();
                          }
                          else if(a[5]=="" && checkwin==0)
                          {
                            a[5]=a[2];
                            a[2]="";
                            cnt++;
                            win();
                          }

                          setState(() {});
                        },
                        child: abc(2),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[0]=="" && checkwin==0)
                          {
                            a[0]=a[3];
                            a[3]="";
                            cnt++;
                            win();
                          }
                          else if(a[4]=="" && checkwin==0)
                          {
                            a[4]=a[3];
                            a[3]="";
                            cnt++;
                            win();
                          }
                          else if(a[6]=="" && checkwin==0)
                          {
                            a[6]=a[3];
                            a[3]="";
                            cnt++;
                            win();
                          }
                          setState(() {});
                        },
                        child: abc(3),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[1]=="" && checkwin==0)
                          {
                            a[1]=a[4];
                            a[4]="";
                            cnt++;
                            win();
                          }
                          else if(a[5]=="" && checkwin==0)
                          {
                            a[5]=a[4];
                            a[4]="";
                            cnt++;
                            win();
                          }
                          else if(a[7]=="" && checkwin==0)
                          {
                            a[7]=a[4];
                            a[4]="";
                            cnt++;
                            win();
                          }
                          else if(a[3]=="" && checkwin==0)
                            {
                              a[3]=a[4];
                              a[4]="";
                              cnt++;
                              win();
                            }
                          setState(() {});
                        },
                        child: abc(4),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[2]=="" && checkwin==0)
                          {
                            a[2]=a[5];
                            a[5]="";
                            cnt++;
                            win();
                          }
                          else if(a[4]=="" && checkwin==0)
                            {
                              a[4]=a[5];
                              a[5]="";
                              cnt++;
                              win();
                            }
                          else if(a[8]=="" && checkwin==0)
                            {
                              a[8]=a[5];
                              a[5]="";
                              cnt++;
                              win();
                            }
                          setState(() {});
                        },
                        child: abc(5),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[3]=="" && checkwin==0)
                          {
                            a[3]=a[6];
                            a[6]="";
                            cnt++;
                            win();
                          }
                          else if(a[7]=="" && checkwin==0)
                          {
                            a[7]=a[6];
                            a[6]="";
                            cnt++;
                            win();
                          }

                          setState(() {});
                        },
                        child: abc(6),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[6]=="" && checkwin==0)
                          {
                            a[6]=a[7];
                            a[7]="";
                            cnt++;
                            win();
                          }
                          else if(a[4]=="" && checkwin==0)
                          {
                            a[4]=a[7];
                            a[7]="";
                            cnt++;
                            win();
                          }
                          else if(a[8]=="" && checkwin==0)
                          {
                            a[8]=a[7];
                            a[7]="";
                            cnt++;
                            win();
                          }
                          setState(() {});
                        },
                        child: abc(7),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        splashColor: Color(0xFFF48FB1),
                        highlightColor:Color(0xFFCE93D8),
                        onTap: () {
                          if(a[5]=="" && checkwin==0)
                          {
                            a[5]=a[8];
                            a[8]="";
                            cnt++;
                            win();
                          }
                          else if(a[7]=="" && checkwin==0)
                          {
                            a[7]=a[8];
                            a[8]="";
                            cnt++;
                            win();
                          }

                          setState(() {});
                        },
                        child:abc(8),


                      ),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 40,),

          Center(
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: 40),

                primary: Colors.black,
                onPrimary: Colors.indigoAccent,

              ),
              onPressed: () {
                cnt=0;
                a=[];
                msg="";
                number();

                setState(() {

                });
              },
              child: Text("Restart",
                style: TextStyle(fontSize: 20, color: Colors.red),),
            ),
          ),


            ],
          ),


        ),
      ),
    );
  }
Container abc(int j)
{
  return Container(
    alignment: Alignment.center,

    decoration: BoxDecoration(
      color:(a[j]=="")? Colors.transparent:Color(0xFFC5E1A5),
      // image: DecorationImage(
      //
      //   fit: BoxFit.fill,
      //   opacity: 0.5,
      //   image:new NetworkImage("https://picsum.photos/250?image=9"),
      //
      // ),
      border: Border.all(color: Color(0xFFFFFFFF), width: 2),
    ),
    child: Text(a[j],style: TextStyle(fontSize: 30,fontFamily: "Font2",
      fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,

    ),
    ),
  );
}

}
