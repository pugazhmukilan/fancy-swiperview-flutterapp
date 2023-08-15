import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import "planetpage.dart";


class Buy extends StatefulWidget{

  @override
  _BuyState createState()=>_BuyState();
}
class _BuyState extends State<Buy>{
    
    @override
    Widget build(BuildContext context){
  
      return Scaffold(
        backgroundColor: Color.fromRGBO(186, 142, 248, 1),
        
        body:CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            
            // ignore: prefer_const_constructors
            SliverAppBar(
              
              backgroundColor: Color.fromRGBO(186, 142, 248, 1),
              elevation:50,
              scrolledUnderElevation: 50.0,
              pinned: false,
              centerTitle: true,
              expandedHeight: 400,
              stretch: true,
              
              bottom: const PreferredSize(
              preferredSize: Size.fromHeight(400.0),
              
              child: SizedBox(
                
                
                
              ),
              ),
              
              
              
              
              
              flexibleSpace:   FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground
                ],
              //ColoredBox(color: Color.fromARGB(255, 112, 3, 213)),
              background: Stack(
                
                children: [
                 /* Collage(topvalue:-10,leftvalue: 200,imagevalue:1),
                  
                  Collage(topvalue:150,leftvalue: 150,imagevalue:3),
                  Collage(topvalue:-100,leftvalue: 50,imagevalue:4),
                  Collage(topvalue:-80,leftvalue: -90,imagevalue:5),
                  Collage(topvalue:350,leftvalue: 10,imagevalue:6),
                  Collage(topvalue:80,leftvalue: -40,imagevalue:0),
                  Collage(topvalue:300,leftvalue: 240,imagevalue:7),
                  Collage(topvalue:300,leftvalue: -100,imagevalue:2),*/
                  Center(
                    child: Container(
                      height:600,
                      width:370,
                    
                      decoration:BoxDecoration(color: Color.fromRGBO(131, 65, 224, 1),
                      borderRadius: BorderRadius.circular(20.0),
                    
                    gradient: LinearGradient(
                      begin:Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0009, 0.30 ],
                      colors: [
                         Color.fromARGB(255, 243, 243, 243), // Red with 50% opacity
                        Color.fromRGBO(168, 107, 255, 1),

                      ]
                    ),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        blurRadius: 10.0, // Blur radius
                        spreadRadius: 2.0, // Spread radius
                      ),
                    ],
                        )),
                      
                    ),
                  
                  
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          buyingQuote,
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Tektur",
                          ),
                          textAlign: TextAlign.justify,
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                      
                                      ),
                    ),
                  ),

                  Positioned(
                    top:300,
                    child: Divider(
                      endIndent: 40,
                      indent: 40,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              
                
                
            ),
            
            

          ),

          

          SliverList(
            
            
            delegate: SliverChildBuilderDelegate(
              
            

              
              (BuildContext context,int index){
                return Padding (
                  padding : EdgeInsets.only(left:20,bottom:20,right:10,top:20),
                  child: Stack(
                    children:[
                      
                      
                      Container(
                        width: 400,
                        height:150,
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                          Color.fromARGB(255, 243, 243, 243), // Red with 50% opacity
                          Color.fromRGBO(168, 107, 255, 1),
                        ]),
                      
                        
                        borderRadius: BorderRadius.circular(20.0),
                        
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(0, 255, 255, 255),
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            
                          ),
                          onPressed: (){

                            Navigator.push(context,
                            MaterialPageRoute (builder:(context) => Planet(planetinfo:planetinfo[index],
                            planetName:planetname[index],
                            price:planetprice[index],
                            planetimage:imagelist[index])));
                          },
                        
                                
                        
                        
                          child:Padding(
                            padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                            child: Column(
                              
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(planetname[index],
                                style:TextStyle(fontFamily: "Pacifico",fontSize: 40,fontWeight: FontWeight.w400,color:Colors.white)),
                                Text(planetprice[index],
                                style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Color.fromARGB(255, 44, 1, 65))),
                              ],
                            ),
                          ),
                          
                          ),
                      ),
                        Positioned(
                        
                        child: Container(
                        decoration: BoxDecoration(
                          
                          
                          borderRadius: BorderRadius.circular(100),
                          /*boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(172, 216, 163, 5), // Shadow color with opacity
                              blurRadius: 20,
                              offset: Offset(0,1),
                            ),
                          ],*/
                        ),
                          
                        width: 150,
                        height: 150,
                        child: Image(
                          image: imagelist[index]),
                        ),
                      ),

                      
                    
                        
                        ],
                  ),

                );
              },
              childCount: planetname.length,
              
            ),

          ),
          ]
        ),
      );
    }


}


class Collage extends StatelessWidget{

  late final double  topvalue;
  late final  double leftvalue;
  late final int imagevalue;

  Collage({required this.topvalue,required this.leftvalue,required this.imagevalue});

  @override
  Widget build(BuildContext context){
    return Positioned(
                    top:topvalue,
                    left:leftvalue,
                    child: Image(image: imagelist[imagevalue]),
                    height:300,
                    width:300,);
  }
}