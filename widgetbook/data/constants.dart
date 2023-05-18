
import 'package:mm_flutter_app/data/models/messages/message.dart';
import 'package:mm_flutter_app/data/models/user/user.dart';

final List<User> users = [
  User(id: '1', fullName: 'Raghav Yadav',avatarUrl: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', userHandle: 'r-yadav',email: 'raghav@gmail.com',adminNotes: ''),
  User(id: '2', fullName: 'Shivam Tyagi',avatarUrl: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', userHandle: 's-tyagi',email: 'shivam@gmail.com',adminNotes: ''),
  User(id: '3', fullName: 'Johan', avatarUrl: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',userHandle: 'johan',email: 'johan@gmail.com',adminNotes: ''),
];

final List<Message> mockMessages =[
  Message(id: '1', createdBy: '2', channelId: '1', messageText: 'messageText', createdAt: DateTime.now().toString(), statuses: ['seen']),
  Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hi', createdAt: DateTime.now().toString(), statuses: ['seen']),
  Message(id: '1', createdBy: '2', channelId: '1', messageText: 'hello', createdAt: DateTime.now().toString(), statuses: ['seen']),
  Message(id: '1', createdBy: '2', channelId: '1', messageText: 'how are you?', createdAt: DateTime.now().toString(),statuses: []),
];