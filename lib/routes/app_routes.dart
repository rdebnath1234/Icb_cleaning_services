import 'package:riya_s_application6/presentation/splash_screen/splash_screen.dart';
import 'package:riya_s_application6/presentation/splash_screen/binding/splash_binding.dart';
import 'package:riya_s_application6/presentation/profile_screen/profile_screen.dart';
import 'package:riya_s_application6/presentation/profile_screen/binding/profile_binding.dart';
import 'package:riya_s_application6/presentation/notification_empty_screen/notification_empty_screen.dart';
import 'package:riya_s_application6/presentation/notification_empty_screen/binding/notification_empty_binding.dart';
import 'package:riya_s_application6/presentation/address_screen/address_screen.dart';
import 'package:riya_s_application6/presentation/address_screen/binding/address_binding.dart';
import 'package:riya_s_application6/presentation/wallet_screen/wallet_screen.dart';
import 'package:riya_s_application6/presentation/wallet_screen/binding/wallet_binding.dart';
import 'package:riya_s_application6/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:riya_s_application6/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:riya_s_application6/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:riya_s_application6/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:riya_s_application6/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:riya_s_application6/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:riya_s_application6/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:riya_s_application6/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:riya_s_application6/presentation/verify_code_screen/verify_code_screen.dart';
import 'package:riya_s_application6/presentation/verify_code_screen/binding/verify_code_binding.dart';
import 'package:riya_s_application6/presentation/home_vtwo_container_screen/home_vtwo_container_screen.dart';
import 'package:riya_s_application6/presentation/home_vtwo_container_screen/binding/home_vtwo_container_binding.dart';
import 'package:riya_s_application6/presentation/service_details_screen/service_details_screen.dart';
import 'package:riya_s_application6/presentation/service_details_screen/binding/service_details_binding.dart';
import 'package:riya_s_application6/presentation/date_time_bottom_sheet_screen/date_time_bottom_sheet_screen.dart';
import 'package:riya_s_application6/presentation/date_time_bottom_sheet_screen/binding/date_time_bottom_sheet_binding.dart';
import 'package:riya_s_application6/presentation/address_two_screen/address_two_screen.dart';
import 'package:riya_s_application6/presentation/address_two_screen/binding/address_two_binding.dart';
import 'package:riya_s_application6/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:riya_s_application6/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:riya_s_application6/presentation/booking_confirmed_screen/booking_confirmed_screen.dart';
import 'package:riya_s_application6/presentation/booking_confirmed_screen/binding/booking_confirmed_binding.dart';
import 'package:riya_s_application6/presentation/bookings_tab_container_screen/bookings_tab_container_screen.dart';
import 'package:riya_s_application6/presentation/bookings_tab_container_screen/binding/bookings_tab_container_binding.dart';
import 'package:riya_s_application6/presentation/address_one_screen/address_one_screen.dart';
import 'package:riya_s_application6/presentation/address_one_screen/binding/address_one_binding.dart';
import 'package:riya_s_application6/presentation/reviews_screen/reviews_screen.dart';
import 'package:riya_s_application6/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:riya_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:riya_s_application6/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String profileScreen = '/profile_screen';

  static const String notificationEmptyScreen = '/notification_empty_screen';

  static const String addressScreen = '/address_screen';

  static const String walletScreen = '/wallet_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verifyCodeScreen = '/verify_code_screen';

  static const String homeVtwoPage = '/home_vtwo_page';

  static const String homeVtwoContainerScreen = '/home_vtwo_container_screen';

  static const String serviceDetailsScreen = '/service_details_screen';

  static const String dateTimeBottomSheetScreen =
      '/date_time_bottom_sheet_screen';

  static const String addressTwoScreen = '/address_two_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String bookingConfirmedScreen = '/booking_confirmed_screen';

  static const String upcomingEmptyPage = '/upcoming_empty_page';

  static const String bookingsPage = '/bookings_page';

  static const String bookingsTabContainerScreen =
      '/bookings_tab_container_screen';

  static const String addressOneScreen = '/address_one_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationEmptyScreen,
      page: () => NotificationEmptyScreen(),
      bindings: [
        NotificationEmptyBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: walletScreen,
      page: () => WalletScreen(),
      bindings: [
        WalletBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: verifyCodeScreen,
      page: () => VerifyCodeScreen(),
      bindings: [
        VerifyCodeBinding(),
      ],
    ),
    GetPage(
      name: homeVtwoContainerScreen,
      page: () => HomeVtwoContainerScreen(),
      bindings: [
        HomeVtwoContainerBinding(),
      ],
    ),
    GetPage(
      name: serviceDetailsScreen,
      page: () => ServiceDetailsScreen(),
      bindings: [
        ServiceDetailsBinding(),
      ],
    ),
    GetPage(
      name: dateTimeBottomSheetScreen,
      page: () => DateTimeBottomSheetScreen(),
      bindings: [
        DateTimeBottomSheetBinding(),
      ],
    ),
    GetPage(
      name: addressTwoScreen,
      page: () => AddressTwoScreen(),
      bindings: [
        AddressTwoBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: bookingConfirmedScreen,
      page: () => BookingConfirmedScreen(),
      bindings: [
        BookingConfirmedBinding(),
      ],
    ),
    GetPage(
      name: bookingsTabContainerScreen,
      page: () => BookingsTabContainerScreen(),
      bindings: [
        BookingsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: addressOneScreen,
      page: () => AddressOneScreen(),
      bindings: [
        AddressOneBinding(),
      ],
    ),
    GetPage(
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
