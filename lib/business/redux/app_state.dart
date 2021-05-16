import 'package:built_value/built_value.dart';
import 'package:myplants/business/redux/models/plant_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @nullable
  @BuiltValueField(wireName: 'plantState')
  PlantState get plantState;

  AppState._();
  
  factory AppState.initialState() => AppState(
        (AppStateBuilder b) => b.._plantState = PlantState.initialState(),
      );

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.copyWith({
    PlantState plantState,
  }) {
    return AppState(
      (AppStateBuilder b) => b.._plantState = PlantState.initialState(),
    );
  }

  AppState copy() => AppState.copyWith(
        plantState: this.plantState,
      );
}
