extension MyIterable<E> on Iterable<E> {
  Iterable<E> sortedDescending(Comparable Function(E e) key) => toList()
    ..sort(
      (b, a) => key(a).compareTo(
        key(b),
      ),
    );
}
