import 'package:book_store/pages/description/description.dart';
import 'package:book_store/shared/constants/constants.dart';
import 'package:book_store/shared/models/book_data.dart';
import 'package:flutter/material.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> color = [
      const Color.fromARGB(255, 206, 243, 252),
      const Color.fromARGB(255, 218, 109, 143),
    ];
    //using ..list.genereate will avoid giving fixed height so container stays responsive.
    //for long text we can use overflow with fix no. of keyword so container doest go long..
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            bookData2.length,
            (index) => InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return DescriptionPage(
                      key: ValueKey(bookData2),
                      bookImage: bookData2[index].image,
                      bookAuthor: bookData2[index].author,
                      bookName: bookData2[index].name,
                      bgcolor: color[index],
                    );
                  },
                ));
              },
              child: Stack(
                children: [
                  Container(
                    // right is given so user may feel there is gap between screen and component looks better
                    margin: const EdgeInsets.only(left: 24, right: 10, top: 70),
                    height: 160,
                    width: 168,
                    decoration: BoxDecoration(
                        color: color[index],
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 70),
                          Text(
                            bookData2[index].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            bookData2[index].author,
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 50,
                    child: Image.asset(bookData2[index].image, width: 90),
                  ),
                  Positioned(
                    right: 20,
                    top: 80,
                    child: Image.asset(circle, width: 33),
                  ),
                  const Positioned(
                    top: 90,
                    right: 29,
                    child: Icon(Icons.favorite, size: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
