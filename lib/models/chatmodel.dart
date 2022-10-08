
class ChatModel{
  ChatModel(this.senderId,this.receiverId,this.username,this.image,this.message);
  ChatModel.chat(this.senderId,this.receiverId);
  int senderId=0;
  int receiverId=0;
  String image="";
  String username="";
  String message="";
  DateTime dateTime=DateTime.now();
}
class ChatService{
  static List<ChatModel> getChats(){
    // return [];
    return [
        ChatModel(1,1,"Humphrey","images/face.png","Hello"),
        ChatModel(1,1,"Chimobi","images/face2.png","Hi"),
        ChatModel(1,1,"David","images/face.png","Help me"),
        ChatModel(1,1,"Onyedikachi","images/face2.png","Hello"),
        ChatModel(1,1,"Nanette","images/face.png","Check the plate"),
        ChatModel(1,1,"Pearl","images/face2.png","Okay thank you"),
        ChatModel(1,1,"Promise","images/face.png","Figma is sweet"),
    ];
  }
}