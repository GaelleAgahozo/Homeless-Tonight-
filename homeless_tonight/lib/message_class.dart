class Message {
  const Message(
      {required this.serviceIsSender,
      required this.serviceAddress,
      required this.serviceDisplayName,
      required this.userAddress,
      required this.userDisplayName,
      required this.content,
      required this.time});

  Message.fromJson(Map<String, Object?> json)
      : this(
          serviceIsSender: json['serviceIsSender']! as bool,
          serviceAddress: json['serviceAddress']! as String,
          serviceDisplayName: json['serviceDisplayName']! as String,
          userAddress: json['userAddress']! as String,
          userDisplayName: json['userDisplayName']! as String,
          content: json['content'] as String,
          time: json['time'] as String,
        );

  final bool serviceIsSender;
  final String serviceAddress;
  final String serviceDisplayName;
  final String userAddress;
  final String userDisplayName;
  final String content;
  final String time;

  Map<String, Object?> toJson() {
    return {
      'serviceIsSender': serviceIsSender,
      'serviceAddress': serviceAddress,
      'serviceDisplayName': serviceDisplayName,
      'userAddress': userAddress,
      'userDisplayName': userDisplayName,
      'content': content,
      'time': time,
    };
  }
}

class UnclaimedMessage {
  const UnclaimedMessage({
    required this.userAddress,
    required this.userDisplayName,
    required this.location,
    required this.need,
    required this.description,
    required this.time,
  });

  UnclaimedMessage.fromJson(Map<String, Object?> json)
      : this(
          userAddress: json['userAddress']! as String,
          userDisplayName: json['userDisplayName']! as String,
          location: json['location']! as String,
          need: json['need']! as String,
          description: json['description']! as String,
          time: json['time'] as String,
        );

  final String userAddress;
  final String userDisplayName;
  final String location;
  final String need;
  final String description;
  final String time;

  Map<String, Object?> toJson() {
    return {
      'userAddress': userAddress,
      'userDisplayName': userDisplayName,
      'location': location,
      'need': need,
      'description': description,
      'time': time,
    };
  }
}
