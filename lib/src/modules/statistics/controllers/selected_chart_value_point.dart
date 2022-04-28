
part of 'statistics_controller.dart';

class _SelectedChartValuePoint extends Equatable{
  final double x;
  final double y;

  const _SelectedChartValuePoint({required this.x, required this.y});

  @override
  List<Object?> get props => [x, y];

  _SelectedChartValuePoint copyWith({required double x, required double y}){
    return _SelectedChartValuePoint(x: x, y: y);
  }
}
