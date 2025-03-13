import 'package:calender_scheduler/const/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final bool expand;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final String? initialValue;

  const CustomTextField({
    required this.label,
    required this.onSaved,
    required this.validator,
    this.expand = false,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
        ),
        if (!expand) renderTextFormField(),
        if (expand) Expanded(child: renderTextFormField()),
      ],
    );
  }

  Widget renderTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[300],
      ),

      /// 저장 했을때
      onSaved: onSaved,

      /// 검증 할때 로직
      validator: validator,
      maxLines: expand ? null : 1,
      minLines: expand ? null : 1,
      expands: expand,
      cursorColor: Colors.grey,
      initialValue: initialValue,

      /// 키보드 타입 설정
      keyboardType: TextInputType.text,

      /// 완료 버튼 표시
      textInputAction: TextInputAction.done,
    );
  }
}
