import 'package:flutter/material.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.chevron_left_outlined,
                    size: 48,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Image.asset('assets/images/starbucks.png'),
                  ),
                  const Icon(
                    Icons.favorite,
                    size: 48,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 380,
                height: 400,
                child: Image.asset('assets/images/coffee.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Chocolate Frappuchino",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '\$20.00',
                    style: TextStyle(
                      color: Color(0xFF00623B),
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.',
                style: TextStyle(color: Color(0xFF6D6D6D), fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.',
                style: TextStyle(color: Color(0xFF6D6D6D), fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF00623B),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Add To Bag',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

