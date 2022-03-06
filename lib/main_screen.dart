import 'package:eksimsi/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'components/menu_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Merhaba, ${controller.getDisplayName()}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.15),
                        ),
                      ),
                      child: Image.asset('assets/icons/search.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuButton(
                        title: 'Okumaya Devam Et',
                        description: '5 mart 2022 akaryakıt zammı',
                        assetPath: 'assets/icons/glass.png',
                        onPressed: () {},
                      ),
                      Column(
                        children: [
                          MenuButton(
                            title: 'Gündem',
                            description: 'Gündem',
                            assetPath: 'assets/icons/gundem.png',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          MenuButton(
                            title: 'Debe',
                            description: 'dünün en beğenilenleri',
                            assetPath: 'assets/icons/debe.png',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MenuButton(
                            title: 'Kanal Ekle',
                            assetPath: 'assets/icons/add.png',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          MenuButton(
                            title: 'Kanal Ekle',
                            assetPath: 'assets/icons/add.png',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          MenuButton(
                            title: 'Kanallar',
                            description: 'tüm kanallar',
                            assetPath: 'assets/icons/more.png',
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MenuButton(
                            title: 'Arşiv',
                            description: 'ayraçlar ve kaydedilenler',
                            assetPath: 'assets/icons/heart.png',
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          MenuButton(
                            title: 'Ayarlar',
                            assetPath: 'assets/icons/settings.png',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
