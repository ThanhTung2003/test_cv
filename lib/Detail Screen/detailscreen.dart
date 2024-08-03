import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imagePath;
  final String name;
  final String address;
  final String distance;

  const DetailScreen({
    super.key,
    required this.imagePath,
    required this.name,
    required this.address,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    imagePath,
                    height: screenHeight / 2.8,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        address,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(
                            Icons.bed,
                            color: Colors.black,
                          ),
                          Text(
                            " 6 bedroom  ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.bathtub),
                          Text(
                            " 4 bathroom  ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 16,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: IconButton(
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 16,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.bookmark, color: Colors.white),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... Show More ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: const AssetImage('assets/avata.png'),
                  backgroundColor: Colors.grey.shade300,
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thanh Tung',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Owner',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.lightBlueAccent,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.lightBlueAccent,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 150, // Chiều cao của phần gallery
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/inhome1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/inhome2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/inhome3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/inhome4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: screenHeight / 4, // Chiều cao bằng 1/4 màn hình
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/inhome4.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey
                                .withOpacity(0.6), // Màu xám bao quanh giá
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                  fontSize: 16,

                                  color: Colors
                                      .white, // Màu chữ cho phù hợp với nền
                                ),
                              ),
                              Text(
                                'Rp. 2.500.000.000/Year',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .white, // Màu chữ cho phù hợp với nền
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Thực hiện hành động khi nút được nhấn
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.lightBlueAccent, // Màu nền của nút
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                          ),
                          child: const Text(
                            'Rent Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
