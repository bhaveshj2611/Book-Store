import 'package:book_store/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage(
      {super.key,
      required this.bgcolor,
      required this.bookName,
      required this.bookAuthor,
      required this.bookImage});

  // final Color? bgcolor; implying dynamic values will reduce app performace when there is lot of data or pages in app..
  final bgcolor;
  final String bookName;
  final String bookAuthor;
  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                Stack(
                  children: [
                    Image.asset(
                      circle,
                      width: 33,
                    ),
                    const Positioned(
                      left: 6,
                      top: 6,
                      child: Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 255, 17, 0),
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              bookName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(bookAuthor,
                style: const TextStyle(fontSize: 15, color: Colors.black45)),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Image.asset(
              bookImage,
              width: 188,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 81,
              width: 303,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '⭐4.5',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text('108', style: TextStyle(fontSize: 15)),
                          Text('Eng', style: TextStyle(fontSize: 15))
                        ],
                      ),

                      // padding: EdgeInsets.symmetric(horizontal: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Row(
                          children: [
                            Text(
                              'Rating',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                            SizedBox(
                              width: 65,
                            ),
                            Text(
                              'Pages',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                            SizedBox(
                              width: 38,
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //below container can be implemeted as dragable bottom sheet could give better feel to app.
          SizedBox(
            height: 176.4,
            child: DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              maxChildSize: 1.0,
              builder: (context, scrollController) {
                return Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        bookDesc,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(75, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          minimumSize: const Size(315, 66),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 218, 109, 143),
                        ),
                        child: const Text(
                          'Buy Now for \$19.00',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
