import 'package:flutter/material.dart';
import 'package:test_cv/Detail%20Screen/detailscreen.dart';
import 'package:test_cv/Home%20Screen/best_house_card_widget.dart';
import 'package:test_cv/Home%20Screen/house_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    'Jakarta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                  Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(Icons.notifications_outlined, color: Colors.black),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Icon(
                            Icons.brightness_1,
                            color: Colors.red,
                            size: 9.0,
                          )),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search address, or near you',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A8ED9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const FilterRow(),
              const SizedBox(height: 6),
              const Text(
                'Near from you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HouseCard(
                      imagePath: 'assets/home1.jpg',
                      name: 'Dreamsville House',
                      address: 'Jl Sultan Iskandar Muda',
                      distance: '1.8 Km',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailScreen(
                              imagePath: 'assets/home1.jpg',
                              name: 'Dreamsville House',
                              address: 'Jl Sultan Iskandar Muda',
                              distance: '1.8 Km',
                            ),
                          ),
                        );
                      },
                    ),
                    HouseCard(
                      imagePath: 'assets/home2.jpg',
                      name: 'Ascot House',
                      address: 'Jl. Cilandak Tengah',
                      distance: '2.8 km',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailScreen(
                              imagePath: 'assets/home2.jpg',
                              name: 'Ascot House',
                              address: 'Jl. Cilandak Tengah',
                              distance: '2.8 km',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Best for you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(''),
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const BestHouseCard(
                name: 'Orchad House',
                price: 'Rp. 2.500.000.000 / Year',
                bedroom: '6 Bedroom',
                bathroom: '4 Bathroom',
                imagePath: 'assets/home3.jpg',
              ),
              const BestHouseCard(
                name: 'The Hollies House',
                price: 'Rp. 2.000.000.000 / Year',
                bedroom: '5 Bedroom',
                bathroom: '2 Bathroom',
                imagePath: 'assets/home4.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  _FilterRowState createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  String selectedFilter = 'House';

  void _onFilterTap(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterButton(
            text: 'House',
            isSelected: selectedFilter == 'House',
            onTap: () => _onFilterTap('House'),
          ),
          FilterButton(
            text: 'Apartment',
            isSelected: selectedFilter == 'Apartment',
            onTap: () => _onFilterTap('Apartment'),
          ),
          FilterButton(
            text: 'Hotel',
            isSelected: selectedFilter == 'Hotel',
            onTap: () => _onFilterTap('Hotel'),
          ),
          FilterButton(
            text: 'Villa',
            isSelected: selectedFilter == 'Villa',
            onTap: () => _onFilterTap('Villa'),
          ),
          FilterButton(
            text: 'Cottage',
            isSelected: selectedFilter == 'Cottage',
            onTap: () => _onFilterTap('Cottage'),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF0A8ED9) : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
