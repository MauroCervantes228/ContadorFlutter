import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [
          Colors.blue.shade300,
          Colors.blue,
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      )),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )
          ),
          SizedBox(height: 5,),
          Text(
            'Welcome to your account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          Datos(),
          Remember(),
          SizedBox(height: 20,),
          Botones(),
          _Politicas(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'micorreo@micorreo.com'
            ),
          ),
          const SizedBox(height: 30,),
           const Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            obscureText: showPass,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'password',
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () => {
                  setState((){
                    showPass == true ? showPass = false : showPass = true;
                  })
                },
              )
            ),
          ),
        ],
      ),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (value) => {
            setState(()=>
              checked == false ? checked = true : checked = false
            )
          },
        ),
        const Text('Remember me'),
        const Spacer(),
        TextButton(
          onPressed: () => {},
          child: const Text('Forgot Password?'),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        const Text(
          'Or login with',
          style: TextStyle(color: Color.fromARGB(255, 79, 77, 77)),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
                onPressed: () => {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                child: const Text(
                  'Google',
                  style: TextStyle(
                      color: Color(0xff142047),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
        const SizedBox(
          height: 15,
          width: double.infinity,
        ),
        SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
                onPressed: () => {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                child: const Text(
                  'Facebook',
                  style: TextStyle(
                      color: Color(0xff142047),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
        const SizedBox(
          height: 30,
          width: double.infinity,
        ),
      ],
    );
  }
}

class _Politicas extends StatefulWidget {
  const _Politicas({Key? key}) : super(key: key);

  @override
  _PoliticasState createState() => _PoliticasState();
}

class _PoliticasState extends State<_Politicas> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {},
              child: const Text(
                'Read User',
                style: TextStyle(
                    color: Color.fromARGB(255, 232, 232, 232),
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 77, 77),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}