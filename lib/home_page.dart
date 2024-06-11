import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(),
            IstaknutaKnjiga(),
            FotherWidget(),
          ],
        ),
      ),
    );
  }
}

class IstaknutaKnjiga extends StatelessWidget {
  const IstaknutaKnjiga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 400,
        color: Colors.blue[100],
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue[200],
                child: Image.asset(
                  'assets/images/Slika.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/logo.png"),
                SizedBox(width: 10),
                Text(
                  "OpenBook",
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Text("Početna"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sve knjige"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Dodaj knjigu"),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      labelStyle: TextStyle(color: Colors.grey),
                      hintText: "Enter search term...",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search), // Magnifier icon
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                        borderSide: BorderSide(width: 2, color: Colors.grey), // Border width and color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.blue), // Focused border color
                      ),
                    ),
                    style: TextStyle(color: Colors.black), // Text color
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF0E365D),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Poveži novčanik",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FotherWidget extends StatelessWidget {
  const FotherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xFF0E365D),
      child: Center(
        child: Text(
          "Ovaj projekt je nastao u svrhu natjecanja “Code challange by SUMIT 2022”",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
