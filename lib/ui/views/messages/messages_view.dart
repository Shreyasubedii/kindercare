import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'messages_viewmodel.dart';

class MessagesView extends StackedView<MessagesViewModel> {
  const MessagesView({super.key});

  @override
  Widget builder(
    BuildContext context,
    MessagesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[800],
      //   elevation: 0,
      //   centerTitle: true,
      //   title: const Text(
      //     "Messages",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),

      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search ',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: viewModel.updateSearch,
            ),
          ),

          // 📩 Message List (inbox)
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.filteredMessages.length,
              itemBuilder: (context, index) {
                final msg = viewModel.filteredMessages[index];

                return ListTile(
                  leading: CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage(msg['image']),
                  ),

                  title: Text(
                    msg['name'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  subtitle: Text(
                    msg['lastMessage'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        msg['time'],
                        style: const TextStyle(fontSize: 12),
                      ),
                      if (msg['unread'] > 0)
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.blue[800],
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            msg['unread'].toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        ),
                    ],
                  ),

                  onTap: () {
                    // TODO: Open chat page later
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  MessagesViewModel viewModelBuilder(BuildContext context) =>
      MessagesViewModel();
}
