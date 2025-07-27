import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;
  final pages = [const Page1(), const Page2(), const Page3(), const Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          "Geeks For Geeks",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildNavBar(context),
    );
  }
 Container buildNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
           topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           IconButton(
             enableFeedback: false,
               onPressed: () {
               setState(() {
                 pageIndex =0;
               });
               },

               icon:
               pageIndex == 0
               ? const Icon(
                 Icons.home_filled,
                 color: Colors.white,
                 size: 35,
               )
                   : const Icon(
                 Icons.home_outlined,
                 color: Colors.white,
                 size: 35,
               ),
           ),
          IconButton(
            enableFeedback: false,
              onPressed: (){
              setState(() {
                pageIndex = 1;
              });
              },
              icon:
              pageIndex == 1?
                  const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                  : const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              )

          ),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex =2;
                });
              },
              icon: pageIndex ==2?
                  const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                  : const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
              )
          )
        ],
      ),
    );
 }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 1",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 2",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 3",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page Number 4",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}