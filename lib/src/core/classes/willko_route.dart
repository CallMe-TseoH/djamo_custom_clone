import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WillkoRoute extends Equatable{
	final String name;
	final Widget page;
	final Bindings? binding;
	final int? index;

  const WillkoRoute({required this.name, required this.page, this.binding, this.index});

  @override
  // TODO: implement props
  List<Object?> get props => [name, page, index];

}
