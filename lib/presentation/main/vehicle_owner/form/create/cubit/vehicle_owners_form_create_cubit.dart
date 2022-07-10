import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';
import 'package:pos/domain/vehicle_owner/object_value/object_value.dart';
import 'package:pos/domain/vehicle_owner/object_value/vehicle_owner_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:uuid/uuid.dart';

part 'vehicle_owners_form_create_state.dart';
part 'vehicle_owners_form_create_cubit.freezed.dart';

class VehicleOwnerFormCreateCubit extends Cubit<VehicleOwnerFormCreateState> {
  final VehicleOwnerListCubit vehicleOwnerListCubit;
  @override
  VehicleOwnerFormCreateCubit({required this.vehicleOwnerListCubit})
      : _vehicleOwnerListCubit = vehicleOwnerListCubit,
        super(VehicleOwnerFormCreateState.initial());

  final VehicleOwnerListCubit _vehicleOwnerListCubit;

  void onCreateVehicleOwnerNameChanged(String v) {
    emit(state.copyWith(
      createVehicleOwner:
          state.createVehicleOwner.copyWith(name: CreateVehicleOwnerName(v)),
    ));
  }

  void onCreateVehicleOwnerPhoneNumberChanged(String v) {
    emit(state.copyWith(
      createVehicleOwner: state.createVehicleOwner
          .copyWith(phoneNumber: CreateVehicleOwnerPhoneNumber(v)),
    ));
  }

  void onCreateVehicleOwnerEmailChanged(String v) {
    emit(state.copyWith(
      createVehicleOwner:
          state.createVehicleOwner.copyWith(email: CreateVehicleOwnerEmail(v)),
    ));
  }

  void onCreateVehicleOwnerIdNumberChanged(String v) {
    emit(state.copyWith(
      createVehicleOwner: state.createVehicleOwner
          .copyWith(idNumber: CreateVehicleOwnerIdNumber(v)),
    ));
  }

  void onCreateVehicleOwnerAddressChanged(String v) {
    emit(state.copyWith(
      createVehicleOwner: state.createVehicleOwner
          .copyWith(address: CreateVehicleOwnerAddress(v)),
    ));
  }

  onAccountIdChanged(int? accountId) {
    emit(state.copyWith(
      createVehicleOwner: state.createVehicleOwner
          .copyWith(accountId: CreateVehicleOwnerAccountId(accountId)),
    ));
  }

  onCreate() async {
    if (state.createVehicleOwner.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      final id = _vehicleOwnerListCubit.state.vehicleOwners == null
          ? 1
          : _vehicleOwnerListCubit.state.vehicleOwners!.last.id + 1;
      VehicleOwner r =
          VehicleOwner.createVehicleOwner(id, state.createVehicleOwner);
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _vehicleOwnerListCubit.onAddVehicleOwner(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
      // }
    }
  }

  onInitial() {
    emit(VehicleOwnerFormCreateState.initial());
  }
}
