/// Lesson 14 — Constructors
///
/// Different ways to initialize objects in Dart.

void main() {
  // Short-hand constructor
  var p1 = Point(3, 4);
  print('Point: (${p1.x}, ${p1.y})');

  // Named constructor
  var origin = Point.origin();
  print('Origin: (${origin.x}, ${origin.y})');

  // Named constructor with values
  var fromJson = Point.fromJson({'x': 10, 'y': 20});
  print('From JSON: (${fromJson.x}, ${fromJson.y})');

  // Distance
  print('Distance from origin: ${p1.distanceFromOrigin.toStringAsFixed(2)}');
}

/// A class demonstrating different constructor types.
class Point {
  double x;
  double y;

  // Short-hand constructor using this.
  Point(this.x, this.y);

  // Named constructor — creates a point at (0, 0)
  Point.origin()
      : x = 0,
        y = 0;

  // Named constructor — creates a point from a Map
  Point.fromJson(Map<String, double> json)
      : x = json['x'] ?? 0,
        y = json['y'] ?? 0;

  // Getter
  double get distanceFromOrigin {
    return (x * x + y * y);
  }
}
