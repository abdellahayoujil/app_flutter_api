import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'caracters_state.dart';

class CaractersCubit extends Cubit<CaractersState> {
  CaractersCubit() : super(CaractersInitial());
}
