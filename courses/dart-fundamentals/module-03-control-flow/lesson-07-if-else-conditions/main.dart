/// Lesson 07 — If/Else Conditions
///
/// Making decisions based on conditions.

void main() {
  int temperature = 28;

  print('🌡 Temperature: $temperature°C');

  if (temperature >= 35) {
    print('🔥 It\'s very hot! Stay hydrated.');
  } else if (temperature >= 25) {
    print('☀️ It\'s warm and pleasant.');
  } else if (temperature >= 15) {
    print('🌤 It\'s cool. Grab a light jacket.');
  } else {
    print('🥶 It\'s cold! Wear warm clothes.');
  }

  // Checking multiple conditions
  bool isWeekend = true;
  bool isRaining = false;

  print('');
  if (isWeekend && !isRaining) {
    print('🏖 Great day for outdoor activities!');
  } else if (isWeekend && isRaining) {
    print('🎬 Movie day at home!');
  } else {
    print('💼 It\'s a workday.');
  }
}
