import 'package:equatable/equatable.dart';

class DjamoTipEntity extends Equatable{
  final String title;
  final String subtitle;
  final String illustrationLink;

  const DjamoTipEntity({required this.title, required this.subtitle, required this.illustrationLink});

  @override
  List<Object?> get props => [title, subtitle, illustrationLink];
}