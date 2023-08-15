import 'package:fancyscroll_swiper_view/Firstpage1.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  Center(child: Firstpage1()),
        
        
        ),
      );
    
  }
}

/*class Firstpage extends StatefulWidget{
  @override

  _FirstpageState createState()=> _FirstpageState();
}

class _FirstpageState extends State<Firstpage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
    );
  }
}
*/