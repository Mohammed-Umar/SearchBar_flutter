import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  
  final List<String> cities = [
    "Hyderabad",
    "Delhi",
    "Mumbai",
    "Bangaloru",
    "Chennai",
    "Panaji",
    "Bhopal",
    "Lucknow",
    "Srinagar",
    "Jammu",
    "Jaipur",
    "Kolkata"
  ];
  
  @override
  List<Widget> buildActions(BuildContext context) {
    // What actions to perform by app bar or on app bar.
    return <Widget>[
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading Icon on the left of the app bar.
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: Show some result on the basis of selection of sugestions.
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: Show suggestions when starts searching.
    return null;
  }
}
