import 'package:zad/core/constants.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/core/helper/shared_preferences_service.dart';
import 'package:zad/features/auth/data/model/user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getCachedUser();
  Future<void> clearCachedUser();
  Future<void> cacheUserToken(String token);
  Future<String?> getCachedUserToken();
  Future<void> clearCachedUserToken();
  Future<void> cachedUserRole(String role);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<void> cacheUser(UserModel user) async {
    await HiveHelper.putData(
      boxName: Constants.userBox,
      key: Constants.userHiveKey,
      value: user,
    );
  }

  @override
  Future<void> cacheUserToken(String token) async {
    await SharedPreferencesService.saveData(
      key: Constants.tokeneKey,
      value: token,
    );
  }

  @override
  Future<void> clearCachedUser() async {
    await HiveHelper.deleteData(
      boxName: Constants.userBox,
      key: Constants.userHiveKey,
    );
  }

  @override
  Future<void> clearCachedUserToken() async {
    await SharedPreferencesService.removeData(key: Constants.tokeneKey);
  }

  @override
  Future<UserModel?> getCachedUser() async {
    final user = await HiveHelper.getData(
      boxName: Constants.userBox,
      key: Constants.userHiveKey,
    );
    return user;
  }

  @override
  Future<String> getCachedUserToken() async {
    var token = await SharedPreferencesService.getData(
      key: Constants.tokeneKey,
    );

    return token;
  }

  @override
  Future<void> cachedUserRole(String role) {
    return SharedPreferencesService.saveData(
      key: Constants.userRoleKey,
      value: role,
    );
  }
}
