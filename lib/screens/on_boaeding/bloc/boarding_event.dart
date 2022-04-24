part of 'boarding_bloc.dart';

abstract class BoardingEvent extends Equatable {
  const BoardingEvent();
}

class ChanePageEvent extends BoardingEvent{
  int page ;
  ChanePageEvent(this.page);
  @override
  List<Object?> get props => [page];
}

class NextPageEvent extends BoardingEvent{
  PageController controller ;
  BuildContext context;
  NextPageEvent(this.controller, this.context);
  @override
  List<Object?> get props => [controller,context];

}

class ChangeLangEvent extends BoardingEvent{
  BuildContext context ;
  ChangeLangEvent(this.context);
  @override
  List<Object?> get props => [context];

}
