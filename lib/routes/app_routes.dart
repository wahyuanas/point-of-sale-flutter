import 'package:flutter/material.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/main/main_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_notif_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_screen.dart';
import 'package:pos/presentation/page_view/main/screen/page_view_main._screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/form/screen/pos_catalog_form_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/item/screen/pos_catalog_item_detail_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/list/screen/pos_catalog_list_screen.dart';
import 'package:pos/presentation/page_view/pos/customer/form/create/screen/pos_customer_form_screen.dart';
import 'package:pos/presentation/page_view/pos/customer/list/screen/pos_customer_list_screen.dart';
import 'package:pos/presentation/page_view/pos/employee/form/create/screen/pos_employee_form_screen.dart';
import 'package:pos/presentation/page_view/pos/employee/list/screen/pos_employee_list_screen.dart';
import 'package:pos/presentation/page_view/pos/employee_department/form/create/screen/pos_employee_department_form_screen.dart';
import 'package:pos/presentation/page_view/pos/employee_department/list/screen/pos_employee_department_list_screen.dart';
import 'package:pos/presentation/page_view/pos/payment/screen/pos_payment_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle/form/create/screen/pos_vehicle_form_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle/list/screen/pos_vehicle_list_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_manufacture/form/create/screen/pos_vehicle_manufacture_form_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_manufacture/list/screen/pos_vehicle_manufacture_list_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_owner/form/create/screen/pos_vehicle_owner_form_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_owner/list/screen/pos_vehicle_owner_list_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_type/form/create/screen/pos_vehicle_type_form_screen.dart';
import 'package:pos/presentation/page_view/pos/vehicle_type/list/screen/pos_vehicle_type_list_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/signUpNotif':
        final account = settings.arguments as Account;
        return MaterialPageRoute(
            builder: (_) => SignUpNotifScreen(
                  account: account,
                ));
      case '/pageViewMainScreen':
        return MaterialPageRoute(builder: (_) => const PageViewMainScreen());
      case '/posCatalogList':
        return MaterialPageRoute(builder: (_) => const PosCatalogListScreen());
      case '/posCatalogForm':
        return MaterialPageRoute(builder: (_) => const PosCatalogFormScreen());
      case '/purchase':
        return MaterialPageRoute(builder: (_) => const PosPaymentScreen());
      case '/posCatalogItemDetail':
        final item = settings.arguments as Item;
        return MaterialPageRoute(
            builder: (_) => PosCatalogItemDetailScreen(
                  item: item,
                ));
      case '/posCustomerList':
        return MaterialPageRoute(builder: (_) => const PosCustomerListScreen());
      case '/posCustomerForm':
        return MaterialPageRoute(builder: (_) => const PosCustomerFormScreen());

      case '/posVehicleList':
        return MaterialPageRoute(builder: (_) => const PosVehicleListScreen());
      case '/posVehicleForm':
        return MaterialPageRoute(builder: (_) => const PosVehicleFormScreen());

      case '/posVehicleOwnerList':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleOwnerListScreen());
      case '/posVehicleOwnerForm':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleOwnerFormScreen());

      case '/posVehicleTypeList':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleTypeListScreen());
      case '/posVehicleTypeForm':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleTypeFormScreen());

      case '/posVehicleManufactureList':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleManufactureListScreen());
      case '/posVehicleManufactureForm':
        return MaterialPageRoute(
            builder: (_) => const PosVehicleManufactureFormScreen());

      case '/posEmployeeList':
        return MaterialPageRoute(builder: (_) => const PosEmployeeListScreen());
      case '/posEmployeeForm':
        return MaterialPageRoute(builder: (_) => const PosEmployeeFormScreen());

      case '/posEmployeeDepartmentList':
        return MaterialPageRoute(
            builder: (_) => const PosEmployeeDepartmentListScreen());
      case '/posEmployeeDepartmentForm':
        return MaterialPageRoute(
            builder: (_) => const PosEmployeeDepartmentFormScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: Builder(builder: (context) {
            return const Text("Error");
          })),
          body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                  'Error page ini muncul karena route yang dituju tidak ditemukan',
                  style: TextStyle(
                    fontSize: 17.0,
                  )),
            ),
          ));
    });
  }
}
