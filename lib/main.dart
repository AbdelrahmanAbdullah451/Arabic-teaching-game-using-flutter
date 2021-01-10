import 'package:flutter/material.dart';
import 'package:lv2_tut/data/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ignore: deprecated_member_use
  
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    
    pairs = getPairs();
    
    allImages = getAllImages();
    
      Future.delayed(const Duration(seconds:1) , (){
        setState(() {
            Future.delayed(const Duration(seconds:1) , (){
        setState(() {
          shuffling = "4";
           
         Future.delayed(const Duration(seconds:1) , (){
        setState(() {
          shuffling = "3";
           
         Future.delayed(const Duration(seconds:1) , (){
        setState(() {
          shuffling = "2";
           
         Future.delayed(const Duration(seconds:1) , (){
        setState(() {
           allImages.shuffle();
          shuffling = "";
        
      });
    });
      });
    });
      });
    });
      });
    });
        
      });
    });
            
       
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical : 20 , horizontal : 20),
        child: Column(children: [
          SizedBox(height:60,),
          Text("$points/800" , 
          style:TextStyle (
            fontSize: 24,
            fontWeight: FontWeight.w900 , 
            color: Colors.red[600],
          ),),
          Text("Points"),
         
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 0.0,
              maxCrossAxisExtent: 100
              ),
              

              children: List.generate(allImages.length, (index) {
                return Tile(
                  imageAssetPath: allImages[index],
                  selected: false,
                  parant: this,
                  tileIndex: index,
                );
              }),

              
          ), 
          Text("", 
          style:TextStyle (
            fontSize: 24,
            fontWeight: FontWeight.w900
          ),
          ),
          Text("$shuffling",
          style:TextStyle (
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: Colors.teal[300],
          ),
          ),

        ],),
      ),
    );
  }
}
// ignore: must_be_immutable
class Tile extends StatefulWidget {
  String imageAssetPath  ;
  String wordAssetPath;
  bool selected ;
  int tileIndex;
  _HomePageState parant;
  
  
  Tile({this.imageAssetPath,this.wordAssetPath, this.selected , this.tileIndex , this.parant});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        

        if(selectedImageAssetPath != ""){
          if(simCheck(selectedImageAssetPath, widget.imageAssetPath)){
            print("correct");
            points+=100;
            shuffling = "Correct !" ;
             setState(() {
            });
            widget.parant.setState(() {
            });


            allImages[widget.tileIndex] = "assets/c.png";
            allImages[previouslySelectedTileIndex] = "assets/c.png" ;
            setState(() {
            });
            widget.parant.setState(() {
            });
            
            selectedImageAssetPath = "";
          }else{
            print("wrong");
            shuffling = "Wrong answer" ;
             setState(() {
            });
            widget.parant.setState(() {
            });
            
            selectedImageAssetPath = "";
          }
        }else{
          selectedImageAssetPath = widget.imageAssetPath;
          previouslySelectedTileIndex = widget.tileIndex;
        }
      
      },
          child: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(widget.imageAssetPath),
        
        

      ),
      
    );
  }
}