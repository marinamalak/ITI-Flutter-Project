import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView(children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Row(children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.9f50b5a313af60b2f20c86afac116835?rik=KsRoR%2ffXJ%2brZWA&riu=http%3a%2f%2ficon-library.com%2fimages%2fno-profile-picture-icon%2fno-profile-picture-icon-15.jpg&ehk=pPbvrx2x8%2bTYo5rW3%2bixebN91Ui8y3%2fdyVIA8kIBueU%3d&risl=&pid=ImgRaw&r=0',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, bottom: 10, right: 10, top: 10),
                          child: Text(
                            "User",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, bottom: 10, right: 20, top: 10),
                          child: Text(
                            "user.112@examle.com",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: IconButton(
                              icon: const Icon(Icons.location_on_outlined,
                                  color: Colors.cyan),
                              onPressed: () {},
                            )),
                        const Text(
                          "Shipping Address",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20, left: 10),
                            child: Icon(Icons.payment_sharp,
                                color: Colors.lightGreen),
                          ),
                          Text(
                            "Payment Method",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 20, left: 10),
                            child: Icon(
                              Icons.menu_sharp,
                              color: Colors.amber,
                            )),
                        Text(
                          "Order History",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(right: 20, left: 10),
                            child: Icon(
                              Icons.logout,
                              color: Colors.cyan,
                            )),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Logout",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
