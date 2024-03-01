enum ForecastLength {
  seven(buttonLabel: '7 Days'),
  max(buttonLabel: 'Max Days');

  final String buttonLabel;

  const ForecastLength({required this.buttonLabel});
}
