import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontSize: 100.0,
);
const kDescTextStyle = TextStyle(
  fontSize: 30.0,
);

const kMessageTextStyle = TextStyle(
  fontSize: 30.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 90.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);

const kCloudy = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF35D6ED),
    Color(0xFF65DDEF),
    Color(0xFF7AE5F5),
    Color(0xFF97EBF4),
    Color(0xFFC9F6FF)
  ],
  stops: [0.2, 0.4, 0.6, 0.9, 1],
);

const kSunny = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.yellow, Colors.orange, Colors.redAccent],
  stops: [0.2, 0.5, 0.9],
);

const kRainy = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFeeeeee),
    Color(0xFF9e9e9e),
    Color(0xFF400bdbdbd),
    Color(0xFF300e0e0e0)
  ],
  stops: [0.1, 0.4, 0.9, 1.2],
);
