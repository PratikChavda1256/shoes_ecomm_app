import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  final TextEditingController _searchController = TextEditingController();
  RxList<String> searchSuggestions = [
    'Nike Air Max Shoes',
    'Adidas Sneakers',
    'Running Shoes',
    'Basketball Shoes',
    'Sandals',
    'Boots',
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 30),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Search'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                _searchController.clear();
                // Clear search text and dismiss suggestions
                searchSuggestions.assignAll([
                  'Nike Air Max Shoes',
                  'Adidas Sneakers',
                  'Running Shoes',
                  'Basketball Shoes',
                  'Sandals',
                  'Boots',
                ]);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                if (value.isEmpty) {
                  // Reset suggestions to initial list when search query is empty
                  searchSuggestions.assignAll([
                    'Nike Air Max Shoes',
                    'Adidas Sneakers',
                    'Running Shoes',
                    'Basketball Shoes',
                    'Sandals',
                    'Boots',
                  ]);
                } else {
                  // Filter suggestions based on search query
                  searchSuggestions.assignAll(_getFilteredSuggestions(value));
                }
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.white60,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
            ),
          ),
          Expanded(
            child: Obx(
                  () => ListView.builder(
                itemCount: searchSuggestions.length,
                itemBuilder: (context, index) {
                  String suggestion = searchSuggestions[index];
                  IconData iconData = _getIconForSuggestion(suggestion);

                  return ListTile(
                    title: Row(
                      children: [
                        Icon(iconData), // Display icon next to the suggestion
                        const SizedBox(width: 10), // Spacer for icon
                        Text(suggestion),
                      ],
                    ),
                    onTap: () {
                      // Handle item selection (e.g., navigate to item details)
                      print('Selected: $suggestion');
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<String> _getFilteredSuggestions(String query) {
    if (query.isEmpty) {
      return [
        'Nike Air Max Shoes',
        'Adidas Sneakers',
        'Running Shoes',
        'Basketball Shoes',
        'Sandals',
        'Boots',
      ];
    }
    return searchSuggestions
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  IconData _getIconForSuggestion(String suggestion) {
    // // Customize icon based on suggestion content
    // if (suggestion.toLowerCase().contains('nike air max')) {
    //   return Icons.access_time; // Clock icon for Nike Air Max Shoes
    // }
    // Add more conditions and return appropriate icons for other suggestions
    return Icons.access_time; // Default icon if no specific condition matches
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
