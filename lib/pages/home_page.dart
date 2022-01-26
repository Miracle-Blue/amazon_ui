import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      /// appBar
      appBar: appBar(),

      /// body
      body: bodyContent(context),

      /// drawer
      drawer: const Drawer(),
    );
  }

  Widget bodyContent(BuildContext context) => SingleChildScrollView(
      child: Column(
        children: [
          /// * location
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                Text(
                  "Deliver to Korea, Republic of",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          /// * reclama
          Container(
            padding: const EdgeInsets.only(right: 10),
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(75),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "We ship 45 million products",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),

          /// * sign in
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sign in for the best experience",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow.shade800,
                      minimumSize: const Size(double.infinity, 50)),

                  /// ! create onPressed function
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),

          /// * dealField
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Deal of the Day",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Image.asset("assets/images/item_7.jpeg"),
                const SizedBox(height: 15),
                const Text(
                  "Up to 31% off APC UPS Battery Back",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                const Text(
                  "\$10.99 - \$79.9",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 5),

          /// * best sellers
          Container(
            height: 420,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Best sellers in Electronics",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 3, bottom: 3),
                          child: Image.asset(
                            "assets/images/item_1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 3, bottom: 3),
                          child: Image.asset(
                            "assets/images/item_3.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 3, top: 3),
                          child: Image.asset(
                            "assets/images/item_3.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 3, top: 3),
                          child: Image.asset(
                            "assets/images/item_4.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),

          /// * top Products
          Container(
            height: 430,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Top products in Camera",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 3, bottom: 3),
                          child: Image.asset(
                            "assets/images/item_1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 3, top: 3),
                          child: Image.asset(
                            "assets/images/item_3.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 3, top: 3),
                          child: Image.asset(
                            "assets/images/item_4.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );

  AppBar appBar() => AppBar(
        backgroundColor: const Color(0xFF018197),
        elevation: 0,
        title: Image.asset(
          "assets/images/amazon_logo.png",
          height: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
        bottom: PreferredSize(
          /// * AppBar Bottom
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1.5,
                color: Colors.grey,
              ),
            ),
            child: TextFormField(
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: "What are you looking for?",
                suffixIcon: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(60.0),
        ),
      );
}
