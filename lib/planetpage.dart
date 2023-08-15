import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class Planet extends StatefulWidget{
  final String planetName;
  final String price;
  final String planetinfo;
  final AssetImage planetimage;

  Planet({required this.planetName,required this.planetimage,required this.planetinfo,
  required this.price});


  @override
  _PlanetState createState() => _PlanetState();
}
  
class _PlanetState extends State<Planet>{
  late AssetImage myplanetimage=AssetImage('images/earth.png');
  late String price;
  late String name;
  
  @override
  void initState(){
    super.initState();
    myplanetimage = widget.planetimage;
    price = widget.price;
    name = widget.planetName;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body :CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            
            // ignore: prefer_const_constructors
            SliverAppBar(
              
              backgroundColor: Color.fromARGB(96, 174, 54, 243),
              elevation:50,
              scrolledUnderElevation: 50.0,
              pinned: false,
              centerTitle: true,
              expandedHeight: 400,
              stretch: true,
              
              
              
              
              
              
              flexibleSpace:   FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                ],
                background:Image(image: myplanetimage,fit: BoxFit.cover,),
            ),
            
            

          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
            

              
              (BuildContext context,int index){
                return Expanded(
              child: Container(
                
                
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50)), // Adjust the radius as needed
                  color: Color.fromARGB(255, 252, 252, 252), // You can set the background color here
                ),
              child: Column(
                children: [
                  Text("$name",style:TextStyle(fontFamily: "Pacifico",fontSize: 55,fontWeight: FontWeight.w600,color: Color.fromRGBO(168, 107, 255, 1))),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          widget.planetinfo,
                          textStyle: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            
                          ),
                          textAlign: TextAlign.justify,
                          speed: const Duration(milliseconds: 10),
                        ),
                      ],
                      
                                      ),
                  ),
                  
                  Text("$price",style:TextStyle(fontSize: 60,fontWeight: FontWeight.w600)),
                  
                  Padding(
                    padding: const EdgeInsets.only(top:40,bottom:30),
                    child: Container(
                      width:300,
                      height: 50,
                      child: ElevatedButton(
                        
                        
                        onPressed: (){
                                print("you bought the planet byeee");
                      },
                      style: ElevatedButton.styleFrom(
                        primary:Color.fromARGB(66, 176, 56, 240),
                        shadowColor: Color.fromARGB(66, 176, 56, 240),
                        
                      ),
                      child: Text("BUY")),
                    ),
                  ),
            
            
                  
                ],
              ),
              ),
            );
              },
              childCount: 1,
              
            ),

          ),
        

          

          
          ]
        ),
    );

  }
}


