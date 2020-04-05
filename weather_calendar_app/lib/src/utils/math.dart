import 'dart:math';

num integerInRange(Random source, int start, int end) {
  return (source.nextDouble() * (end - start) + start).toInt();
}
