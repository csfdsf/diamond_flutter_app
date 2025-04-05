import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/diamond_model.dart';
import '../data/data.dart';

class FilterState {
  final List<Diamond> filteredDiamonds;
  final Map<String, int> shapeStats;
  final Map<String, int> colorStats;
  final Map<String, int> clarityStats;
  final Map<String, int> labStats;

  FilterState({
    this.filteredDiamonds = const [],
    this.shapeStats = const {},
    this.colorStats = const {},
    this.clarityStats = const {},
    this.labStats = const {},
  });
}


class FilterEvent {
  final double? caratFrom;
  final double? caratTo;
  final String? lab;
  final String? shape;
  final String? color;
  final String? clarity;

  FilterEvent({
    this.caratFrom,
    this.caratTo,
    this.lab,
    this.shape,
    this.color,
    this.clarity,
  });
}


class RemoveDiamondEvent extends FilterEvent {
  final String lotId;
  RemoveDiamondEvent(this.lotId);
}


class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final List<String> removedLotIds = [];

  FilterBloc() : super(FilterState(filteredDiamonds: [])) {
    on<FilterEvent>((event, emit) {
      List<Diamond> results = diamondData.where((diamond) {
        final matchCarat = (event.caratFrom == null || diamond.carat >= event.caratFrom!) &&
            (event.caratTo == null || diamond.carat <= event.caratTo!);
        final matchLab = event.lab == null || diamond.lab == event.lab;
        final matchShape = event.shape == null || diamond.shape == event.shape;
        final matchColor = event.color == null || diamond.color == event.color;
        final matchClarity = event.clarity == null || diamond.clarity == event.clarity;

        final isRemoved = removedLotIds.contains(diamond.lotId);

        return matchCarat && matchLab && matchShape && matchColor && matchClarity && !isRemoved;
      }).toList();

      emit(FilterState(filteredDiamonds: results));
    });

    on<RemoveDiamondEvent>((event, emit) {
      removedLotIds.add(event.lotId);
      final updatedList = state.filteredDiamonds.where((d) => d.lotId != event.lotId).toList();
      emit(FilterState(filteredDiamonds: updatedList));
    });
  }
}

