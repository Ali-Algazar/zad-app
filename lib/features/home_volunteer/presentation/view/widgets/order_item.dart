import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/home_volunteer/data/model/donation_with_restaurant_model.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/order_info.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.donationWithRestaurantModel});
  final DonationWithRestaurantModel donationWithRestaurantModel;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF9FAFB),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withValues(alpha: 0.04),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 0),
                    ),
                    BoxShadow(
                      color: Color(0xFF000000).withValues(alpha: 0.04),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: FittedBox(
                  child: Text(
                    getMealCategory(donationWithRestaurantModel.category),
                  ),
                ),
              ),
              16.w,
              Expanded(
                child: OrderInfo(
                  restaurantName:
                      donationWithRestaurantModel.restaurant.fullName,
                  mealsCount:
                      '${donationWithRestaurantModel.quantity} ${donationWithRestaurantModel.unit}',
                  mealType: donationWithRestaurantModel.title,
                  location: donationWithRestaurantModel.address,
                ),
              ),
            ],
          ),
          24.h,
          CustomButton(
            onTap: () {},
            child: Text(
              'أنا لها! (تأكيد الاستلام)',
              style: AppTextStyles.textStyle16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getMealCategory(String category) {
    switch (category) {
      case 'ReadyMeals':
        return '🥙';
      case 'Bakery':
        return '🍞';
      case 'Dairy':
        return '🥛';
      case "Fruits":
        return '🍎';

      default:
        return '🥕';
    }
  }
}
