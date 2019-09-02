import 'package:flutter/material.dart';

class ficus extends StatefulWidget{
  @override
  _ficusState createState() => _ficusState();
}

class _ficusState extends State<ficus> {
    static const String cart_add = 'assets/cart_add.png';
    static const String cart = 'assets/cart.png';
    static const String plant = 'assets/plant.png';
    Color gren = Color.fromRGBO(50, 160, 96, 1);
    Color gran = Color.fromRGBO(60, 170, 106, 1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 50),          
          child:Icon(Icons.arrow_back,),
        ),
        backgroundColor: gren,

        actions: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: gran,
                  borderRadius: BorderRadius.all(Radius.circular(24)),

                ),
                child: IconButton(
                  icon: Image.asset(cart,
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
              
              Positioned(
                left: 35,
                top: 2,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child:Center(child:  Text('1',
                    style: TextStyle(
                      color: gren,
                      height: 0.9
                    ),
                  ),
                  ),
                )
              ),

            ],
          ),
          SizedBox(width: 12,),
        ],
      ),
      body:Stack(
        children: <Widget>[
          bod(),
          Positioned(
            top: 100,
            left: 140,
            child: img(),
            
          ),
          
        ],
      ),
    );
  }
  Widget img() =>Container(
    height: 300,
    width: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
      image: new AssetImage(plant),
      )
    ),
    child: Text(''),
  );

  Widget bod()=>Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: gren,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('INDOOR',
              style: TextStyle(
                fontSize: 10,
                fontWeight:FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ),
            Text('Ficus',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Text('FROM',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                fontSize: 10,
                fontFamily: 'Roboto'
              ),
            ),
            Text('\$30',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto'
              ),
            ),
            SizedBox(height: 30,),
            Text('SIZES',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                fontSize: 10,
                fontFamily: 'Roboto'
              ),
            ),
            Text('Small',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto'
              ),
              ),
            SizedBox(height: 30,),
            Container(              
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(28)),

              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5,),
                  IconButton(icon: Image.asset(cart_add))

                ],
              )
            ),
            SizedBox(height: 30,),      
          ],
        ),
      ),
      Container(
        
        width: double.infinity,
        height: 402,
        decoration: BoxDecoration(
           borderRadius:BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60,),
            Text('All  to  know...',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1.2,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 20,),
            Text('if you are completely new to houseplants then fiscu is a brilliant first plant to adapt, it is very easy to look after and won\'t occupy too much space',
              style: TextStyle(
                height: 1.2,
              ),
            ),
            SizedBox(height: 40,),
            Text('Details',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            Text('Plant height: 35-34cm\;'),
            Text('Nursery pot width: 12cm'),
          ],
        ),
      ),
      ),
      ],
    ),
    );
  
}
