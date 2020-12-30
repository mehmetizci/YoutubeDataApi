class OnResponseReceivedCommands {
  String clickTrackingParams;
  AppendContinuationItemsAction appendContinuationItemsAction;

  OnResponseReceivedCommands(
      {this.clickTrackingParams, this.appendContinuationItemsAction});

  OnResponseReceivedCommands.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    appendContinuationItemsAction =
        json['appendContinuationItemsAction'] != null
            ? new AppendContinuationItemsAction.fromJson(
                json['appendContinuationItemsAction'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.appendContinuationItemsAction != null) {
      data['appendContinuationItemsAction'] =
          this.appendContinuationItemsAction.toJson();
    }
    return data;
  }
}
