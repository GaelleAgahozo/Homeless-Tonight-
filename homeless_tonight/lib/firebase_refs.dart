import 'package:cloud_firestore/cloud_firestore.dart';
import 'message_class.dart';

final unclaimedMessageRef = FirebaseFirestore.instance
    .collection('unclaimed_messages')
    .withConverter<UnclaimedMessage>(
      fromFirestore: (snapshots, _) =>
          UnclaimedMessage.fromJson(snapshots.data()!),
      toFirestore: (message, _) => message.toJson(),
    );

CollectionReference<Message> getConvoRef(String userID, String serviceID) {
  return FirebaseFirestore.instance
      .collection('messages')
      .doc("$userID-$serviceID")
      .collection("$userID-$serviceID")
      .withConverter<Message>(
        fromFirestore: (snapshots, _) => Message.fromJson(snapshots.data()!),
        toFirestore: (message, _) => message.toJson(),
      );
}
