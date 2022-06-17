import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/widget/main/fake_data.dart';

part 'catalog_item_pos_state.dart';
part 'catalog_item_pos_cubit.freezed.dart';

class CatalogItemPosCubit extends Cubit<CatalogItemPosState> {
  CatalogItemPosCubit() : super(CatalogItemPosState.initial());
}
