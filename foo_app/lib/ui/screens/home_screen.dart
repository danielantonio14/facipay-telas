import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/category_card.dart';
import '../widgets/food_card.dart';
import 'Welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Discover", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text("Explore the best dishes options here", style: TextStyle(color: AppColors.greyText)),
              const SizedBox(height: 20),

              // CATEGORY CARDS
              SizedBox(
                height: 200, // Ajuste para comportar bem os avatars
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard(title: 'WE LOVE SUSHI', color: AppColors.sushiCard, image: '🍣'),
                    CategoryCard(title: 'WE LOVE MEAT', color: AppColors.meatCard, image: '🥩'),
                    CategoryCard(title: 'WE LOVE VEGGIES', color: AppColors.veggieCard, image: '🥦'),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // TABS
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    tabItem("Popular", true),
                    tabItem("Recents", false),
                    tabItem("Breakfast", false),
                    tabItem("Drinks", false),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // FOOD CARDS
              Expanded(
                child: ListView(
                  children: const [
                    FoodCard(
                      name: "Ancho steak & chimichurri",
                      imageUrl: "https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      rating: 4.8,
                      time: "25 min",
                      weight: "Steak 1.5 g",
                      quantity: "+5",
                      avatarUrl: "https://i.pravatar.cc/30",
                      avatarName: "Chef John",
                      likedAvatars: [
                        "https://i.pravatar.cc/31",
                        "https://i.pravatar.cc/32",
                      ],
                      likesCount: "1.7 m",
                    ),
                    SizedBox(height: 20),
                    FoodCard(
                      name: "Sushi Combo",
                      imageUrl: "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      rating: 4.9,
                      time: "30 min",
                      weight: "Sushi 200 g",
                      quantity: "+3",
                      avatarUrl: "https://i.pravatar.cc/33",
                      avatarName: "Sushi Master",
                      likedAvatars: [
                        "https://i.pravatar.cc/34",
                        "https://i.pravatar.cc/35",
                      ],
                      likesCount: "2.3 m",
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.background,
        selectedItemColor: Colors.black,
        unselectedItemColor: AppColors.greyText,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // HOME is selected
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage('https://i.pravatar.cc/40'),
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 4) { // Profile item
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomeScreen()),
            );
          }
        },
      ),
    );
  }

  Widget tabItem(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}