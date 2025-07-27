import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questions_pratice/Toturial_Pratice/UserRepository/UserRepository.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  TextEditingController? _email;
  TextEditingController? _password;

  final _formKey = GlobalKey<FormState>();// Form validation (_formKey.currentState!.validate())
  final _key = GlobalKey<ScaffoldState>(); //Snackbar show karna manually

  @override
  void initState() {

    super.initState();

    _email = TextEditingController(text: '');
    _password = TextEditingController(text: "");
  }
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserRepository>(context);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Demo'),
      ),

      body: Form(
        key: _formKey,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                    padding:  const EdgeInsets.all(16),
                  child: TextFormField(
                    controller: _email,
                      validator: (value){
                      if(value == null || value.isEmpty) {
                        return 'write the correct value';
                      }
                      return null;
                      },
                    style: style,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      border: OutlineInputBorder()
                    ),



                  ),
                ),

                user.status == Status.Authenticating
                ? Center(
                  child: CircularProgressIndicator(),
                )
                    :Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.red,
                    child: MaterialButton(
                        onPressed: ()   async{
                          if(_formKey.currentState?.validate() ?? false) {
                            if(!await user.signIn(_email!.text, _password!.text));


                          }
                        },
                      child: Text(
                        "Sign In",
                        style: style.copyWith(
                          color: Colors.white,
                          fontWeight:  FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )

              ],

            ),
          )
      ),
    );
  }

  void dispose () {
    _email?.dispose();
    _password?.dispose();
    super.dispose();
  }
}
