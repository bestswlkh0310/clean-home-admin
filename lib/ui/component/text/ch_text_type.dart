enum ChTextType {
  title,
  body,
  label
}

extension ChTextTypeExtension on ChTextType {
  double get textSize {
    switch (this) {
      case ChTextType.title:
        return 20;
      case ChTextType.body:
        return 16;
      case ChTextType.label:
        return 12;
    }
  }
}