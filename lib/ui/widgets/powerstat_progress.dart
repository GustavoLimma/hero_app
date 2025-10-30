import 'package:flutter/material.dart';

class PowerstatProgress extends StatelessWidget {
  final String label;
  final int value; // 0..100

  const PowerstatProgress({
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pct = (value.clamp(0, 100)) / 100.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          // Label (nome da característica)
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          ),

          // Barra de progresso
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: pct,
                minHeight: 8,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  _getProgressColor(value),
                ),
              ),
            ),
          ),

          const SizedBox(width: 8),

          // Valor numérico (ex: 75)
          SizedBox(
            width: 28,
            child: Text(
              value.toString(),
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Opcional: muda a cor da barra conforme o valor
  Color _getProgressColor(int value) {
    if (value >= 80) return Colors.green;
    if (value >= 50) return Colors.orange;
    return Colors.red;
  }
}
