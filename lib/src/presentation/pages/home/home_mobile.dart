import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../generated/assets.dart';
import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/news_curser.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/auth/user_view_model.dart';
import '../customers/customers.dart';
import '../orders/orders.dart';
import '../products/products.dart';
import '../profile/profile.dart';
import '../salepersons/salepersons.dart';

class HomeMobilePage extends ConsumerStatefulWidget {
  const HomeMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeMobilePage> createState() => _HomeMobilePageState();
}

class _HomeMobilePageState extends ConsumerState<HomeMobilePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      // ref.read(visitsResentViewModelProvider.notifier).load();
      // ref.read(visitsWhatsComingViewModelProvider.notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userViewModelProvider);
    return const CustomAppScaffold(
      isScroll: true,
      appBar: Column(
        children: [
          _HomeHeader(),
        ],
      ),
      body: Column(
        children: [
          _HomeIcons(),
          SizedBox(height: 20),
          CarouselImages(
            images: [],
          ),
        ],
      ),
    );
  }
}

class _HomeHeader extends ConsumerWidget {
  const _HomeHeader({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider);
    return Column(
      children: [
        ListTile(
          onTap: () {
            context.goNamed(ProfilePage.pageName);
          },
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
              border: Border.all(
                width: 1,
                color: const Color(0xffe8e8e8),
              ),
            ),
            child: ClipOval(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: user?.imageUrl ?? '',
              ),
            ),
          ),
          title: Text(
            Localization.of(context).hiName(''),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          subtitle: Text(
            user?.name ?? '',
            // Localization.of(context).welcome,
            maxLines: 1,
            softWrap: true,
            style: context.textTheme.titleSmall?.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          trailing: const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 32,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: context.width / 2,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xff0885D1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'المستهدف الشهري',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '200,000 ر.س',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'FF Shamel Family',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: context.width / 2,
                  decoration: BoxDecoration(
                    color: const Color(0xff0885D1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'العمولة',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '200,000 ر.س',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'FF Shamel Family',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'سحب العمولة',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF0885D1),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF0885D1),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 15.0,
                  percent: 0.8,
                  center: const Text(
                    '80%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  progressColor: const Color(0xff7ad3ff),
                  backgroundColor: const Color(0xff1165b7),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                const SizedBox(height: 10),
                const Column(
                  children: [
                    Text(
                      'المستهدف المحقق',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '150,000 ر.س',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

// class _HomeNews extends ConsumerWidget {
//   const _HomeNews({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//       children: [],
//
//     );
//   }
//
// }

class _HomeIcons extends ConsumerWidget {
  const _HomeIcons({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double _space = 10;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _icon(
              title: "العملاء",
              iconUrl: Assets.iconsCustomers,
              onTap: () {
                context.goNamed(CustomersPage.pageName);
              },
            ),
            const SizedBox(width: _space),
            _icon(
              title: "المنتجات",
              iconUrl: Assets.iconsProducts,
              onTap: () {
                context.goNamed(ProductsPage.pageName);
              },
            ),
            const SizedBox(width: _space),
            _icon(
              title: "الطلبات",
              iconUrl: Assets.iconsOrders,
              onTap: () {
                context.goNamed(OrdersPage.pageName);
              },
            ),
            const SizedBox(width: _space),
            _icon(
              title: "المناديب",
              iconUrl: Assets.iconsSaleperson,
              onTap: () {
                context.goNamed(SalePersonsPage.pageName);
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _icon(title: "الفواتير", iconUrl: Assets.iconsInvoices),
            const SizedBox(width: _space),
            _icon(title: "المستهدفات", iconUrl: Assets.iconsTargets),
            const SizedBox(width: _space),
            _icon(title: "الزيارات", iconUrl: Assets.iconsVisits),
            const SizedBox(width: _space),
            _icon(title: "خطة الزيارات", iconUrl: Assets.iconsVisitsPlans),
          ],
        ),
      ],
    );
  }

  Widget _icon(
      {required String title, required String iconUrl, Function()? onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 110,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: const [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 20,
                offset: Offset(0, 0),
                spreadRadius: 8,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconUrl),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WhatsComingPlaceholder extends StatelessWidget {
  const _WhatsComingPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ResVerticalGap.gap05,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              RoundedSkeleton(width: double.infinity, height: 100, radius: 8),
        ),
      ],
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ResVerticalGap.gap05,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RoundedSkeleton(width: double.infinity, height: 36, radius: 8),
        ),
        ResVerticalGap.gap05,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              RoundedSkeleton(width: double.infinity, height: 120, radius: 8),
        ),
        ResVerticalGap.gap05,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:
              RoundedSkeleton(width: double.infinity, height: 120, radius: 8),
        ),
      ],
    );
  }
}
