
class ChatModel{
  ChatModel(this.senderId,this.receiverId,this.image,this.username,this.message);
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
    return [];
    // return [
    //     ChatModel("Humphrey","images/face.png","Hello",DateTime(2022,9,10)),
    //     ChatModel("Chimobi","images/face2.png","Hi",DateTime(2022,9,9)),
    //     ChatModel("David","images/face.png","Help me",DateTime(2022,9,9)),
    //     ChatModel("Onyedikachi","images/face2.png","Hello",DateTime(2022,9,8)),
    //     ChatModel("Nanette","images/face.png","Check the plate",DateTime(2022,9,8)),
    //     ChatModel("Pearl","images/face2.png","Okay thank you",DateTime(2022,8,10)),
    //     ChatModel("Promise","images/face.png","Figma is sweet",DateTime(2022,8,10)),
    // ];
  }
}