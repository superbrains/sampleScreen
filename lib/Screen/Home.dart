import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController dobController = TextEditingController();
  DateTime _date = new DateTime(2020);
  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now());
    if (picked != null && picked != _date) {
      print('Date Selected: ${_date.toString()}');
      setState(() {
        _date = picked;

        var formatter = new DateFormat('yyyy-MM-dd');
        String formatted = formatter.format(_date);

        dobController.text = formatted.toString();
      });
    }
  }
List<String> payment = ['Cash', 'Card', 'Transfer'];
List<String> name = ['Cash', 'Card', 'Transfer'];
  @override
  Widget build(BuildContext context) {
     SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
     appBar: new AppBar(
       backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.pink,),
        actions: <Widget>[
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
               width: 36,
               height: 60,
                  decoration: BoxDecoration(
                   boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6.0,
                           
                          ),
                        ],
                    shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                         'asset/fineGirl.jpg'))),
                ),
           ),
        ],
     ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(left:20.0, top: 10, ),
           child: Text('Search By', style: TextStyle(color:Colors.grey),),
         ),
          Container(
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        // decoration: kBoxDecorationStyle,
                        height: 68.0,
                        child: DropdownButton(
                          iconSize: 40,
                         iconEnabledColor: Colors.indigo,
                                   underline: Padding(
                                   padding: EdgeInsets.all(5),
                                       ),
                                    hint: Padding(
                                      padding: const EdgeInsets.only(left:8.0, ),
                                      child: Text('All Expenses', style: TextStyle( fontFamily: 'BalooPaaji2', color: Colors.black)),
                                    ),
                                    isExpanded: true,
                                     style: TextStyle(
                              fontFamily: 'BalooPaaji2',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                                    items: payment
                                        .map((value) => DropdownMenuItem<String>(
                                              child: Text(value),
                                              value: value.toString(),
                                            ))
                                        .toList(),
                                    onChanged: (newValue) {
                                      // setState(() {
                                      //   filter = newValue;
                                      // });
                                    }),
                      )
                    ],
                  )),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                  child:  Row(children: <Widget>[
                    Column(children:<Widget>[
                      Text('Name')
                    ]),
                    SizedBox(width: 160,),
                     Column(children:<Widget>[
                      Text('ID Number')
                    ]),
                  
                  ],),
                 
                  ),
                   Row(children: <Widget>[
                     Container(
                       width: 200,
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        // decoration: kBoxDecorationStyle,
                        height: 68.0,
                        child: DropdownButton(
                          iconSize: 40,
                         iconEnabledColor: Colors.indigo,
                                   underline: Padding(
                                   padding: EdgeInsets.all(5),
                                       ),
                                    hint: Padding(
                                      padding: const EdgeInsets.only(left:8.0, ),
                                      child: Text('Grace Alfred', style: TextStyle( fontFamily: 'BalooPaaji2', color: Colors.black)),
                                    ),
                                    isExpanded: true,
                                     style: TextStyle(
                              fontFamily: 'BalooPaaji2',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                                    items: payment
                                        .map((value) => DropdownMenuItem<String>(
                                              child: Text(value),
                                              value: value.toString(),
                                            ))
                                        .toList(),
                                    onChanged: (newValue) {
                                      // setState(() {
                                      //   filter = newValue;
                                      // });
                                    }),
                      )
                    ],
                  ),
                
                  
                  
                  ),
                  Container(
                    width: 190,
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        // decoration: kBoxDecorationStyle,
                        height: 68.0,
                        child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                       validator: (value) {
                                  if (value.isEmpty) {
                                    return "Fill Empty Space";
                                  }
                                  return null;
                                },
                           //controller: _nameController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "123456",
                                          // prefixIcon: Icon(
                                          //   Icons.person,
                                          //   color: Colors.purple.shade800,
                                          // ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey[400])),
                                    ),
                                  ),
                      )
                    ],
                  )),
                   ],),
