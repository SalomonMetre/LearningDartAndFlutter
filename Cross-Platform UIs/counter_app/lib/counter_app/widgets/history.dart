import 'package:flutter/material.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({required this.increasesHistory, super.key});
  final List<int> increasesHistory;

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Increases counter'),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: widget.increasesHistory.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) =>
                    Text('${widget.increasesHistory[index]}'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
