import 'Article.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ArticleDetails()));

class ArticleDetails extends StatefulWidget {
  @override
  State<ArticleDetails> createState() => _ArticleDetailsState();
}

/*
Data Reterived from the database related to the article page
1- Image URL
2- Title
3- List of paragraphs ->content of the article
*/

List<String> content = [
  "The hardest thing about driving is parking. For many drivers, especially the beginners, the size of the parking spot isn't big enough for the vehicle. Minimizing the vehicle's size can't be the best solutions for all car types, but Mercedes-Benz has found the solution for this by providing smart cars and vehicles with an auto parking feature.",
  "Smart cars have a long history began when the maker of swatch  a famous brand of watches in the nineteenth - thought about apply the idea of his watches to develop in the automotive industry. He cooperated with Daimler-Benz AG, the makers of Mercedes-Benz to share his development of the new city car. The smart car called then (Smart Fortwo Electric Drive) because of its design of the two-door car.",
  "The powerful features like the design, the affordable cost, and technology of this type of cars have captured people’s minds.The design is a fusion between urban and modern design. Also, the interior is surprisingly spacious although it has only two doors. So it is the best choice for people who like small and stylish cars. Now smart cars service the future vision of the style of the smart modern cities."
];

Article article = Article(content, "Smart Cars", "assets/smart-car.jpg");

class _ArticleDetailsState extends State<ArticleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thickness: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage(article.imageUrl),
                      height: 500,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios),
                          color: Color(0xffBA0C2F),
                          iconSize: 30,
                        ),
                        SizedBox(height: 350),
                        Text(
                          article.title,
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xffBA0C2F),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 30,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Text(
                  //content.map((p) => p + "\n\n").toString(),
                  article.content.join("\n\n"),
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
