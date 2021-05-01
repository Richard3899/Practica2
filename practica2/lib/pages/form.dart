import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Practica 2',))
        
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
             TextPersonal(),
             Text1(),
             CajaName(),
             Text2(),
             ComboBirth(),
             Text3(),
             Text4(),

             TextAcount(),
             TextEmail(),
             Email(),
             TextPassword(),
             Password(),
             TextVerify(),
             VerifyPassword(),


             TextoContacto(),
             TextAddress(),
             Address(),
             TextCity(),
             City(),
             TextState(),
             SelectState(),
             TextPhone(),
             Phone(),
             
            
        ]
          
      ),
    );
  }
}

class CajaName extends StatefulWidget{

  @override
  _CajaNameState createState() => _CajaNameState();
}

class _CajaNameState extends State<CajaName> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Nombre',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
      ),
    );
  }
}
class Text1 extends StatefulWidget {
  @override
  _Text1State createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:10),
     child: Text("Nombre",
     
     ),
   );
  }
}

class Text2 extends StatefulWidget {
  @override
  _Text2State createState() => _Text2State();
}

class _Text2State extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:20),
     child: Text("Date of Birth",
     
     ),
   );
  }
}

class ComboBirth extends StatefulWidget {
  @override
  _ComboBirthState createState() => _ComboBirthState();
}

class _ComboBirthState extends State<ComboBirth> {
 
  @override
  Widget build(BuildContext context) {
    return 
        Center(
          child: Row(
            children:[
              DateDia(),
              DateMes(),
              DateAns()
  
            ]
          ),
        );
      
   
  }

  
}

class DateDia extends StatefulWidget {
  @override
  _DateDiaState createState() => _DateDiaState();
}

class _DateDiaState extends State<DateDia> {
 
  List<String> _dias = ['Day','1','2','3','4','5','6','7','8','9','10','11','12'];
  String _actual = 'Day';

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option){
                  setState(() {});
                  _actual = option;
                },
              ),
            
      
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _dias.map((dia) => options.add(
      DropdownMenuItem(
        child: Text(dia),
        value: dia,
      )
    )).toList();
    return options;
  }
}

class DateMes extends StatefulWidget {
  @override
  _DateMesState createState() => _DateMesState();
}

class _DateMesState extends State<DateMes> {
 List<String> _meses = ['Mes','1','2','3','4','5','6','7','8','9','10','11','12'];
  String _actual = 'Mes';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
  
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option){
                  setState(() {});
                  _actual = option;
                },
              ),
            
      
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _meses.map((mes) => options.add(
      DropdownMenuItem(
        child: Text(mes),
        value: mes,
      )
    )).toList();
    return options;
  }
}

class DateAns extends StatefulWidget {
  @override
  _DateAnsState createState() => _DateAnsState();
}

class _DateAnsState extends State<DateAns> {
 List<String> _ans = ['Año','2001','2002','2003','2004','2005',
 '2006','2007','2008','2009','2010','2011','2012'];
  String _actual = 'Año';

  @override
  Widget build(BuildContext context) {
    return Container(
  margin: EdgeInsets.symmetric(horizontal: 25),
              child: DropdownButton(
                value: _actual,
                items: getItems(),
                onChanged: (option){
                  setState(() {});
                  _actual = option;
                },
              ),
            
      
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _ans.map((an) => options.add(
      DropdownMenuItem(
        child: Text(an),
        value: an,
      )
    )).toList();
    return options;
  }
}
class Text3 extends StatefulWidget {
  @override
  _Text3State createState() => _Text3State();
}

class _Text3State extends State<Text3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:15),
     child: Text("What is your favorite animal?",
     
     ),
   );
  }
}

class Text4 extends StatefulWidget {
  @override
  _Text4State createState() => _Text4State();
}

