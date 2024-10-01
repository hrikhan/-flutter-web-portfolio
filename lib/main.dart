import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'first app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'portfoliWeb',
          style: TextStyle(
              color: const Color.fromARGB(255, 16, 5, 0),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Text("home"),
                SizedBox(
                  height: 10,
                ),
                Text("contrat"),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text("about"),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SkillsSection(),
            ProjectsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX9jliC3bvT1qV5_r9tkdfbTmWrdHKhQv__g&s'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, I\'m  Hridoy',
            style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text('A Passionate Flutter Developer',
              style: TextStyle(fontSize: 24, color: Colors.white70)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Get in Touch'),
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp',
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Skills',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        '• dart &flutter\n• mobile app and web development\n• firebase\n• Git'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class ProjectsSection extends StatelessWidget {
  final List<String> projects = [
    'Portfolio Website',
    'E-commerce App',
    'Todo App',
    'Weather App',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width < 600 ? 1 : 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          projects[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        Image.network(
                          'https://png.pngtree.com/thumb_back/fh260/background/20230617/pngtree-visualizing-e-commerce-in-benin-through-3d-rendering-for-social-media-image_3640688.jpg',
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 500,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      color: Colors.blueGrey,
      child: Column(
        children: [
          Text('Connect with me',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(Icons.linked_camera, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.email, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.facebook, color: Colors.white),
                  onPressed: () {}),
            ],
          ),
          SizedBox(height: 10),
          Text('© 2024 Your Name', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
