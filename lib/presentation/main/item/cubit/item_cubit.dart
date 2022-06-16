import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/widget/main/fake_data.dart';

part 'item_state.dart';
part 'item_cubit.freezed.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemState.initial());
}
