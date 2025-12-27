class ChartSeries {
  final List<double> bars;
  final List<double> line;
  final List<String> labels;

  ChartSeries({
    required this.bars,
    required this.line,
    required this.labels,
  });
}

ChartSeries buildSeriesByFrequency({
  required int frequency,
  required List<double> data,
  required List<String> labels,
  required double target,
}) {
  switch (frequency) {
    case 0: // WEEKLY
      return _directSeries(data, labels, target);

    case 1: // MONTHLY
      return _directSeries(data, labels, target);

    case 2: // QUARTERLY
      return _directSeries(data, labels, target);

    case 3: // YEARLY
      return _directSeries(data, labels, target);

    case 4: // DAILY → SUMMARIZE TO WEEKLY
      return _directSeries(data, labels, target);

    default:
      return _directSeries(data, labels, target);
  }
}

ChartSeries _directSeries(
  List<double> data,
  List<String> labels,
  double target,
) {
  return ChartSeries(
    bars: data,
    labels: labels,
    line: List.filled(data.length, target),
  );
}

ChartSeries _dailyToWeekly(
  List<double> data,
  List<String> labels,
  double target,
) {
  final List<double> bars = [];
  final List<String> xLabels = [];

  for (int i = 0; i < data.length; i += 7) {
    final chunk = data.skip(i).take(7).toList();
    final valid = chunk.where((v) => v > 0).toList();

    final avg =
        valid.isEmpty ? 0 : valid.reduce((a, b) => a + b) / valid.length;

    bars.add(avg.toDouble());
    xLabels.add(labels[i]); // start of week
  }

  return ChartSeries(
    bars: bars,
    labels: xLabels,
    line: List.filled(bars.length, target),
  );
}
