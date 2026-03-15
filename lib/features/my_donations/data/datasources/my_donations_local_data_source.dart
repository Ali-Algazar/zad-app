import 'package:zad/core/constants.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/features/my_donations/data/model/donation_model.dart';

abstract class MyDonationsLocalDataSource {
  Future<void> cacheMyDonations(List<DonationModel> myDonationsModel);
  Future<List<DonationModel>> getCachedMyDonations();
}

class MyDonationsLocalDataSourceImpl implements MyDonationsLocalDataSource {
  @override
  Future<void> cacheMyDonations(List<DonationModel> myDonationsModel) async {
    for (var donation in myDonationsModel) {
      await HiveHelper.putData(
        boxName: Constants.myDonationsBox,
        key: donation.id,
        value: donation,
      );
    }
  }

  @override
  Future<List<DonationModel>> getCachedMyDonations() async {
    final donations = await HiveHelper.getAllValues(Constants.myDonationsBox);
    return donations.cast<DonationModel>();
  }
}
