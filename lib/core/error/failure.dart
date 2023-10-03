import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  String reason;
  String where;

  Failure(this.reason, this.where);

  @override
  List<Object?> get props => [reason, where];
}


