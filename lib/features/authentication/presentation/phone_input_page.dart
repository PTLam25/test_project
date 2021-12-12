import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presentation/routes/app_router.dart';
import '../../core/presentation/themes/themes.dart';
import '../application/authentication_bloc/authentication_bloc.dart';
import '../application/sign_in_bloc/sign_in_bloc.dart';
import '../application/sign_up_bloc/sign_up_bloc.dart';

class PhoneInputPage extends StatefulWidget {
  const PhoneInputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PhoneInputPage> createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<PhoneInputPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isFormValid = false;

  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.router.pop,
          icon: const Icon(Icons.chevron_left, size: 30.0),
          padding: EdgeInsets.zero,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 24.0,
          ),
          child: Form(
            key: _formKey,
            onChanged: _onFormChanged,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Мой номер телефона',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(height: 48.0),
                    TextFormField(
                      controller: _phoneNumberController,
                      validator: _onPhoneNumberChanged,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      enableSuggestions: false,
                      autocorrect: false,
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 14.0),
                    Text(
                      'Вам придет сообщение с кодом.',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      'Никому его не говорите.',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: _isFormValid ? _onSubmit : null,
                  child: Text(
                    'Продолжить',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color:
                              _isFormValid ? AppColors.white : AppColors.gray,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onFormChanged() {
    setState(() {
      _isFormValid = _phoneNumberController.text.isNotEmpty ? true : false;
    });
  }

  String? _onPhoneNumberChanged(String? value) {
    if (value == null) {
      return null;
    }

    if (value.isEmpty) {
      return 'Введите номер телефона';
    }
  }

  void _onSubmit() {
    final authenticationState = context.read<AuthenticationBloc>().state;

    authenticationState.whenOrNull(
      unauthenticated: (_, bool isRegistered) {
        if (isRegistered) {
          context
            ..read<SignInBloc>().add(
              SignInEvent.phoneNumberChanged(_phoneNumberController.text),
            )
            ..router.pushNamed(AppRoutes.passwordInput);
        } else {
          context
            ..read<SignUpBloc>().add(
              SignUpEvent.phoneNumberChanged(_phoneNumberController.text),
            )
            ..router.pushNamed(AppRoutes.smsCodeConfirmation);
        }
      },
    );
  }
}
