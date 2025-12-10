import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biological Characteristics')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'The Invader: Pterois miles'),
            const SizedBox(height: 10),
            _buildInfoCard(
              context,
              'Description',
              'The Devil Firefish (Pterois miles) is a species of ray-finned fish native to the Indian Ocean. It is visually similar to P. volitans but is the primary species invading the Mediterranean Sea via the Suez Canal (Lessepsian migration).',
            ),
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Biological Characteristics'),
            const SizedBox(height: 10),
            _buildFeatureRow(context, 'Venomous Spines', 'Dorsal, anal, and pelvic spines contain venom glands used for defense.'),
            _buildFeatureRow(context, 'Reproduction', 'Highly reproductive; females release egg masses every few days.'),
            _buildFeatureRow(context, 'Diet', 'Generalist predator consuming small fish, crustaceans, and mollusks.'),
            _buildFeatureRow(context, 'Habitat', 'Reefs, rocky crevices, and artificial structures up to 100m depth.'),
            
            const SizedBox(height: 20),
            _buildSectionTitle(context, 'Invasion Dynamics in Libya'),
            const SizedBox(height: 10),
            const Text(
              'The Cyrenaica coast provides rocky habitats ideal for Lionfish establishment. Rising sea temperatures facilitate their spread westward. Their presence threatens local biodiversity by outcompeting native predators and consuming juvenile commercial fish.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                border: Border.all(color: Colors.red.shade200),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.warning_amber_rounded, color: Colors.red, size: 40),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Safety Warning', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                        Text('Do not touch! Spines can inflict painful stings. Seek medical attention if stung.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 15, height: 1.4)),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureRow(BuildContext context, String label, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, color: Theme.of(context).primaryColor, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black87, fontSize: 15),
                children: [
                  TextSpan(text: '$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
