import 'package:flutter/material.dart';
import 'package:perpus_mobile/screen/profile.dart';

class BorrowPage extends StatefulWidget {
  const BorrowPage({Key? key}) : super(key: key);

  @override
  State<BorrowPage> createState() => _BorrowPageState();
}

class _BorrowPageState extends State<BorrowPage> {
  final List<String> bookImages = [
    "https://marketplace.canva.com/EAFPHUaBrFc/1/0/1003w/canva-black-and-white-modern-alone-story-book-cover-QHBKwQnsgzs.jpg",
    "https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg",
    "https://marketplace.canva.com/EAFtFDV7Ktg/1/0/1003w/canva-biru-hijau-ilustrasi-novel-sampul-buku-3j1ZL8dVlxo.jpg",
    "https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg",
  ];

  final List<String> bookTitles = [
    "Naruto",
    "Soul",
    "Jejak Cinta",
    "Hide and Seek",
  ];

  final List<String> lastReadImages = [
    "https://marketplace.canva.com/EAFtFDV7Ktg/1/0/1003w/canva-biru-hijau-ilustrasi-novel-sampul-buku-3j1ZL8dVlxo.jpg",
    "https://marketplace.canva.com/EAFf0E5urqk/1/0/1003w/canva-blue-and-green-surreal-fiction-book-cover-53S3IzrNxvY.jpg",
    "https://marketplace.canva.com/EAFPHUaBrFc/1/0/1003w/canva-black-and-white-modern-alone-story-book-cover-QHBKwQnsgzs.jpg",
    "https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg",
  ];

  final List<String> lastReadTitles = [
    "Jejak Cinta",
    "Hide and Seek",
    "Alone",
    "Soul",
  ];

  void _navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3ED),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Borrow List",
                    style: TextStyle(fontFamily: "Montserrat", fontSize: 20),
                  ),
                  InkWell(
                    onTap: _navigateToProfile,
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/gwe.jpg"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Processing",
                    style: TextStyle(fontFamily: "Montserrat", fontSize: 15),
                  ),
                  Icon(Icons.arrow_forward_outlined, size: 25),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bookImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 25),
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(bookImages[index]),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          bookTitles[index],
                          style: const TextStyle(
                              fontFamily: "Montserrat", fontSize: 15),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Divider(height: 3, color: Color(0xffDAAA63)),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Canceled",
                style: TextStyle(
                    fontFamily: "Montserrat", fontSize: 15, color: Colors.red),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    lastReadImages.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 150,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          NetworkImage(lastReadImages[index]),
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      lastReadTitles[index],
                                      style: const TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      'Canceled',
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
