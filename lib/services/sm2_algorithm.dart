// lib/algorithms/sm2_algorithm.dart

class Sm2Algorithm {
  int interval;
  int repetitions;
  double easeFactor;

  Sm2Algorithm({
    required this.interval,
    required this.repetitions,
    required this.easeFactor,
  });

  Sm2Algorithm calculate(int quality) {
    if (quality < 3) {
      repetitions = 0;
      interval = 1;
    } else {
      if (repetitions == 0) {
        interval = 1;
      } else if (repetitions == 1) {
        interval = 6;
      } else {
        interval = (interval * easeFactor).round();
      }
      repetitions += 1;
    }

    easeFactor = easeFactor + 0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02);
    if (easeFactor < 1.3) {
      easeFactor = 1.3;
    }

    return this;
  }
}
