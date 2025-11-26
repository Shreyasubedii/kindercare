import 'package:stacked/stacked.dart';

class MessagesViewModel extends BaseViewModel {
  List<Map<String, dynamic>> messages = [
    {
      'name': 'Principal',
      'lastMessage': 'Meeting tomorrow at 10 AM.',
      'time': '9:15 AM',
      'image': 'assets/images/user1.jpg',
      'unread': 2,
    },
    {
      'name': 'Admin',
      'lastMessage': 'New announcement uploaded.',
      'time': 'Yesterday',
      'image': 'assets/images/user2.jpg',
      'unread': 0,
    },
    {
      'name': 'Parent - Rohan',
      'lastMessage': 'Thank you for today’s class.',
      'time': 'Sun',
      'image': 'assets/images/user3.jpg',
      'unread': 1,
    },
  ];

  String searchQuery = "";

  List<Map<String, dynamic>> get filteredMessages {
    if (searchQuery.isEmpty) return messages;

    return messages
        .where((msg) =>
            msg['name'].toLowerCase().contains(searchQuery.toLowerCase()) ||
            msg['lastMessage']
                .toLowerCase()
                .contains(searchQuery.toLowerCase()))
        .toList();
  }

  void updateSearch(String value) {
    searchQuery = value;
    notifyListeners();
  }
}
