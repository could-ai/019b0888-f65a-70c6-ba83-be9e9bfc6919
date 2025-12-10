import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Invasion Statistics')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Distribution Overview', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _buildStatCard(
              context,
              'Total Sightings',
              '142',
              Icons.visibility,
              Colors.blue,
            ),
            const SizedBox(height: 12),
            _buildStatCard(
              context,
              'Most Affected Area',
              'Tobruk Coast',
              Icons.warning,
              Colors.orange,
            ),
            const SizedBox(height: 12),
            _buildStatCard(
              context,
              'Average Depth',
              '18.5 meters',
              Icons.water,
              Colors.teal,
            ),
            const SizedBox(height: 24),
            Text('Monthly Sightings Trend', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            Container(
              height: 200,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bar_chart, size: 64, color: Theme.of(context).primaryColor.withOpacity(0.5)),
                    const SizedBox(height: 8),
                    const Text('Chart Visualization Placeholder'),
                    const Text('(Requires chart library integration)', style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Regional Breakdown', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _buildRegionRow(context, 'Tobruk', 45),
            _buildRegionRow(context, 'Derna', 30),
            _buildRegionRow(context, 'Susah', 25),
            _buildRegionRow(context, 'Benghazi', 15),
            _buildRegionRow(context, 'Apollonia', 10),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegionRow(BuildContext context, String region, int count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(region, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text('$count sightings', style: const TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(
            value: count / 50, // Mock max value
            backgroundColor: Colors.grey.shade200,
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}
