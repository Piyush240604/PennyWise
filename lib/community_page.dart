import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:pennywise/components/button.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              width: 360,
              height: 61,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(238, 179, 101, 1),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 23,
                    left: 15,
                    child: Container(
                      width: 191,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pennywise_logo.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.95, 0.5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/chatbot');
                      },
                      child: const Text(
                        "ChatBOT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            title: const Text('Community'),
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Community Posts'),
              background: Image.network(
                'https://via.placeholder.com/500x200',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildPostItem(index);
              },
              childCount: 10, // Assuming there are 10 users
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostItem(int index) {
    final random = Random();
    final username = _generateRandomUsername(random);
    const postDescription =
        "Mood recently...Completed designing my own app on investment banking. Let's connect & grow together";
    // Load local images for each post
    final postImageUrl =
        'images/post_$index.jpg'; // Assuming images are named as post_0.jpg, post_1.jpg, etc.

    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              postImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          const SizedBox(height: 8),
          const Text(postDescription),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  String _generateRandomUsername(Random random) {
    final prefix = ['Mr.', 'Ms.', 'Dr.', 'Prof.'];
    final suffix = [
      'Singh',
      'Kumar',
      'Patel',
      'Sharma',
      'Jha',
      'Choudhary',
      'Gupta'
    ];
    final name = prefix[random.nextInt(prefix.length)] +
        ' ' +
        suffix[random.nextInt(suffix.length)];
    return name;
  }
}
