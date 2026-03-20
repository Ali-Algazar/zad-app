import 'package:zad/core/constants.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/features/auth/data/model/user_model.dart';

Future<UserModel> getUserData() async {
  final user = await HiveHelper.getData(
    key: Constants.userHiveKey,
    boxName: Constants.userBox,
  );
  return user;
}
