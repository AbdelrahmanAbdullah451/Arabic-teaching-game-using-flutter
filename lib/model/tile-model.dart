class TileModel{
  String imageAssetPath;
  String wordAssetPath;
  bool isSelected ;  

  TileModel({this.imageAssetPath,this.wordAssetPath,this.isSelected});


  void setImageAssetPath(String getImageAssetPath ){
    imageAssetPath = getImageAssetPath;
  }
  void setWordAssetPath(String getWordAssetPath){
    wordAssetPath = getWordAssetPath;
  }
  void setIsSelected(bool getIsSelected){
    isSelected = getIsSelected;
  }


  String getImageAssetPath(){
    return imageAssetPath;
  }
  String getWordAssetPath(){
    return wordAssetPath;
  }
  bool getIsSelected(){
    return isSelected;
  }

}