import 'package:budget_app/view_model.dart';
import 'package:budget_app/web/expense_web_view.dart';
import 'package:budget_app/web/login_web_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mobile/expense_mobile_view.dart';
import 'mobile/login_mobile_view.dart';

class ResponsiveHandler extends HookConsumerWidget {
  const ResponsiveHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final viewModelProvider = ref.watch(viewModel);
    // viewModelProvider.isLoggedIn();
    print("Rebuild checker");
    final _authState = ref.watch(authStateProvider);

    return _authState.when(
      data: (data) {
        if (data != null) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return ExpenseViewWeb();
              } else {
                return ExpenseViewMobile();
              }
            },
          );
        }
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return LoginViewWeb();
            } else {
              return LoginViewMobile();
            }
          },
        );
      },
      error: (e, trace) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return LoginViewWeb();
            } else {
              return LoginViewMobile();
            }
          },
        );
      },
      loading:
          () => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return LoginViewWeb();
              } else {
                return LoginViewMobile();
              }
            },
          ),
    );

    // if (viewModelProvider.isSignedIn == true) {
    //   return LayoutBuilder(
    //     builder: (context, constraints) {
    //       if (constraints.maxWidth > 600) {
    //         return ExpenseViewWeb();
    //       } else
    //         return ExpenseViewMobile();
    //     },
    //   );
    // } else {
    //   return LayoutBuilder(
    //     builder: (context, constraints) {
    //       if (constraints.maxWidth > 600) {
    //         return LoginViewWeb();
    //       } else
    //         return LoginViewMobile();
    //     },
    //   );
    // }
  }
}
