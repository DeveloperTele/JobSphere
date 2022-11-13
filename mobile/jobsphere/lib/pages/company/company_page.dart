import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/pages/company/google_map_page.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 260,
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Image.asset('assets/images/company_profile.jpeg',
                    fit: BoxFit.cover,
                  ),
                  // child: const Image(
                  //   image: AssetImage('assets/images/company_profile.jpeg'),
                  // ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 6.0),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: const Offset(0.0, 2.0), //(x,y)
                            blurRadius: 2.0,
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: ImageIcon(
                          AssetImage("lib/assets/images/backicon2.png"),
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   top: 30,
                //   right: 30,
                //   child: InkWell(
                //     onTap: () {
                //       setState(() {
                //         if (!widget.selectedHouse.faved) {
                //           context
                //               .read<FavoritesChangeNotifier>()
                //               .addItem(widget.selectedHouse);
                //         } else {
                //           context
                //               .read<FavoritesChangeNotifier>()
                //               .deleteItem(widget.selectedHouse);
                //         }
                //       });
                //       setState(() {
                //         widget.selectedHouse.faved =
                //         !widget.selectedHouse.faved;
                //       });
                //     },
                //     child: Container(
                //       margin: const EdgeInsets.only(bottom: 6.0),
                //       height: 32,
                //       width: 32,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //         color: Colors.white,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.black.withOpacity(0.25),
                //             offset: const Offset(0.0, 2.0), //(x,y)
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: !widget.selectedHouse.faved
                //           ? const Padding(
                //         padding: EdgeInsets.all(2.0),
                //         child: ImageIcon(
                //           AssetImage(
                //             "lib/assets/images/favicon3.png",
                //           ),
                //           color: Colors.black,
                //         ),
                //       )
                //           : const Padding(
                //         padding: EdgeInsets.all(2.0),
                //         child: ImageIcon(
                //           AssetImage(
                //               "lib/assets/images/favicon4.png"),
                //           color: Color(0xffFB6161),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Title',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'location',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 16),
                    ),
                    Text(
                      'price',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/profile.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Xsphere  · Hledan',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "The owner",
                              style: TextStyle(color: Color(0xffFB6161)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 72,
                            width: 64,
                            margin: const EdgeInsets.only(bottom: 6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ImageIcon(
                                AssetImage(
                                    "lib/assets/images/bedroomicon2.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('4',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "Bedrooms",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 72,
                            width: 64,
                            margin: const EdgeInsets.only(bottom: 6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ImageIcon(AssetImage(
                                  "lib/assets/images/livingroomicon2.png")),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('7',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "Livingroom",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 72,
                            width: 64,
                            margin: const EdgeInsets.only(bottom: 6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ImageIcon(AssetImage(
                                  "lib/assets/images/kitchenicon2.png")),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('99',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "Kitchen",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 72,
                            width: 64,
                            margin: const EdgeInsets.only(bottom: 6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: ImageIcon(AssetImage(
                                  "lib/assets/images/bathroomicon2.png")),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('67',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            "Bathrooms",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Description",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                      style: TextStyle(fontWeight: FontWeight.w300),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("Location",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                    const SizedBox(
                      height: 4,
                    ),
                    Tooltip(
                      message: 'double tap to open',
                      preferBelow: false,
                      child: InkWell(
                        onDoubleTap: () => Get.to(const GoogleMapPage()),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width - 60,
                          decoration: const BoxDecoration(color: Colors.green),
                          child: const Image(
                              image: AssetImage(
                                  "lib/assets/images/googlemaps.png"
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