class _Text4State extends State<Text4> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:5),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
          hintText: 'Lion',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
        )

        ),
        Expanded(
          child: TextField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
          hintText: 'Tiger',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
        )
        ),
        Expanded(
          child: TextField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
          hintText: 'Bear',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
        )
        ),
        Expanded(
          child: TextField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
          hintText: 'Bull',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
        )
        ),
        Expanded(
          child: TextField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
          hintText: 'Serval',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
        )
        ),
      ],
  ),
    );
  }
}

class TextAcount extends StatefulWidget {
  @override
  _TextAcountState createState() => _TextAcountState();
}

class _TextAcountState extends State<TextAcount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:30 ),
     child: Text("Acccount",
     style: TextStyle(height: 1, fontSize: 18),
     ),
   );
  }
}

class TextPersonal extends StatefulWidget {
  @override
  _TextPersonalState createState() => _TextPersonalState();
}

class _TextPersonalState extends State<TextPersonal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(bottom:10),
     child: Text("Personal",
     style: TextStyle(height: 1, fontSize: 18),
     ),
   );
  }
}

class TextoContacto extends StatefulWidget {
  @override
  _TextoContactoState createState() => _TextoContactoState();
}

class _TextoContactoState extends State<TextoContacto> {
  @override
  Widget build(BuildContext context) {
     return Padding(
     padding: EdgeInsets.symmetric(vertical: 30),
     child: Text("Contact",
     style: TextStyle(height: 1, fontSize: 18),
     ),
   );
  }
}

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
      ),
    );
  }
}

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',       
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        ),
      ),
    );
  }
}

class VerifyPassword extends StatefulWidget {
  @override
  _VerifyPasswordState createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:5),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',       
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
              )
            ),
          ),
        ),
      ],
    );
  }
}


class TextEmail extends StatefulWidget {
  @override
  _TextEmailState createState() => _TextEmailState();
}

class _TextEmailState extends State<TextEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top:25),
     child: Text("Email",
     
     ),
   );
  }
}

class TextPassword extends StatefulWidget {
  @override
  _TextPasswordState createState() => _TextPasswordState();
}

class _TextPasswordState extends State<TextPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:20),
     child: Text("Password",
     
     ),
   );
  }
}

class TextVerify extends StatefulWidget {
  @override
  _TextVerifyState createState() => _TextVerifyState();
}

class _TextVerifyState extends State<TextVerify> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(top:20),
     child: Text("Verify Password",
     
     ),
   );
  }
}


class TextAddress extends StatefulWidget {
  @override
  _TextAddressState createState() => _TextAddressState();
}

class _TextAddressState extends State<TextAddress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.only(bottom:5),
     child: Text("Address",
     
     ),
   );
  }
}

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Address',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
      ),
    );
  }
}

class TextCity extends StatefulWidget {
  @override
  _TextCityState createState() => _TextCityState();
}

class _TextCityState extends State<TextCity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top:20),
     child: Text("City",
     
     ),
   );
  }
}

class City extends StatefulWidget {
  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Address',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
      ),
    );
  }
}

class TextState extends StatefulWidget {
  @override
  _TextStateState createState() => _TextStateState();
}

class _TextStateState extends State<TextState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top:20),
     child: Text("State",
     
     ),
   );
  }
}

class SelectState extends StatefulWidget {
  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
 List<String> _dias = ['Select your state','California','Nueva York','Los Angeles'];
  String _actual = 'Select your state';
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children:[ 
            Expanded(
              
              child: DropdownButton(
                
                value: _actual,
                items: getItems(),
                onChanged: (option){
                  setState(() {});
                  _actual = option;
                },
              ),
            )
          ]
        ),
      
      ],
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _dias.map((dia) => options.add(
      DropdownMenuItem(
        child: Text(dia),
        value: dia,
      )
    )).toList();
    return options;
  }
}

class TextPhone extends StatefulWidget {
  @override
  _TextPhoneState createState() => _TextPhoneState();
}

class _TextPhoneState extends State<TextPhone> {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top:20),
     child: Text("Phone",
     
     ),
   );
  }
}

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5),
      child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          hintText: 'Phone',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5)
          )
        )
      ),
    );
  }
}
































































