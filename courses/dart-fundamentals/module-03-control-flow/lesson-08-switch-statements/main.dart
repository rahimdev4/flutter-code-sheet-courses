/// Lesson 08 — Switch Statements
///
/// Using switch to match a value against multiple cases.

void main() {
  String day = 'Wednesday';

  print('📅 Today is $day');

  switch (day) {
    case 'Monday':
      print('💪 Start of the work week!');
      break;
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
      print('📚 Midweek — keep going!');
      break;
    case 'Friday':
      print('🎉 TGIF! Almost weekend!');
      break;
    case 'Saturday':
    case 'Sunday':
      print('🏖 Weekend! Time to relax.');
      break;
    default:
      print('❓ Unknown day.');
  }
}
