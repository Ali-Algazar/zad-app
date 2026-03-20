import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zad/core/widgets/custom_container.dart';

class OrderItemShimmer extends StatelessWidget {
  const OrderItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Container(width: 80, height: 14, color: Colors.white),
                          const SizedBox(width: 4),
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          Container(width: 60, height: 14, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 150,
                            height: 12,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
