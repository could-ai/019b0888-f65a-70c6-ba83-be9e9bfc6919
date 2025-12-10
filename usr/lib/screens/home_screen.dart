import 'package:flutter/material.dart';
import '../models/sighting.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lionfish Tracker: Cyrenaica'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.waves, color: Colors.white, size: 48),
                  SizedBox(height: 10),
                  Text(
                    'Lionfish Tracker',
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cyrenaica Coast, Libya',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Biological Info'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/info');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_location_alt),
              title: const Text('Report Sighting'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/report');
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Invasion Stats'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/stats');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWelcomeCard(context),
            const SizedBox(height: 24),
            Text('Recent Sightings', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            _buildRecentSightingsList(context),
            const SizedBox(height: 24),
            _buildQuickActions(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/report'),
        label: const Text('Report'),
        icon: const Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  Widget _buildWelcomeCard(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Invasion Dynamics Monitor',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              'Monitoring Pterois miles along the Cyrenaica Coast. Help us track the spread and protect local biodiversity.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white.withOpacity(0.9)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentSightingsList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mockSightings.length,
      itemBuilder: (context, index) {
        final sighting = mockSightings[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.2),
              child: Icon(Icons.place, color: Theme.of(context).colorScheme.tertiary),
            ),
            title: Text(sighting.location, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('${DateFormat.yMMMd().format(sighting.date)} • Depth: ${sighting.depth}m'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('${sighting.count} count', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
                Text('${sighting.size} cm', style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildActionCard(
            context,
            'Learn More',
            Icons.menu_book,
            Colors.blue.shade100,
            () => Navigator.pushNamed(context, '/info'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildActionCard(
            context,
            'View Stats',
            Icons.analytics,
            Colors.orange.shade100,
            () => Navigator.pushNamed(context, '/stats'),
          ),
        ),
      ],
    );
  }

  Widget _buildActionCard(BuildContext context, String title, IconData icon, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: Colors.black87),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
