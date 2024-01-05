import 'dart:ui';

enum CHTextType {
  title,
  subtitle,
  body,
  label
}

extension TextStyleExtension on CHTextType {
  double get fontSize {
    return switch (this) {
      CHTextType.title => 24,
      CHTextType.subtitle => 20,
      CHTextType.body => 16,
      CHTextType.label => 12
    };
  }

  FontWeight get fontWeight {
    return switch (this) {
      CHTextType.title => FontWeight.bold,
      CHTextType.subtitle => FontWeight.bold,
      CHTextType.body => FontWeight.normal,
      CHTextType.label => FontWeight.normal,
    };
  }
}
