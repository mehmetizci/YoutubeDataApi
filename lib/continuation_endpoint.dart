import 'continuation_command.dart';

class ContinuationEndpoint {
  ContinuationCommand continuationCommand;

  ContinuationEndpoint({
    this.continuationCommand,
  });

  ContinuationEndpoint.fromJson(Map<String, dynamic> json) {
    continuationCommand = json['continuationCommand'] != null
        ? new ContinuationCommand.fromJson(json['continuationCommand'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.continuationCommand != null) {
      data['continuationCommand'] = this.continuationCommand.toJson();
    }
    return data;
  }
}
