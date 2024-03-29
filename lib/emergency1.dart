import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency'),
        backgroundColor: const Color.fromRGBO(255, 32, 78, 1), // Maroon
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Background map (replace with actual map integration)
          Image.asset('assests/images/img.jpg'),
          Container(
            color: Colors.grey[200],
            child: Center(
              child: Icon(Icons.location_on_outlined, size: 50.0, color: Colors.blue),
            ),
          ),
          // Service selection panel (simplified for this example)
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Ambulance button
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Booking Confirmed'),
                            content: const Text('Ambulance is on the way'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                        // Replace with actual ambulance booking logic
                        print('Ambulance booking initiated');
                      },
                      child: const Text('Ambulance'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        textStyle: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                    // Medibike button
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Booking Confirmed'),
                            content: const Text('Medibike is on the way'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                        // Replace with actual medibike booking logic
                        print('Medibike booking initiated');
                      },
                      child: const Text('Medibike'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 87, 175, 76),
                        textStyle: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                    // Cab button (can be hidden for emergency use case)
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Booking Confirmed'),
                            content: const Text('Cab is on the way'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                        // Replace with actual cab booking logic
                        print('Cab booking initiated');
                      },
                      child: const Text('Cab'),
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
