import 'package:flutter/material.dart';
import 'package:fulifyapp/pages/all_flights.dart';
import 'package:fulifyapp/pages/all_hotels.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> hotels = [
      {
        'name': 'Hilton Baku',
        'location': 'Baku, Azerbaijan',
        'price': '\$110/night',
        'image': 'assets/images/hilton.jpg',
      },
      {
        'name': 'Fairmont Flame Towers',
        'location': 'Baku, Azerbaijan',
        'price': '\$140/night',
        'image': 'assets/images/flame.jpg',
      },
      {
        'name': 'Shah Palace Hotel',
        'location': 'Old City, Baku',
        'price': '\$90/night',
        'image': 'assets/images/shah.jpg',
      },
    ];

    final List<Map<String, String>> tickets = [
      {
        'route': 'Baku → Istanbul',
        'date': 'May 15, 14:30 - 17:30',
        'price': '\$120',
        'fromFlag': 'assets/images/aze.png',
        'toFlag': 'assets/images/tur.png',
      },
      {
        'route': 'Baku → Dubai',
        'date': 'May 18, 09:00 - 13:20',
        'price': '\$150',
        'fromFlag': 'assets/images/aze.png',
        'toFlag': 'assets/images/arab.png',
      },
      {
        'route': 'Baku → Tbilisi',
        'date': 'May 20, 12:15 - 15:30',
        'price': '\$80',
        'fromFlag': 'assets/images/aze.png',
        'toFlag': 'assets/images/geo.png',
      },
      {
        'route': 'Baku → London',
        'date': 'May 22, 06:45 - 10:00',
        'price': '\$300',
        'fromFlag': 'assets/images/aze.png',
        'toFlag': 'assets/images/uk.png',
      },
      {
        'route': 'Baku → Paris',
        'date': 'May 25, 17:00 - 22:00',
        'price': '\$280',
        'fromFlag': 'assets/images/aze.png',
        'toFlag': 'assets/images/fra.png',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Good Morning",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff00293C).withOpacity(0.7),
                  ),
                ),
                Image.asset('assets/images/hand.png', width: 35, height: 35),
              ],
            ),
            const Text(
              "Buy tickets, book hotels",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff00293C),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade400, // Цвет границы
                  width: 1.0, // Ширина границы
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search for flights...",
                  prefixIcon: Icon(Icons.search, color: Color(0xff00293C)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Available flights",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00293C),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Flights()),
                    );
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 101, 148),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      tickets.map((ticket) {
                        return Container(
                          width: 250,
                          margin: const EdgeInsets.only(right: 15),
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFF6F6F6),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(ticket['fromFlag']!, width: 24),
                                  const SizedBox(width: 8),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black87,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(ticket['toFlag']!, width: 24),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                ticket['route']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                ticket['date']!,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                ticket['price']!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor:
                                            Colors.lightBlueAccent[100],
                                        foregroundColor: Colors.black87,
                                        side: BorderSide(
                                          color: Colors.grey.shade400,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: const Text("Buy"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.black87,
                                        side: BorderSide(
                                          color: Colors.grey.shade400,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: const Text("More"),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Available hotels",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff00293C),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AllHotels()),
                    );
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 101, 148),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 290,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      hotels.map((hotel) {
                        return Container(
                          width: 240,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFF6F6F6),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  hotel['image']!,
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotel['name']!,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      hotel['location']!,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      hotel['price']!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                          child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.lightBlueAccent[100],
                                              foregroundColor: Colors.black87,
                                              side: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: const Text("Book"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Colors.black87,
                                              side: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: const Text("More"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
