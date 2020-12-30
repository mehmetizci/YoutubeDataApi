class AppendContinuationItemsAction {
  List<ContinuationItems> continuationItems;
  String targetId;

  AppendContinuationItemsAction({this.continuationItems, this.targetId});

  AppendContinuationItemsAction.fromJson(Map<String, dynamic> json) {
    if (json['continuationItems'] != null) {
      continuationItems = new List<ContinuationItems>();
      json['continuationItems'].forEach((v) {
        continuationItems.add(new ContinuationItems.fromJson(v));
      });
    }
    targetId = json['targetId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.continuationItems != null) {
      data['continuationItems'] =
          this.continuationItems.map((v) => v.toJson()).toList();
    }
    data['targetId'] = this.targetId;
    return data;
  }
}
