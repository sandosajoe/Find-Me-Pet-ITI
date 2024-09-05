import 'package:flutter/material.dart';

class InfoPart extends StatelessWidget {
  final String goodWS;

  const InfoPart({super.key, required this.goodWS});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _Info(icon: Icons.people_alt_outlined,label: "Goodness with Strangers: $goodWS"),
        _Info(icon: Icons.child_care, label: "No children coming"),
        _Info(icon: Icons.check_circle_outline, label: "Available"),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget _Info({required IconData icon, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size:30, color: Colors.deepOrange[300]),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}