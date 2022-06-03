import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/home/data/repositories/home_repository.dart';
import 'package:project_base/src/home/domain/models/user_model.dart';
import 'package:project_base/src/shared/types/request_status.dart';
import 'package:project_base/src/shared/types/result.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_usecase.freezed.dart';

class HomeUsecase extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;
  HomeUsecase({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(HomeState.initial()) {
    on<Logout>(_onLogout);
    on<RequestUsers>(_onRequestUsers);
  }

  void _onLogout(
    Logout event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(flow: const SignOut()));
  }

  Future<void> _onRequestUsers(
    RequestUsers event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(userListRequestStatus: const Loading()));
    Result users = await _homeRepository.getUsers();

    users.handle(
      onSuccess: (data) {
        emit(state.copyWith(
          userListRequestStatus: Succeeded(data),
        ));
      },
      onFailure: (error) {
        emit(state.copyWith(
          userListRequestStatus: Failed(error),
        ));
      },
    );
  }
}
