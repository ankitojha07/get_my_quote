
import 'package:flutter/Material.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {

  int _index = 0;
  List quotes = [
    "“The purpose of our lives is to be happy.” — Dalai Lama",
    "“Life is what happens when you’re busy making other plans.” — John Lennon",
    "“Get busy living or get busy dying.” — Stephen King",
    "“You only live once, but if you do it right, once is enough.” — Mae West",
    "“Many of life’s failures are people who did not realize how close they were to success when they gave up.”– Thomas A. Edison",
    "“If you want to live a happy life, tie it to a goal, not to people or things.”– Albert Einstein",
    "“Never let the fear of striking out keep you from playing the game.”– Babe Ruth",
    "“Money and success don’t change people; they merely amplify what is already there.” — Will Smith",
    "“Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.” – Steve Jobs",
    "“Not how long, but how well you have lived is the main thing.” — Seneca",
    "“If life were predictable it would cease to be life, and be without flavor.” – Eleanor Roosevelt",
    "“The whole secret of a successful life is to find out what is one’s destiny to do, and then do it.”– Henry Ford",
    "“The whole secret of a successful life is to find out what is one’s destiny to do, and then do it.”– Henry Ford",
    "“In order to write about life first you must live it.”– Ernest Hemingway",
    "“The big lesson in life, baby, is never be scared of anyone or anything.”– Frank Sinatra",
    "“Sing like no one’s listening, love like you’ve never been hurt, dance like nobody’s watching, and live like it’s heaven on earth.” – (Attributed to various sources)",
    "“Curiosity about life in all of its aspects, I think, is still the secret of great creative people.” – Leo Burnett",
    "“Life is not a problem to be solved, but a reality to be experienced.”– Soren Kierkegaard",
    "“The unexamined life is not worth living.” — Socrates",
    "“Turn your wounds into wisdom.” — Oprah Winfrey",
    "“The way I see it, if you want the rainbow, you gotta put up with the rain.” —Dolly Parton",
    "“Do all the good you can, for all the people you can, in all the ways you can, as long as you can.” — Hillary Clinton (inspired by John Wesley quote)",
    "“Don’t settle for what life gives you; make life better and build something.” — Ashton Kutcher",
    "“Everybody wants to be famous, but nobody wants to do the work. I live by that. You grind hard so you can play hard. At the end of the day, you put all the work in, and eventually it’ll pay off. It could be in a year, it could be in 30 years. Eventually, your hard work will pay off.” — Kevin Hart",
    "“Everything negative – pressure, challenges – is all an opportunity for me to rise.” — Kobe Bryant",
    "“I like criticism. It makes you strong.” — LeBron James",
    "“You never really learn much from hearing yourself speak.” ― George Clooney",
    "“Life imposes things on you that you can’t control, but you still have the choice of how you’re going to live through this.” — Celine Dion",
    "“Life is never easy. There is work to be done and obligations to be met – obligations to truth, to justice, and to liberty.” — John F. Kennedy (JFK Quotes)",
    "“Live for each second without hesitation.” — Elton John",
    "“Life is like riding a bicycle. To keep your balance, you must keep moving.” — Albert Einstein",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20.0)
                    ),

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(quotes[_index%quotes.length], style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0,right: 6.0),
                child: Divider(thickness: 2.3,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton.icon(onPressed: _showQuote,
                  icon: Icon(Icons.wb_sunny,color: Colors.white),
                  label: Text("Get Quote!", style: TextStyle(
                    color: Colors.white
                  ),),style: TextButton.styleFrom(
                    backgroundColor: Colors.green
                  ),),
              ),
              Spacer(),

            ],
          ),

      ),
    );
  }

  void _showQuote() {

    setState(() {
      _index +=1;
    });
    
  }
}
