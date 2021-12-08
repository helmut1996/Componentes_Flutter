import 'package:flutter/material.dart';

class InputsPages extends StatefulWidget {
  InputsPages({Key key}) : super(key: key);

  @override
  _InputsPagesState createState() => _InputsPagesState();
}

class _InputsPagesState extends State<InputsPages> {
  String _nombre = '';
  String _apellido = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _opcionSeleccionada = 'seleccionar ';

  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearInput2(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),

        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.account_circle)),

      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearInput2() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_apellido.length}'),
          hintText: 'Apellido de la persona',
          labelText: 'Apellido',
          helperText: 'Solo es el apellido',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.account_circle)),
      onChanged: (valor2) {
        setState(() {
          _apellido = valor2;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: const Icon(Icons.alternate_email),
          icon: const Icon(Icons.email),
          ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            counter: Text("Letras ${_password.length}"),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Password',
            labelText: 'Password',
            suffixIcon: const Icon(Icons.lock_open),
            icon: const Icon(Icons.lock),
            ),
        onChanged: (valor) {
          setState(() {
            _password = valor;
          });
        });
  }

 Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Fecha de nacimiento',
            labelText: 'Fecha de nacimiento',
            suffixIcon: const Icon(Icons.calendar_today_rounded),
            icon: const Icon(Icons.calendar_today),
            ),
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              _selectDate(context);
            },
            );
            
}

_selectDate(BuildContext context) async {
  DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      
      
      );

  if (picked != null) {}{
    setState(() {
      _fecha = picked.toString();
      _inputFieldDateController.text = _fecha;

    });

  }

}

Widget _crearDropdown() {
  return Row(
    children: <Widget>  [
      Icon(Icons.select_all),
      SizedBox(width: 30.0),
      DropdownButton(
        value: '1',
        items:  [
          DropdownMenuItem(
            child: Text('Masculino'),
            value: '1',
          ),
          DropdownMenuItem(
            child: Text('Femenino'),
            value: '2',
          ),
        ],
        onChanged: (opt) {
          print(opt);
          setState(() {
            _opcionSeleccionada = opt;
          });
        },

      )
    ],
  );
}

}


