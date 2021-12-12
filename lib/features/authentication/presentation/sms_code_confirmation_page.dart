import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/presentation/routes/app_router.dart';
import '../../core/presentation/themes/themes.dart';
import '../application/sign_up_bloc/sign_up_bloc.dart';

class SmsCodeConfirmationPage extends StatefulWidget {
  const SmsCodeConfirmationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SmsCodeConfirmationPage> createState() =>
      _SmsCodeConfirmationPageState();
}

class _SmsCodeConfirmationPageState extends State<SmsCodeConfirmationPage> {
  bool _isFormValid = false;

  final TextEditingController _confirmationCodeController =
      TextEditingController();

  @override
  void dispose() {
    _confirmationCodeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listenWhen: _signUpBlocListenWhen,
      listener: _signUpBlocListener,
      builder: (_, SignUpState state) {
        final isConfirmationCodeInvalid =
            state.failureOrSuccessConfirmation.fold(
          () => false,
          (result) => result.fold(
            (failure) => true,
            (_) => false,
          ),
        );

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Код из сообщения',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(height: 48.0),
                      PinCodeTextField(
                        controller: _confirmationCodeController,
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
                          selectedColor: isConfirmationCodeInvalid
                              ? AppColors.error
                              : AppColors.black,
                          inactiveColor: isConfirmationCodeInvalid
                              ? AppColors.error
                              : AppColors.black,
                          activeColor: isConfirmationCodeInvalid
                              ? AppColors.error
                              : AppColors.black,
                          borderWidth: 1.0,
                          fieldWidth: 80.0,
                        ),
                      ),
                      const SizedBox(height: 14.0),
                      if (isConfirmationCodeInvalid)
                        Text(
                          'Неправильный код.',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                color: AppColors.error,
                              ),
                        ),
                      if (isConfirmationCodeInvalid)
                        Text(
                          'Повторите пожалуйста еще раз.',
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                color: AppColors.error,
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
    context.read<SignUpBloc>().add(
          SignUpEvent.confirmationCodeSubmitted(
            _confirmationCodeController.text,
          ),
        );
  }

  bool _signUpBlocListenWhen(
    SignUpState previous,
    SignUpState current,
  ) {
    return previous.failureOrSuccessConfirmation !=
        current.failureOrSuccessConfirmation;
  }

  void _signUpBlocListener(
    BuildContext context,
    SignUpState state,
  ) {
    state.failureOrSuccessConfirmation.fold(
      () => null,
      (result) => result.fold(
        (failure) => _confirmationCodeController.clear(),
        (_) => context.router.pushNamed(AppRoutes.passwordInput),
      ),
    );
  }
}
