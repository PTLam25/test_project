import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/presentation/routes/app_router.gr.dart';
import '../../core/presentation/themes/themes.dart';
import '../application/authentication_bloc/authentication_bloc.dart';
import '../application/sign_up_bloc/sign_up_bloc.dart';

class PasswordInputPage extends StatefulWidget {
  const PasswordInputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordInputPage> createState() => _PasswordInputPageState();
}

class _PasswordInputPageState extends State<PasswordInputPage> {
  bool _isFormValid = false;

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: _authenticationBlocListener,
      builder: (_, AuthenticationState state) {
        return BlocListener<SignUpBloc, SignUpState>(
          listenWhen: _signUpBlocListenWhen,
          listener: _signUpBlocListener,
          child: Scaffold(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          state.maybeWhen(
                            orElse: () => '',
                            unauthenticated: (_, isRegistered) => isRegistered
                                ? 'Введите пароль'
                                : 'Задайте пароль',
                          ),
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const SizedBox(height: 48.0),
                        PinCodeTextField(
                          controller: _passwordController,
                          onChanged: _onPinCodeChanged,
                          beforeTextPaste: _beforeTextPaste,
                          autoFocus: true,
                          keyboardType: TextInputType.number,
                          length: 4,
                          appContext: context,
                          animationType: AnimationType.fade,
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          cursorWidth: 1.0,
                          cursorColor: AppColors.black,
                          pinTheme: PinTheme(
                            selectedColor: AppColors.black,
                            inactiveColor: AppColors.black,
                            activeColor: AppColors.black,
                            borderWidth: 1.0,
                            fieldWidth: 80.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: _isFormValid ? _onSubmit : null,
                          child: Text(
                            'Продолжить',
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      color: _isFormValid
                                          ? AppColors.white
                                          : AppColors.gray,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  bool _beforeTextPaste(String? value) {
    if (value == null) {
      return false;
    }

    const numberOnlyRegex = r'^[0-9]*$';

    return RegExp(numberOnlyRegex).hasMatch(value);
  }

  void _onPinCodeChanged(String value) {
    setState(() {
      _isFormValid = value.length == 4 ? true : false;
    });
  }

  void _onSubmit() {
    context.read<SignUpBloc>().add(const SignUpEvent.signUpPressed());
  }

  bool _signUpBlocListenWhen(
    SignUpState previous,
    SignUpState current,
  ) {
    return previous.failureOrUser != current.failureOrUser;
  }

  void _signUpBlocListener(
    BuildContext context,
    SignUpState state,
  ) {
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.checkAuthenticationStatus());
  }

  void _authenticationBlocListener(
    BuildContext context,
    AuthenticationState state,
  ) {
    state.whenOrNull(
      authenticated: (_) => context.router.replaceAll(const [
        HomeRoute(),
      ]),
    );
  }
}
