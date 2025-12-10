class Sighting {
  final String id;
  final String observerName;
  final DateTime date;
  final String location; // e.g., "Benghazi Coast"
  final double depth; // in meters
  final double size; // in cm
  final int count;
  final String notes;

  Sighting({
    required this.id,
    required this.observerName,
    required this.date,
    required this.location,
    required this.depth,
    required this.size,
    required this.count,
    this.notes = '',
  });
}

// Mock Data
final List<Sighting> mockSightings = [
  Sighting(
    id: '1',
    observerName: 'Dr. Ahmed',
    date: DateTime.now().subtract(const Duration(days: 2)),
    location: 'Susah Coast',
    depth: 15.5,
    size: 22.0,
    count: 3,
    notes: 'Found near rocky reef structure.',
  ),
  Sighting(
    id: '2',
    observerName: 'Marine Bio Team A',
    date: DateTime.now().subtract(const Duration(days: 5)),
    location: 'Derna Shore',
    depth: 8.0,
    size: 18.5,
    count: 1,
    notes: 'Juvenile specimen.',
  ),
  Sighting(
    id: '3',
    observerName: 'Fisherman Report',
    date: DateTime.now().subtract(const Duration(days: 10)),
    location: 'Tobruk Harbor',
    depth: 12.0,
    size: 25.0,
    count: 5,
    notes: 'Aggressive behavior observed.',
  ),
];
