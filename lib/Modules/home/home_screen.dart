import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(width: 28,),
                CircleAvatar(
                  radius: 24,
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    children: [
                      Text('Name',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w200),),
                      Text('Surname',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w200),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Images/homepage/Car_photo-2.png'),
                  fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 320,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Padding(padding: EdgeInsets.only(right: 84),child: Text('Balance:',style: TextStyle(color: Colors.blue,fontFamily: 'Roboto'),)),
                        Text('1.452.000 uzs',style: TextStyle(fontSize: 18,color: Colors.blue),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 12,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              width: 320,
              height: 90,
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: 18,),
                        Image.asset('Images/homepage/Income.png',width: 24,height: 24,),
                        SizedBox(width: 7,),
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: '90 mln sum',style: TextStyle(fontSize: 16,color: Colors.green[700],fontFamily: 'Roboto'),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(right: 57),child: Text('kirim',style: TextStyle(color: Colors.grey[400],fontFamily: 'Roboto'),))
                          ],
                        ),
                        SizedBox(width: 33,),
                        Image.asset('Images/homepage/Down.png',width: 24,height: 24,),
                        SizedBox(width: 7,),
                        Column(
                          children: [
                            SizedBox(height: 20,),
                            Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: '56 mln sum',style: TextStyle(fontSize: 16,color: Colors.red[700],fontFamily: 'Roboto'),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(right: 45),child: Text('chiqim',style: TextStyle(color: Colors.grey[400],fontFamily: 'Roboto'),))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 27,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                          blurRadius: 12,
                          offset: Offset(0, 3)
                      )
                    ]
                  ),
                  width: 108,
                  height: 40,
                  child: Center(child: Text('Hamassi',style:  TextStyle(color: Colors.blue[800],fontSize: 14,fontFamily: 'Roboto'),)),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(24),
                  ),
                  width: 108,
                  height: 40,
                  child: Center(child: Text('Xarajatlar',style:  TextStyle(color: Colors.grey,fontSize: 14,fontFamily: 'Roboto'),)),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(24),
                  ),
                  width: 108,
                  height: 40,
                  child: Center(child: Text('Daromad',style:  TextStyle(color: Colors.grey,fontSize: 14,fontFamily: 'Roboto'),)),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: ListView(

                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
