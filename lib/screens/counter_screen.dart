import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  bool _isLoading = true;
  
  @override
  void initState() {
    super.initState();
    // Use Future.microtask to ensure the widget is mounted before loading
    Future.microtask(() => _loadCounter());
  }

  // Fetches the saved counter value from SharedPreferences
  Future<void> _loadCounter() async {
    try {
      debugPrint('Loading counter value...');
      final prefs = await SharedPreferences.getInstance();
      // Retrieves the value for 'counter', defaulting to 0 if none is found.
      final savedValue = prefs.getInt('counter') ?? 0;
      debugPrint('Loaded counter value: $savedValue');
      
      if (mounted) {
        setState(() {
          _counter = savedValue;
          _isLoading = false;
          debugPrint('UI updated with counter: $_counter');
        });
      }
    } catch (e) {
      debugPrint('Error loading counter: $e');
      if (mounted) {
        // Stop loading even if there's an error
        setState(() => _isLoading = false);
      }
    }
  }

  // Updates the counter value in both the UI state and persistent storage.
  Future<void> _updateCounter(int newValue) async {
    debugPrint('Updating counter to: $newValue');
    // 1. Update UI state immediately for responsiveness
    if (mounted) {
      setState(() {
        _counter = newValue;
        debugPrint('UI updated with new counter: $_counter');
      });
    }
    
    // 2. Persist data in the background
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', newValue);
      debugPrint('Successfully saved counter: $newValue to SharedPreferences');
    } catch (e) {
      debugPrint('Error saving counter: $e');
      // In a real app, you might show a snackbar here to inform the user.
    }
  }

  void _incrementCounter() {
    final newValue = _counter + 1;
    _updateCounter(newValue);
  }

  void _resetCounter() {
    _updateCounter(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
        // Using a primary color from the theme for AppBar
        backgroundColor: Theme.of(context).primaryColor, 
        elevation: 0,
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator() // Show loading spinner while fetching data
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Count:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  // AnimatedSwitcher adds a smooth transition when the counter changes
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      '$_counter',
                      // Key is crucial for AnimatedSwitcher to recognize the change
                      key: ValueKey<int>(_counter), 
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D4037), // Custom deep brown color
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Increment Button
                      ElevatedButton(
                        onPressed: _incrementCounter,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Increment',
                          style: TextStyle(fontSize: 18, color: Color(0xFF8B5A2B)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      // Reset Button
                      OutlinedButton(
                        onPressed: _resetCounter,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF8B5A2B)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Reset',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
