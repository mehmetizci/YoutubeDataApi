import 'command_metadata.dart';

class NavigationEndpoint {
  CommandMetadata commandMetadata;

  NavigationEndpoint({
    this.commandMetadata,
  });

  NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }

    return data;
  }
}
