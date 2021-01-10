
import 'package:lv2_tut/model/tile-model.dart';

int points = 0;
bool pressed = false;
String selectedImageAssetPath ="";
int previouslySelectedTileIndex;
String shuffling = "Schuffling in 5  ";
int selectedTileIndex;
// ignore: deprecated_member_use
List<TileModel> pairs = new List<TileModel>();
// ignore: deprecated_member_use
List<String> allImages = new List<String>();

List<TileModel> getPairs(){

  
  TileModel tileModel = new TileModel(); 
  

  //1
  tileModel.setImageAssetPath("assets/1.png");
  tileModel.setWordAssetPath("assets/11.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //2
  tileModel.setImageAssetPath("assets/2.png");
  tileModel.setWordAssetPath("assets/22.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //3
  tileModel.setImageAssetPath("assets/3.jpg");
  tileModel.setWordAssetPath("assets/33.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //4
  tileModel.setImageAssetPath("assets/4.jpg");
  tileModel.setWordAssetPath("assets/44.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  


  //5
  tileModel.setImageAssetPath("assets/5.png");
  tileModel.setWordAssetPath("assets/55.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //6
  tileModel.setImageAssetPath("assets/6.jpg");
  tileModel.setWordAssetPath("assets/66.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //7
  tileModel.setImageAssetPath("assets/7.png");
  tileModel.setWordAssetPath("assets/77.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ; 
  
  //8
  tileModel.setImageAssetPath("assets/8.jpg");
  tileModel.setWordAssetPath("assets/88.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);

  tileModel = new TileModel() ;  
  
  
  return pairs;
}

List<String> getAllImages(){

for(int i=0 ; i<=7 ; i++){
      
     allImages.add(pairs[i].getImageAssetPath());
     allImages.add(pairs[i].getWordAssetPath());
    }
  return allImages;
}
// ignore: missing_return
int getImageIndex(String path){
  int i ;
  for(i = 0 ; i<=7 ; i++){
    if(pairs[i].getImageAssetPath() == path || pairs[i].getWordAssetPath() == path){
      return i;
    }
  }
}

bool simCheck(String pickedImagePath , String pickedWordPath){
  int index1 = getImageIndex(pickedImagePath);
  int index2 = getImageIndex(pickedWordPath);
  if(pickedImagePath == pickedWordPath){
    return false;
  }else if( index1 == index2 ){
    return true;
  }else{
    return false;
  }
}

