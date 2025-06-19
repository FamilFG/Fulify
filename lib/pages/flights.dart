import 'package:flutter/material.dart';

class Flights extends StatelessWidget {
  const Flights({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> flights = [
      {
        'route': 'Baku → Istanbul',
        'date': 'May 15, 14:30 - 17:30',
        'price': '\$120',
      },
      {
        'route': 'Baku → Dubai',
        'date': 'May 18, 09:00 - 13:20',
        'price': '\$150',
      },
      {
        'route': 'Baku → Tbilisi',
        'date': 'May 20, 12:15 - 15:30',
        'price': '\$80',
      },
      {
        'route': 'Baku → London',
        'date': 'May 22, 06:45 - 10:00',
        'price': '\$300',
      },
      {
        'route': 'Baku → Paris',
        'date': 'May 25, 17:00 - 22:00',
        'price': '\$280',
      },
      {
        'route': 'Baku → Moscow',
        'date': 'May 28, 08:00 - 12:00',
        'price': '\$200',
      },
      {
        'route': 'Baku → New York',
        'date': 'June 1, 10:30 - 14:45',
        'price': '\$450',
      },
      {
        'route': 'Baku → Cairo',
        'date': 'June 3, 16:30 - 18:45',
        'price': '\$190',
      },
      {
        'route': 'Baku → Berlin',
        'date': 'June 5, 07:00 - 09:15',
        'price': '\$210',
      },
      {
        'route': 'Baku → Milan',
        'date': 'June 10, 11:45 - 14:30',
        'price': '\$250',
      },
      {
        'route': 'Baku → Rome',
        'date': 'June 12, 15:00 - 18:30',
        'price': '\$230',
      },
      {
        'route': 'Baku → Kuala Lumpur',
        'date': 'June 15, 21:00 - 05:30 (next day)',
        'price': '\$350',
      },
      {
        'route': 'Baku → Sydney',
        'date': 'June 17, 13:30 - 22:00',
        'price': '\$800',
      },
      {
        'route': 'Baku → Tokyo',
        'date': 'June 20, 07:00 - 14:15',
        'price': '\$650',
      },
      {
        'route': 'Baku → Bangkok',
        'date': 'June 25, 23:00 - 06:45 (next day)',
        'price': '\$300',
      },
      {
        'route': 'Baku → Singapore',
        'date': 'June 28, 17:15 - 22:30',
        'price': '\$320',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "FLIGHTS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        toolbarHeight: 40,
        backgroundColor: Colors.blueGrey[300],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: flights.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          flights[index]['route']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          flights[index]['date']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          flights[index]['price']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: const Text("Book Ticket"),
                                content: const Text(
                                  "You have selected this flight.",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("OK"),
                                  ),
                                ],
                              ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 1, 101, 148),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Buy Ticket",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
