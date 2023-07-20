import 'package:book_store/pages/description/description.dart';
import 'package:book_store/shared/constants/constants.dart';
import 'package:book_store/shared/models/book_data.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> color = [
      const Color.fromARGB(255, 206, 243, 252),
      const Color.fromARGB(255, 218, 109, 143),
    ];
    return SizedBox(
      height: 326,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookData1.length,
        itemBuilder: (context, index) {
          // using inkwell was a bad idea when you tap and hold design dosent look good could have use gesture detector insted or may be fix container so it must look better
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DescriptionPage(
                    key: ValueKey(bookData1),
                    bookImage: bookData1[index].image,
                    bookAuthor: bookData1[index].author,
                    bookName: bookData1[index].name,
                    bgcolor: color[index],
                  );
                },
              ));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              //Avoid giving fixed height and width maintain text with overflow word control
              height: 320,
              width: 226,
              decoration: BoxDecoration(
                color: color[index],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Image.asset(bookData1[index].image, width: 135),
                        Text(
                          bookData1[index].name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          bookData1[index].author,
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Image.asset(circle, width: 33),
                  ),
                  const Positioned(
                    top: 30,
                    right: 29,
                    child: Icon(Icons.favorite, size: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
