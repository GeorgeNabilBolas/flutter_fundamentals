import 'package:flutter_bloc/flutter_bloc.dart';

class SearchingBloc extends Cubit<bool> {
  SearchingBloc() : super(false);
  void onPressed() => emit(!state);
}
