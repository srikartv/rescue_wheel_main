import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Show alert dialog without location fetching
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Location Confirmation'),
                    content: const Text('Are you sure you want to request emergency assistance?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Simulate emergency call (placeholder)
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Emergency Confirmed'),
                              content: const Text('Help is on the way'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                        child: const Text('Request'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Request Emergency Assistance'),
            ),
          ],
        ),
      ),
    );
  }
}

