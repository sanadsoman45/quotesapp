import 'package:flutter/material.dart';

class quotes extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _quotesState();
}

class _quotesState extends State<quotes>{
  int _index=0;
  List quotes=[
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "The way to get started is to quit talking and begin doing.",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    "If life were predictable it would cease to be life, and be without flavor.",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.",
    "Life is what happens when you're busy making other plans."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(22.0),
                    height: 200,
                    width:350,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                        child: Text(
                            quotes[_index%quotes.length],style: TextStyle(
                          color: Colors.grey.shade700,
                          fontStyle: FontStyle.italic,
                          fontSize: 18
                        ),
                        )
                    )
                ),
              )
            ),
            Divider(thickness: 2.0,),
            Padding(
              padding: const EdgeInsets.only(top:15.5),
              child: FlatButton.icon(
                  onPressed: _showQuotes,
                  color: Colors.greenAccent.shade700,
                  icon:Icon(Icons.wb_sunny,color: Colors.white,),
                  label: Text("Inspire Me",style: TextStyle(color: Colors.white,fontSize: 18),)
              ),
            ),
            Spacer(flex: 1,)
          ],
        ),
      )
    );
  }
  

  void _showQuotes() {
    setState(() {
      _index+=1;
    });

  }
}