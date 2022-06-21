import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCarType1 extends StatelessWidget {
  const CustomCarType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Tarjeta de presentación'),
          subtitle: Text(
              'Adipisicing adipisicing in irure qui sint id Lorem exercitation minim magna excepteur eiusmod Lorem id.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Aceptar'),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
