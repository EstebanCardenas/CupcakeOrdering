part of cupcake.widgets;

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    Key? key,
    this.onCancel,
    this.onNext,
  }) : super(key: key);

  final VoidCallback? onCancel;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: onCancel,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'CANCEL',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: onNext,
              child: const Text(
                'NEXT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      );
}
