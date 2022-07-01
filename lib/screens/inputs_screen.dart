import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                const CustomInputField(
                  suffixIcon: Icons.supervised_user_circle_rounded,
                  hintText: 'Nombre de Usuario',
                  helperText: 'Ingrese solo texto',
                  labelText: 'Nombre ',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  suffixIcon: Icons.supervised_user_circle_rounded,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo electronico del usuario',
                  keyboard: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  keyboard: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
