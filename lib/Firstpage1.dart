import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'buyingpage.dart';
import "constants.dart";
class Firstpage1 extends StatefulWidget{
  @override

  _Firstpage1State createState()=> _Firstpage1State();
}

class _Firstpage1State extends State<Firstpage1>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 175, 238),
      body:Center(
      child: Stack(
        children:[
          
          Positioned(
            top:50,
            left:20,
              child: Text("Planets",
              style:TextStyle(fontSize:50,color: Colors.black,
            fontFamily: 'Pacifico',fontWeight: FontWeight.w600),),),
            Swiper(
          
              itemBuilder:(context,index){
                return Stack(
                  
              
              children:[
              
                
                Positioned(
                  top:350,
                  left:30,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(top:123),
                            child: Text(planetname[index],style:TextStyle(fontSize: 30,
                            color:const Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Pacifico",fontWeight: FontWeight.w500),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(planetinfo[index],style:TextStyle(fontSize: 20,
                            color:Color.fromARGB(255, 255, 255, 255),
                          ),),
                          ),
                        ],
                      ),
                    ),
                    
                  
                    height: 390,
                    width: 350,
                    
                    decoration: BoxDecoration(gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 243, 243, 243), // Red with 50% opacity
                        Color.fromRGBO(168, 107, 255, 1), // Blue with 50% opacity
                      ],
                      
                    ),
                    
                  
                borderRadius: BorderRadius.circular(30),
                    
                    
                    color: Color.fromARGB(255, 9, 9, 9),),
                    
                    
                              ),
                ),
              
                Positioned(
                  top:240,
                  left:80,
                child: Image(image:imagelist[index],
                height: 250,
                width: 250,
                ),
              ),
              
              ]
            
                );
          
              },
              
              itemCount: 8,
              
              ),

              Positioned(
            top: 150,
            left:30,
            child: Container(
              width:350,
              height: 55,
              child: ElevatedButton(
                
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute (builder:(context) => Buy()));
                },
                child: Text("Buy Planet!"),
                style:ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor:Color.fromRGBO(12, 12, 12, 1),
                backgroundColor: Color.fromRGBO(131, 65, 224, 1)),
                ),
            ),),
        ]
      ),
            
            
        ),

        
      
      );

  }
}

/*Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 11, 0),
      body:Swiper(
      itemBuilder: (context, index){
        
        return Stack(
          
          children:[
          
            
            Container(
            
              height: 600,
              width: 350,
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              
              color: colours[index],),
              
              
          ),
            Positioned(
              top:0,
              left:50,

              child: Container(
                width:50,
                height:50,
                
                color: Colors.white,
                
                ),
            ),]
        );
      
      
      },
      itemCount: colours.length,
      scrollDirection: Axis.horizontal,
      itemWidth: 350,
      
      itemHeight: 400,
      
      layout: SwiperLayout.TINDER,
        ) ,
    );*/
