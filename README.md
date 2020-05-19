# Divine_Card - Animated Flutter Package

SlimyCard provides a beautiful slime-like animation of a Card that separates into two different Cards, one at the top and the another at bottom. It is possible to put any custom widget in these two separate cards.

![Banner Image](https://raw.githubusercontent.com/AkashDivya/SlimyCard-Animated-Flutter-Package/master/images/SlimyCard-Animated-Flutter-Package-by-Akash-Divya.png)

# How to install this package

  - **1. Depend on it**

    Add this to your flutter app's pubspec.yaml file:
    
    ```
    dependencies:
      divine_card: ^0.0.1
    ```
    
  - **2. Install it**
    
    You can install packages from the command line:

    with Flutter:
    
    ```
    $ flutter pub get
    ```
    
    Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.
    
# How to use this package

  - **1. Import it**
  
    In your Dart code, import the package as mentioned below:
    
    ```
    import 'package:divine_card/divine_card.dart';
    ```
    
  - **2. Use It**
  
    Create a ListView, and in its children use SlimyCard()
    
    ```
    ListView(
      children: <Widget>[
        SlimyCard(),
      ],
    );
    ```
    
  - **3. Customize It**
    
    You can customize SlimyCard as per need, by using the following parameters:
    
    ```
    ListView(
      children: <Widget>[
        SlimyCard(
          color: Colors.red,
          width: 200,
          topCardHeight: 400,
          bottomCardHeight: 200,
          borderRadius: 15,
          topCardWidget: myWidget01(),
          bottomCardWidget: myWidget02(),
          slimeEnabled: true,
        ),
      ],
    ),
    ```
    
    
# Actual ScreenShots
....

# How to get the status of this package

  You can get the **real-time** status of this Package by wrapping the SlimeyCard in **StreamBuilder** as below:
  
  ```
   divineCard(
     height: 200.0,
     color: Color(0xFF00578D),
     shadowColor: Colors.black38,
     blurRadius: 12.0,
     img: AssetImage('images/Picture2.png'),
     imgHeight: 200.0,
     imgWidth: 200.0,
     buttonText: 'Your Text',
     buttonColor: Colors.black,
     buttonBackground: Colors.white,
     icon: Icons.arrow_forward_ios,
     iconColor: Colors.black,
     title: 'Your text goes',
     subtitle: 'Here..',
     fontSize: 18.0,
     fontColor: Colors.white,
 
             ),
  ```

# About Me

Hi! my name is Radhika Goswami.

I'm 16 year Girl who get's amazed by seeing apps and wondered if I can too make these and just because of
Flutter now I can create APPs of my own !
 
# Other Repo you may Like

[![Explore Flutter Firebase](https://raw.githubusercontent.com/AkashDivya/Explore-Flutter-FireStore/master/images/Banner.jpg)](https://github.com/AkashDivya/Explore-Flutter-FireStore)

[Visit this Repo](https://github.com/RadhikaGoswamiDivineCoding)

# Find me on

**[YouTube](https://www.youtube.com/channel/UC96JyllXkE4_Gfh9eLyaovw)**

**[Twitter](https://twitter.com/DivineCoding)**


**Email: radhika.divinecoding@gmail.com**

**Have a nice fluttery day! **