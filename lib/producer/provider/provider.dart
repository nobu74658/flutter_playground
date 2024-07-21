import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true)
Stream<Producer> currentProducer(CurrentProducerRef ref) async* {
  // final String? producerId = ref.read(firebaseAuthProvider).currentUser?.uid;

  // if (producerId == null) {
  //   throw ArgumentError('producerId is null');
  // }

  // final ProducerRepo producerRepo = ref.read(producerRepoProvider.notifier);

  // await for (final doc in producerRepo.streamProducer(producerId)) {
  //   if (doc.data() != null) {
  //     yield doc.data()!;
  //   }
  // }
}

class Producer {
  Producer({
    required this.areaId,
    required this.producerId,
  });

  final String areaId;
  final String producerId;
}
