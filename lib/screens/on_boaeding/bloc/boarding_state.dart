part of 'boarding_bloc.dart';

abstract class BoardingState extends Equatable {
  const BoardingState();
}

class BoardingInitial extends BoardingState {
  @override
  List<Object> get props => [];
}

class ChangeBoardPageState extends BoardingState{

  int page ;
  ChangeBoardPageState(this.page);
  @override
  List<Object?> get props => [page];
}

