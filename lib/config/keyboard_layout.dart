class ButtonConfig {
  final String text;
  final String? type;
  final String? color;

  const ButtonConfig({
    required this.text,
    this.type,
    this.color,
  });

  Map<String, dynamic> toMap() => {
        'text': text,
        if (type != null) 'type': type,
        if (color != null) 'color': color,
      };
}

abstract final class KeyboardLayout {
  static const List<List<ButtonConfig>> buttonRows = [
    [
      ButtonConfig(text: 'AC', type: 'big', color: 'dark'),
      ButtonConfig(text: '%', color: 'dark'),
      ButtonConfig(text: '/', type: 'operation'),
    ],
    [
      ButtonConfig(text: '7'),
      ButtonConfig(text: '8'),
      ButtonConfig(text: '9'),
      ButtonConfig(text: 'x', type: 'operation'),
    ],
    [
      ButtonConfig(text: '4'),
      ButtonConfig(text: '5'),
      ButtonConfig(text: '6'),
      ButtonConfig(text: '-', type: 'operation'),
    ],
    [
      ButtonConfig(text: '1'),
      ButtonConfig(text: '2'),
      ButtonConfig(text: '3'),
      ButtonConfig(text: '+', type: 'operation'),
    ],
    [
      ButtonConfig(text: '0', type: 'big'),
      ButtonConfig(text: '.'),
      ButtonConfig(text: '=', type: 'operation'),
    ],
  ];
}