SizedBox(height:15),
//next row
 Padding(
                    padding: const EdgeInsets.only(left:30.0),
                  child:  Row(children: <Widget>[
                    Column(children:<Widget>[
                      Text('Start Date')
                    ]),
                    SizedBox(width: 130,),
                     Column(children:<Widget>[
                      Text('End Date')
                    ]),
                  
                  ],),
                 
                  ),
                   Row(children: <Widget>[
                      Container(
                    width: 200,
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        // decoration: kBoxDecorationStyle,
                        height: 68.0,
                        child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                      readOnly: true,
                                      controller: dobController,
                                      onTap:(){
                                        _selectDate(context);
                                      },
                                       validator: (value) {
                                  if (value.isEmpty) {
                                    return "Fill Empty Space";
                                  }
                                  return null;
                                },
                           //controller: _nameController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "02/12/19",
                                          // prefixIcon: Icon(
                                          //   Icons.person,
                                          //   color: Colors.purple.shade800,
                                          // ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey[400])),
                                    ),
                                  ),
                      )
                    ],
                  )),
                  Container(
                    width: 190,
                  padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        // decoration: kBoxDecorationStyle,
                        height: 68.0,
                        child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                      readOnly: true,
                                        controller: dobController,
                                      onTap:(){
                                        _selectDate(context);
                                      },
                                       validator: (value) {
                                  if (value.isEmpty) {
                                    return "Fill Empty Space";
                                  }
                                  return null;
                                },
                           //controller: _nameController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "21/2/2020",
                                          // prefixIcon: Icon(
                                          //   Icons.person,
                                          //   color: Colors.purple.shade800,
                                          // ),
                                          hintStyle:
                                              TextStyle(color: Colors.grey[400])),
                                    ),
                                  ),
                      )
                    ],
                  )),
                   ],),

                  SizedBox(height:15),
                  Center(
                    child: Container(
                      width: 300,
                      height: 180,
                      child: Card(
                         shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        shadowColor: Colors.black,
                        elevation:7,
                        child:Column(
                          children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Card(
                                  shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),)),
                              shadowColor: Colors.black,
                              elevation: 4,
                              child: Row(children:<Widget>[
                                Container(
                                 decoration: BoxDecoration(
                       color: Colors.indigo,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), 
                    bottomLeft: Radius.circular(5), 
                    )
                    ),
                                  width: 60,
                                  height: 50,
                                  child: Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("TAP", style: TextStyle(color:Colors.white),),
                                    )
                                  ],),
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text("Total Amount Paid", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height:5),
                                     Text('150,000.00' , style: TextStyle(color:Colors.grey),),
                                  ],
                                ),

                              ]),
                            ),
                          ),
                        Padding(
                            padding: const EdgeInsets.only(left:15.0, right: 15, bottom: 5),
                            child: Card(
                               shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),)),
                              shadowColor: Colors.black,
                              elevation: 4,
                              child: Row(children:<Widget>[
                                Container(
                                 decoration: BoxDecoration(
                       color: Colors.indigo,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5), 
                    bottomLeft: Radius.circular(5), 
                    )
                    ),
                                  width: 60,
                                  height: 50,
                                  child: Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("TNP", style: TextStyle(color:Colors.white),),
                                    )
                                  ],),
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text("Total No. of Payment", style: TextStyle(fontWeight:FontWeight.bold),),
                                    ),
                                    SizedBox(height:5),
                                     Text("123456", style: TextStyle(color:Colors.grey),),
                                  ],
                                ),

                              ]),
                            ),
                          ),
                        ],)
                      ),
                    ),
                  ),
                SizedBox(height:10),
               ListView.builder(
                   // controller: featuredScrollController,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemCount: 6,
                    
                    itemBuilder: (BuildContext context, int index) {
                    
                        return _buildCard("David Cameron", index, 123456, "Queen Grace","500000" , "20/12/2022");
                    }),
               
       ],),
     ),
     bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        child: Container(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             
              Container(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  elevation: 10.0,
                  onPressed: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return SelectPurpose();
                // }));
                  },
                  //  padding: EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  color: Colors.white,
                  child: Text(
                    "Designed by APEKFLUX",
                    style: TextStyle(
                      color: Colors.indigo,
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BalooPaaji2',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child:CircleAvatar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            child:Icon(Icons.add, color:Colors.pink.shade800, size: 30,)),
          backgroundColor: Colors.pink.shade800,
        ),
    );
  }
  _buildCard(String staff, int index, int transactionId, String customerName, String amount, String transactionDate){
    return Padding(
      padding: const EdgeInsets.only(top:5.0,  right: 20, left: 15),
      child: Container(
        height: 150,
        child: Card(child:
        Container(
          height: 130,
          child: Card(
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                  Row(children:<Widget>[
                    Column(children: <Widget>[
                      Text("Processed by: "+ staff)
                    ],),
                    Spacer(),
                     Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.edit, color: Colors.indigo,size: 12,),
                          Text("Edit", style: TextStyle(color:Colors.indigo),),
                        ],
                      )
                    ],),
                  ]),
                  SizedBox(height:10),
                  Row(children:<Widget>[
                    Text("Transaction ID " + transactionId.toString(), style: TextStyle(color:Colors.pink),)
                  ]),
                  SizedBox(height:20),
                  Row(
                    children:<Widget>[
                    Column(children: <Widget>[
                      Text("Customer")
                    ],),
                    Spacer(),
                    Column(children: <Widget>[
                      Text("Transaction Date",style: TextStyle(color:Colors.pink))
                    ],),
                  ]),
                  SizedBox(height:10),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children:<Widget>[
                    Text(customerName, style: TextStyle(color:Colors.indigo)),
                    Text(amount,style: TextStyle(color:Colors.indigo)),
                    Text(transactionDate,style: TextStyle(color:Colors.indigo)),
                  ])

              ],),
            ),
          ),
        )),
      ),
    );
  }
}