import 'package:flutter/material.dart';

// Так как этот экран предполагает хранение данных используем StatefulWidget
class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Логотип в апп баре приложения
        title: const Image(
          image: AssetImage("images/logo_pro_force.png"),
          width: 50,
          height: 50,
        ),
        centerTitle: true,
        elevation: 100,
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

// Видждет для текстовых полей
class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Отступы по краям
    return const Padding(
      // В телефонах обычно ставят 16 пунктов
      padding: EdgeInsets.symmetric(horizontal: 16),
      // Колонки
      child: Column(
        children: [
          SizedBox(height: 150),
          Text(
            "Вход в кабинет выплат для водителей и курьеров",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Введите ваш номер телефона в поле ниже",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15),
          _FormWidget(),
        ],
      ),
    );
  }
}

// Stateful Widget потому что форма будет хранить состояние
class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  bool? _isCheckedOne = false;
  bool? _isCheckedTwo = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            hintText: "+7 (***) *** ** **",
            fillColor: Colors.grey.shade300,
          ),
        ),
        const SizedBox(height: 15),
        CheckboxListTile(
          title: const Text(
              "Я ознакомился и согласен с политикой конфиденциальности"),
          value: _isCheckedOne,
          onChanged: (bool? value) {
            setState(() {
              _isCheckedOne = value;
            });
          },
          activeColor: Colors.blue,
          checkColor: Colors.white,
          subtitle: const Text("Политика конфиденциальности"),
          controlAffinity: ListTileControlAffinity.leading,
        ),
        CheckboxListTile(
          title: const Text(
              "Я ознакомился и согласен с пользовательским соглашением"),
          value: _isCheckedTwo,
          onChanged: (bool? value) {
            setState(() {
              _isCheckedTwo = value;
            });
          },
          activeColor: Colors.blue,
          checkColor: Colors.white,
          subtitle: const Text("Пользовательское соглашение"),
          controlAffinity: ListTileControlAffinity.leading,
        )
      ],
    );
  }
}
