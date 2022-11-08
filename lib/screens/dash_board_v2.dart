import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Dashboard",
              style:
              TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
            Row(
              children: [
                const Text(
                  "Filter Queries:  ",
                  style:
                  TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Icon(Icons.filter_alt_outlined,
                    size: 31),
              ],
            ),

          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              children: [




                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Container(
                      height: 60,
                      width: 150,

                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: const Text("New Queries\n         5",
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      //color: Colors.purple,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: const Text("Pending With Me\n             3",
                          style: TextStyle(fontSize: 20)),
                    ),

                    Container(
                      height: 60,
                      width: 200,
                      //color: Colors.purple,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: const Text("Pending With Dev\n             2",
                          style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: 'List of Queries',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: ' !!!!!',
                                style: TextStyle(
                                  color: Colors.grey,
                                )
                            )
                          ]
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: '*Total Records',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: ' (15)',
                                style: TextStyle(
                                  color: Colors.grey,
                                )
                            )
                          ]
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(1, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: GestureDetector(
                    onTap: (){ },
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            child: Icon(Icons.person,
                              color: Colors.black,),

                          ),

                          Text ("Kunal"),



                        ],
                      ),
                      title:  Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        //padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Project:- BC & PC"),
                            Text("ISSUE",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ],
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ticket No- 1111"),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: 320,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(" Created Date: 25/10/2022",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                Text(" | Time: 3:00 PM"),

                              ],
                            ),
                          ),
                          const SizedBox(height:9.0),



                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            //padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description:-",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                                Text("Facing issues while resigration and gettin OTP",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,

                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),


                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/assign');
                          },
                          child: const Text(
                            'Assign',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/addquery');
                          },
                          child: const Text(
                            'Track Details',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/adminaction');
                          },
                          child: const Text(
                            'Take Action',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(1, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: GestureDetector(
                    onTap: (){ },
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            child: Icon(Icons.person,
                              color: Colors.black,),

                          ),

                          Text ("Rakesh"),



                        ],
                      ),
                      title:  Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        //padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Project:- BC & PC"),
                            Text("NEED INFO",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          ],
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ticket No- 1111"),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: 320,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(" Created Date: 25/10/2022",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                Text(" | Time: 3:00 PM"),

                              ],
                            ),
                          ),
                          const SizedBox(height:9.0),



                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            //padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description:-",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                                Text("How to Regsiter on this app & How to upload a screenshot",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,

                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),


                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/assign');
                          },
                          child: const Text(
                            'Assign',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/addquery');
                          },
                          child: const Text(
                            'Track Details',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      width: 170.0,
                      height: 35.0,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textStyle: const TextStyle(fontSize: 19)),
                          onPressed: () {
                            Navigator.pushNamed(context,'/action');
                          },
                          child: const Text(
                            'Take Action',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
