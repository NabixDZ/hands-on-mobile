import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 236, 233),
          borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: _isSearching
            ? IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // setState(() {
                  //   _isSearching = false;
                  //   _searchController.clear();
                  // });
                },
              )
            : IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 143, 138, 135),
                ),
                onPressed: () {
                  // setState(() {
                  //   _isSearching = true;
                  // });
                },
              ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // TODO: filtrer les résultats ici
                },
              )
            : Text('Search'),
        trailing: Container(
          child: Image.asset("assets/images/Filter.png"),
        ),
      ),
    );
  }
}
