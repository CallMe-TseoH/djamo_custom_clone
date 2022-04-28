import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String logoLink;
  final String description;
  final String link;

  const Contact({required this.logoLink, required this.description, required this.link});

  @override
  List<Object?> get props => [logoLink, description, link];
}
