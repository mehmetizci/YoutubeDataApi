// To parse this JSON data, do
//
//     final watchNextResponse = watchNextResponseFromMap(jsonString);

import 'dart:convert';

class WatchNextResponse {
  WatchNextResponse({
    this.responseContext,
    this.contents,
    this.currentVideoEndpoint,
    this.trackingParams,
    this.playerOverlays,
    this.overlay,
    this.engagementPanels,
    this.topbar,
    this.frameworkUpdates,
  });

  ResponseContext responseContext;
  Contents contents;
  Endpoint currentVideoEndpoint;
  String trackingParams;
  PlayerOverlays playerOverlays;
  Overlay overlay;
  List<EngagementPanel> engagementPanels;
  Topbar topbar;
  FrameworkUpdates frameworkUpdates;

  factory WatchNextResponse.fromJson(String str) =>
      WatchNextResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatchNextResponse.fromMap(Map<String, dynamic> json) =>
      WatchNextResponse(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromMap(json["responseContext"]),
        contents: json["contents"] == null
            ? null
            : Contents.fromMap(json["contents"]),
        currentVideoEndpoint: json["currentVideoEndpoint"] == null
            ? null
            : Endpoint.fromMap(json["currentVideoEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        playerOverlays: json["playerOverlays"] == null
            ? null
            : PlayerOverlays.fromMap(json["playerOverlays"]),
        overlay:
            json["overlay"] == null ? null : Overlay.fromMap(json["overlay"]),
        engagementPanels: json["engagementPanels"] == null
            ? null
            : List<EngagementPanel>.from(json["engagementPanels"]
                .map((x) => EngagementPanel.fromMap(x))),
        topbar: json["topbar"] == null ? null : Topbar.fromMap(json["topbar"]),
        frameworkUpdates: json["frameworkUpdates"] == null
            ? null
            : FrameworkUpdates.fromMap(json["frameworkUpdates"]),
      );

  Map<String, dynamic> toMap() => {
        "responseContext":
            responseContext == null ? null : responseContext.toMap(),
        "contents": contents == null ? null : contents.toMap(),
        "currentVideoEndpoint":
            currentVideoEndpoint == null ? null : currentVideoEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "playerOverlays":
            playerOverlays == null ? null : playerOverlays.toMap(),
        "overlay": overlay == null ? null : overlay.toMap(),
        "engagementPanels": engagementPanels == null
            ? null
            : List<dynamic>.from(engagementPanels.map((x) => x.toMap())),
        "topbar": topbar == null ? null : topbar.toMap(),
        "frameworkUpdates":
            frameworkUpdates == null ? null : frameworkUpdates.toMap(),
      };
}

class Contents {
  Contents({
    this.twoColumnWatchNextResults,
  });

  TwoColumnWatchNextResults twoColumnWatchNextResults;

  factory Contents.fromJson(String str) => Contents.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contents.fromMap(Map<String, dynamic> json) => Contents(
        twoColumnWatchNextResults: json["twoColumnWatchNextResults"] == null
            ? null
            : TwoColumnWatchNextResults.fromMap(
                json["twoColumnWatchNextResults"]),
      );

  Map<String, dynamic> toMap() => {
        "twoColumnWatchNextResults": twoColumnWatchNextResults == null
            ? null
            : twoColumnWatchNextResults.toMap(),
      };
}

class TwoColumnWatchNextResults {
  TwoColumnWatchNextResults({
    this.results,
    this.secondaryResults,
    this.autoplay,
  });

  TwoColumnWatchNextResultsResults results;
  TwoColumnWatchNextResultsSecondaryResults secondaryResults;
  TwoColumnWatchNextResultsAutoplay autoplay;

  factory TwoColumnWatchNextResults.fromJson(String str) =>
      TwoColumnWatchNextResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TwoColumnWatchNextResults.fromMap(Map<String, dynamic> json) =>
      TwoColumnWatchNextResults(
        results: json["results"] == null
            ? null
            : TwoColumnWatchNextResultsResults.fromMap(json["results"]),
        secondaryResults: json["secondaryResults"] == null
            ? null
            : TwoColumnWatchNextResultsSecondaryResults.fromMap(
                json["secondaryResults"]),
        autoplay: json["autoplay"] == null
            ? null
            : TwoColumnWatchNextResultsAutoplay.fromMap(json["autoplay"]),
      );

  Map<String, dynamic> toMap() => {
        "results": results == null ? null : results.toMap(),
        "secondaryResults":
            secondaryResults == null ? null : secondaryResults.toMap(),
        "autoplay": autoplay == null ? null : autoplay.toMap(),
      };
}

class TwoColumnWatchNextResultsAutoplay {
  TwoColumnWatchNextResultsAutoplay({
    this.autoplay,
  });

  AutoplayAutoplay autoplay;

  factory TwoColumnWatchNextResultsAutoplay.fromJson(String str) =>
      TwoColumnWatchNextResultsAutoplay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TwoColumnWatchNextResultsAutoplay.fromMap(
          Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsAutoplay(
        autoplay: json["autoplay"] == null
            ? null
            : AutoplayAutoplay.fromMap(json["autoplay"]),
      );

  Map<String, dynamic> toMap() => {
        "autoplay": autoplay == null ? null : autoplay.toMap(),
      };
}

class AutoplayAutoplay {
  AutoplayAutoplay({
    this.sets,
    this.countDownSecs,
    this.trackingParams,
  });

  List<Set> sets;
  int countDownSecs;
  String trackingParams;

  factory AutoplayAutoplay.fromJson(String str) =>
      AutoplayAutoplay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AutoplayAutoplay.fromMap(Map<String, dynamic> json) =>
      AutoplayAutoplay(
        sets: json["sets"] == null
            ? null
            : List<Set>.from(json["sets"].map((x) => Set.fromMap(x))),
        countDownSecs:
            json["countDownSecs"] == null ? null : json["countDownSecs"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "sets": sets == null
            ? null
            : List<dynamic>.from(sets.map((x) => x.toMap())),
        "countDownSecs": countDownSecs == null ? null : countDownSecs,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Set {
  Set({
    this.mode,
    this.autoplayVideo,
  });

  String mode;
  NavigationEndpointElement autoplayVideo;

  factory Set.fromJson(String str) => Set.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Set.fromMap(Map<String, dynamic> json) => Set(
        mode: json["mode"] == null ? null : json["mode"],
        autoplayVideo: json["autoplayVideo"] == null
            ? null
            : NavigationEndpointElement.fromMap(json["autoplayVideo"]),
      );

  Map<String, dynamic> toMap() => {
        "mode": mode == null ? null : mode,
        "autoplayVideo": autoplayVideo == null ? null : autoplayVideo.toMap(),
      };
}

class NavigationEndpointElement {
  NavigationEndpointElement({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  AutoplayVideoWatchEndpoint watchEndpoint;

  factory NavigationEndpointElement.fromJson(String str) =>
      NavigationEndpointElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NavigationEndpointElement.fromMap(Map<String, dynamic> json) =>
      NavigationEndpointElement(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : AutoplayVideoWatchEndpoint.fromMap(json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class AutoplayVideoCommandMetadata {
  AutoplayVideoCommandMetadata({
    this.webCommandMetadata,
  });

  PurpleWebCommandMetadata webCommandMetadata;

  factory AutoplayVideoCommandMetadata.fromJson(String str) =>
      AutoplayVideoCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AutoplayVideoCommandMetadata.fromMap(Map<String, dynamic> json) =>
      AutoplayVideoCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : PurpleWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class PurpleWebCommandMetadata {
  PurpleWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
    this.apiUrl,
  });

  String url;
  WebPageType webPageType;
  int rootVe;
  PurpleApiUrl apiUrl;

  factory PurpleWebCommandMetadata.fromJson(String str) =>
      PurpleWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
        apiUrl: json["apiUrl"] == null
            ? null
            : purpleApiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
        "apiUrl": apiUrl == null ? null : purpleApiUrlValues.reverse[apiUrl],
      };
}

enum PurpleApiUrl { YOUTUBEI_V1_BROWSE }

final purpleApiUrlValues =
    EnumValues({"/youtubei/v1/browse": PurpleApiUrl.YOUTUBEI_V1_BROWSE});

enum WebPageType {
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_BROWSE,
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_CHANNEL,
  WEB_PAGE_TYPE_SEARCH
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class AutoplayVideoWatchEndpoint {
  AutoplayVideoWatchEndpoint({
    this.videoId,
    this.params,
    this.playerParams,
    this.watchEndpointSupportedPrefetchConfig,
  });

  String videoId;
  String params;
  String playerParams;
  WatchEndpointSupportedPrefetchConfig watchEndpointSupportedPrefetchConfig;

  factory AutoplayVideoWatchEndpoint.fromJson(String str) =>
      AutoplayVideoWatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AutoplayVideoWatchEndpoint.fromMap(Map<String, dynamic> json) =>
      AutoplayVideoWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        params: json["params"] == null ? null : json["params"],
        playerParams:
            json["playerParams"] == null ? null : json["playerParams"],
        watchEndpointSupportedPrefetchConfig:
            json["watchEndpointSupportedPrefetchConfig"] == null
                ? null
                : WatchEndpointSupportedPrefetchConfig.fromMap(
                    json["watchEndpointSupportedPrefetchConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "params": params == null ? null : params,
        "playerParams": playerParams == null ? null : playerParams,
        "watchEndpointSupportedPrefetchConfig":
            watchEndpointSupportedPrefetchConfig == null
                ? null
                : watchEndpointSupportedPrefetchConfig.toMap(),
      };
}

class WatchEndpointSupportedPrefetchConfig {
  WatchEndpointSupportedPrefetchConfig({
    this.prefetchHintConfig,
  });

  PrefetchHintConfig prefetchHintConfig;

  factory WatchEndpointSupportedPrefetchConfig.fromJson(String str) =>
      WatchEndpointSupportedPrefetchConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatchEndpointSupportedPrefetchConfig.fromMap(
          Map<String, dynamic> json) =>
      WatchEndpointSupportedPrefetchConfig(
        prefetchHintConfig: json["prefetchHintConfig"] == null
            ? null
            : PrefetchHintConfig.fromMap(json["prefetchHintConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "prefetchHintConfig":
            prefetchHintConfig == null ? null : prefetchHintConfig.toMap(),
      };
}

class PrefetchHintConfig {
  PrefetchHintConfig({
    this.prefetchPriority,
    this.countdownUiRelativeSecondsPrefetchCondition,
  });

  int prefetchPriority;
  int countdownUiRelativeSecondsPrefetchCondition;

  factory PrefetchHintConfig.fromJson(String str) =>
      PrefetchHintConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PrefetchHintConfig.fromMap(Map<String, dynamic> json) =>
      PrefetchHintConfig(
        prefetchPriority:
            json["prefetchPriority"] == null ? null : json["prefetchPriority"],
        countdownUiRelativeSecondsPrefetchCondition:
            json["countdownUiRelativeSecondsPrefetchCondition"] == null
                ? null
                : json["countdownUiRelativeSecondsPrefetchCondition"],
      );

  Map<String, dynamic> toMap() => {
        "prefetchPriority": prefetchPriority == null ? null : prefetchPriority,
        "countdownUiRelativeSecondsPrefetchCondition":
            countdownUiRelativeSecondsPrefetchCondition == null
                ? null
                : countdownUiRelativeSecondsPrefetchCondition,
      };
}

class TwoColumnWatchNextResultsResults {
  TwoColumnWatchNextResultsResults({
    this.results,
  });

  ResultsResults results;

  factory TwoColumnWatchNextResultsResults.fromJson(String str) =>
      TwoColumnWatchNextResultsResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TwoColumnWatchNextResultsResults.fromMap(Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsResults(
        results: json["results"] == null
            ? null
            : ResultsResults.fromMap(json["results"]),
      );

  Map<String, dynamic> toMap() => {
        "results": results == null ? null : results.toMap(),
      };
}

class ResultsResults {
  ResultsResults({
    this.contents,
    this.trackingParams,
  });

  List<ResultsContent> contents;
  String trackingParams;

  factory ResultsResults.fromJson(String str) =>
      ResultsResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResultsResults.fromMap(Map<String, dynamic> json) => ResultsResults(
        contents: json["contents"] == null
            ? null
            : List<ResultsContent>.from(
                json["contents"].map((x) => ResultsContent.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ResultsContent {
  ResultsContent({
    this.videoPrimaryInfoRenderer,
    this.videoSecondaryInfoRenderer,
    this.itemSectionRenderer,
  });

  VideoPrimaryInfoRenderer videoPrimaryInfoRenderer;
  VideoSecondaryInfoRenderer videoSecondaryInfoRenderer;
  ItemSectionRenderer itemSectionRenderer;

  factory ResultsContent.fromJson(String str) =>
      ResultsContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResultsContent.fromMap(Map<String, dynamic> json) => ResultsContent(
        videoPrimaryInfoRenderer: json["videoPrimaryInfoRenderer"] == null
            ? null
            : VideoPrimaryInfoRenderer.fromMap(
                json["videoPrimaryInfoRenderer"]),
        videoSecondaryInfoRenderer: json["videoSecondaryInfoRenderer"] == null
            ? null
            : VideoSecondaryInfoRenderer.fromMap(
                json["videoSecondaryInfoRenderer"]),
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ItemSectionRenderer.fromMap(json["itemSectionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "videoPrimaryInfoRenderer": videoPrimaryInfoRenderer == null
            ? null
            : videoPrimaryInfoRenderer.toMap(),
        "videoSecondaryInfoRenderer": videoSecondaryInfoRenderer == null
            ? null
            : videoSecondaryInfoRenderer.toMap(),
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toMap(),
      };
}

class ItemSectionRenderer {
  ItemSectionRenderer({
    this.continuations,
    this.trackingParams,
    this.sectionIdentifier,
  });

  List<Continuation> continuations;
  String trackingParams;
  String sectionIdentifier;

  factory ItemSectionRenderer.fromJson(String str) =>
      ItemSectionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ItemSectionRenderer.fromMap(Map<String, dynamic> json) =>
      ItemSectionRenderer(
        continuations: json["continuations"] == null
            ? null
            : List<Continuation>.from(
                json["continuations"].map((x) => Continuation.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sectionIdentifier: json["sectionIdentifier"] == null
            ? null
            : json["sectionIdentifier"],
      );

  Map<String, dynamic> toMap() => {
        "continuations": continuations == null
            ? null
            : List<dynamic>.from(continuations.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "sectionIdentifier":
            sectionIdentifier == null ? null : sectionIdentifier,
      };
}

class Continuation {
  Continuation({
    this.nextContinuationData,
  });

  NextContinuationData nextContinuationData;

  factory Continuation.fromJson(String str) =>
      Continuation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Continuation.fromMap(Map<String, dynamic> json) => Continuation(
        nextContinuationData: json["nextContinuationData"] == null
            ? null
            : NextContinuationData.fromMap(json["nextContinuationData"]),
      );

  Map<String, dynamic> toMap() => {
        "nextContinuationData":
            nextContinuationData == null ? null : nextContinuationData.toMap(),
      };
}

class NextContinuationData {
  NextContinuationData({
    this.continuation,
    this.clickTrackingParams,
    this.label,
  });

  String continuation;
  String clickTrackingParams;
  DetailsText label;

  factory NextContinuationData.fromJson(String str) =>
      NextContinuationData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NextContinuationData.fromMap(Map<String, dynamic> json) =>
      NextContinuationData(
        continuation:
            json["continuation"] == null ? null : json["continuation"],
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        label:
            json["label"] == null ? null : DetailsText.fromMap(json["label"]),
      );

  Map<String, dynamic> toMap() => {
        "continuation": continuation == null ? null : continuation,
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "label": label == null ? null : label.toMap(),
      };
}

class DetailsText {
  DetailsText({
    this.runs,
  });

  List<DetailsTextRun> runs;

  factory DetailsText.fromJson(String str) =>
      DetailsText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailsText.fromMap(Map<String, dynamic> json) => DetailsText(
        runs: json["runs"] == null
            ? null
            : List<DetailsTextRun>.from(
                json["runs"].map((x) => DetailsTextRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class DetailsTextRun {
  DetailsTextRun({
    this.text,
  });

  String text;

  factory DetailsTextRun.fromJson(String str) =>
      DetailsTextRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailsTextRun.fromMap(Map<String, dynamic> json) => DetailsTextRun(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
      };
}

class VideoPrimaryInfoRenderer {
  VideoPrimaryInfoRenderer({
    this.title,
    this.viewCount,
    this.videoActions,
    this.trackingParams,
    this.sentimentBar,
    this.superTitleLink,
    this.dateText,
  });

  DetailsText title;
  ViewCount viewCount;
  VideoActions videoActions;
  String trackingParams;
  SentimentBar sentimentBar;
  SuperTitleLink superTitleLink;
  CancelText dateText;

  factory VideoPrimaryInfoRenderer.fromJson(String str) =>
      VideoPrimaryInfoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoPrimaryInfoRenderer.fromMap(Map<String, dynamic> json) =>
      VideoPrimaryInfoRenderer(
        title:
            json["title"] == null ? null : DetailsText.fromMap(json["title"]),
        viewCount: json["viewCount"] == null
            ? null
            : ViewCount.fromMap(json["viewCount"]),
        videoActions: json["videoActions"] == null
            ? null
            : VideoActions.fromMap(json["videoActions"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sentimentBar: json["sentimentBar"] == null
            ? null
            : SentimentBar.fromMap(json["sentimentBar"]),
        superTitleLink: json["superTitleLink"] == null
            ? null
            : SuperTitleLink.fromMap(json["superTitleLink"]),
        dateText: json["dateText"] == null
            ? null
            : CancelText.fromMap(json["dateText"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "viewCount": viewCount == null ? null : viewCount.toMap(),
        "videoActions": videoActions == null ? null : videoActions.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "sentimentBar": sentimentBar == null ? null : sentimentBar.toMap(),
        "superTitleLink":
            superTitleLink == null ? null : superTitleLink.toMap(),
        "dateText": dateText == null ? null : dateText.toMap(),
      };
}

class CancelText {
  CancelText({
    this.simpleText,
  });

  String simpleText;

  factory CancelText.fromJson(String str) =>
      CancelText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CancelText.fromMap(Map<String, dynamic> json) => CancelText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toMap() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class SentimentBar {
  SentimentBar({
    this.sentimentBarRenderer,
  });

  SentimentBarRenderer sentimentBarRenderer;

  factory SentimentBar.fromJson(String str) =>
      SentimentBar.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SentimentBar.fromMap(Map<String, dynamic> json) => SentimentBar(
        sentimentBarRenderer: json["sentimentBarRenderer"] == null
            ? null
            : SentimentBarRenderer.fromMap(json["sentimentBarRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "sentimentBarRenderer":
            sentimentBarRenderer == null ? null : sentimentBarRenderer.toMap(),
      };
}

class SentimentBarRenderer {
  SentimentBarRenderer({
    this.percentIfIndifferent,
    this.percentIfLiked,
    this.percentIfDisliked,
    this.likeStatus,
    this.tooltip,
  });

  int percentIfIndifferent;
  int percentIfLiked;
  int percentIfDisliked;
  String likeStatus;
  String tooltip;

  factory SentimentBarRenderer.fromJson(String str) =>
      SentimentBarRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SentimentBarRenderer.fromMap(Map<String, dynamic> json) =>
      SentimentBarRenderer(
        percentIfIndifferent: json["percentIfIndifferent"] == null
            ? null
            : json["percentIfIndifferent"],
        percentIfLiked:
            json["percentIfLiked"] == null ? null : json["percentIfLiked"],
        percentIfDisliked: json["percentIfDisliked"] == null
            ? null
            : json["percentIfDisliked"],
        likeStatus: json["likeStatus"] == null ? null : json["likeStatus"],
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
      );

  Map<String, dynamic> toMap() => {
        "percentIfIndifferent":
            percentIfIndifferent == null ? null : percentIfIndifferent,
        "percentIfLiked": percentIfLiked == null ? null : percentIfLiked,
        "percentIfDisliked":
            percentIfDisliked == null ? null : percentIfDisliked,
        "likeStatus": likeStatus == null ? null : likeStatus,
        "tooltip": tooltip == null ? null : tooltip,
      };
}

class SuperTitleLink {
  SuperTitleLink({
    this.runs,
  });

  List<SuperTitleLinkRun> runs;

  factory SuperTitleLink.fromJson(String str) =>
      SuperTitleLink.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SuperTitleLink.fromMap(Map<String, dynamic> json) => SuperTitleLink(
        runs: json["runs"] == null
            ? null
            : List<SuperTitleLinkRun>.from(
                json["runs"].map((x) => SuperTitleLinkRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class SuperTitleLinkRun {
  SuperTitleLinkRun({
    this.text,
    this.navigationEndpoint,
    this.loggingDirectives,
  });

  String text;
  PurpleNavigationEndpoint navigationEndpoint;
  LoggingDirectives loggingDirectives;

  factory SuperTitleLinkRun.fromJson(String str) =>
      SuperTitleLinkRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SuperTitleLinkRun.fromMap(Map<String, dynamic> json) =>
      SuperTitleLinkRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        loggingDirectives: json["loggingDirectives"] == null
            ? null
            : LoggingDirectives.fromMap(json["loggingDirectives"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "loggingDirectives":
            loggingDirectives == null ? null : loggingDirectives.toMap(),
      };
}

class LoggingDirectives {
  LoggingDirectives({
    this.trackingParams,
    this.visibility,
  });

  String trackingParams;
  Visibility visibility;

  factory LoggingDirectives.fromJson(String str) =>
      LoggingDirectives.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoggingDirectives.fromMap(Map<String, dynamic> json) =>
      LoggingDirectives(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        visibility: json["visibility"] == null
            ? null
            : Visibility.fromMap(json["visibility"]),
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "visibility": visibility == null ? null : visibility.toMap(),
      };
}

class Visibility {
  Visibility({
    this.types,
  });

  String types;

  factory Visibility.fromJson(String str) =>
      Visibility.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Visibility.fromMap(Map<String, dynamic> json) => Visibility(
        types: json["types"] == null ? null : json["types"],
      );

  Map<String, dynamic> toMap() => {
        "types": types == null ? null : types,
      };
}

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  PurpleBrowseEndpoint browseEndpoint;

  factory PurpleNavigationEndpoint.fromJson(String str) =>
      PurpleNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromMap(json["browseEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
      };
}

class PurpleBrowseEndpoint {
  PurpleBrowseEndpoint({
    this.browseId,
    this.params,
  });

  String browseId;
  String params;

  factory PurpleBrowseEndpoint.fromJson(String str) =>
      PurpleBrowseEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleBrowseEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toMap() => {
        "browseId": browseId == null ? null : browseId,
        "params": params == null ? null : params,
      };
}

class VideoActions {
  VideoActions({
    this.menuRenderer,
  });

  VideoActionsMenuRenderer menuRenderer;

  factory VideoActions.fromJson(String str) =>
      VideoActions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoActions.fromMap(Map<String, dynamic> json) => VideoActions(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : VideoActionsMenuRenderer.fromMap(json["menuRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toMap(),
      };
}

class VideoActionsMenuRenderer {
  VideoActionsMenuRenderer({
    this.items,
    this.trackingParams,
    this.topLevelButtons,
    this.accessibility,
  });

  List<PurpleItem> items;
  String trackingParams;
  List<TopLevelButton> topLevelButtons;
  AccessibilityData accessibility;

  factory VideoActionsMenuRenderer.fromJson(String str) =>
      VideoActionsMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoActionsMenuRenderer.fromMap(Map<String, dynamic> json) =>
      VideoActionsMenuRenderer(
        items: json["items"] == null
            ? null
            : List<PurpleItem>.from(
                json["items"].map((x) => PurpleItem.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topLevelButtons: json["topLevelButtons"] == null
            ? null
            : List<TopLevelButton>.from(
                json["topLevelButtons"].map((x) => TopLevelButton.fromMap(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
      );

  Map<String, dynamic> toMap() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topLevelButtons": topLevelButtons == null
            ? null
            : List<dynamic>.from(topLevelButtons.map((x) => x.toMap())),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
      };
}

class AccessibilityData {
  AccessibilityData({
    this.accessibilityData,
  });

  Accessibility accessibilityData;

  factory AccessibilityData.fromJson(String str) =>
      AccessibilityData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AccessibilityData.fromMap(Map<String, dynamic> json) =>
      AccessibilityData(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromMap(json["accessibilityData"]),
      );

  Map<String, dynamic> toMap() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
      };
}

class Accessibility {
  Accessibility({
    this.label,
  });

  String label;

  factory Accessibility.fromJson(String str) =>
      Accessibility.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Accessibility.fromMap(Map<String, dynamic> json) => Accessibility(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toMap() => {
        "label": label == null ? null : label,
      };
}

class PurpleItem {
  PurpleItem({
    this.menuNavigationItemRenderer,
    this.menuServiceItemRenderer,
  });

  MenuItemRenderer menuNavigationItemRenderer;
  MenuItemRenderer menuServiceItemRenderer;

  factory PurpleItem.fromJson(String str) =>
      PurpleItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleItem.fromMap(Map<String, dynamic> json) => PurpleItem(
        menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromMap(json["menuNavigationItemRenderer"]),
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromMap(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuNavigationItemRenderer": menuNavigationItemRenderer == null
            ? null
            : menuNavigationItemRenderer.toMap(),
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toMap(),
      };
}

class MenuItemRenderer {
  MenuItemRenderer({
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.serviceEndpoint,
  });

  DetailsText text;
  Icon icon;
  MenuNavigationItemRendererNavigationEndpoint navigationEndpoint;
  String trackingParams;
  MenuNavigationItemRendererServiceEndpoint serviceEndpoint;

  factory MenuItemRenderer.fromJson(String str) =>
      MenuItemRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuItemRenderer.fromMap(Map<String, dynamic> json) =>
      MenuItemRenderer(
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : MenuNavigationItemRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : MenuNavigationItemRendererServiceEndpoint.fromMap(
                json["serviceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
      };
}

class Icon {
  Icon({
    this.iconType,
  });

  String iconType;

  factory Icon.fromJson(String str) => Icon.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Icon.fromMap(Map<String, dynamic> json) => Icon(
        iconType: json["iconType"] == null ? null : json["iconType"],
      );

  Map<String, dynamic> toMap() => {
        "iconType": iconType == null ? null : iconType,
      };
}

class MenuNavigationItemRendererNavigationEndpoint {
  MenuNavigationItemRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  String clickTrackingParams;
  DefaultNavigationEndpointCommandMetadata commandMetadata;
  PurpleModalEndpoint modalEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(String str) =>
      MenuNavigationItemRendererNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuNavigationItemRendererNavigationEndpoint.fromMap(
          Map<String, dynamic> json) =>
      MenuNavigationItemRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : PurpleModalEndpoint.fromMap(json["modalEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toMap(),
      };
}

class DefaultNavigationEndpointCommandMetadata {
  DefaultNavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  FluffyWebCommandMetadata webCommandMetadata;

  factory DefaultNavigationEndpointCommandMetadata.fromJson(String str) =>
      DefaultNavigationEndpointCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DefaultNavigationEndpointCommandMetadata.fromMap(
          Map<String, dynamic> json) =>
      DefaultNavigationEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : FluffyWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class FluffyWebCommandMetadata {
  FluffyWebCommandMetadata({
    this.ignoreNavigation,
  });

  bool ignoreNavigation;

  factory FluffyWebCommandMetadata.fromJson(String str) =>
      FluffyWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toMap() => {
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
      };
}

class PurpleModalEndpoint {
  PurpleModalEndpoint({
    this.modal,
  });

  PurpleModal modal;

  factory PurpleModalEndpoint.fromJson(String str) =>
      PurpleModalEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleModalEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleModalEndpoint(
        modal:
            json["modal"] == null ? null : PurpleModal.fromMap(json["modal"]),
      );

  Map<String, dynamic> toMap() => {
        "modal": modal == null ? null : modal.toMap(),
      };
}

class PurpleModal {
  PurpleModal({
    this.modalWithTitleAndButtonRenderer,
  });

  PurpleModalWithTitleAndButtonRenderer modalWithTitleAndButtonRenderer;

  factory PurpleModal.fromJson(String str) =>
      PurpleModal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleModal.fromMap(Map<String, dynamic> json) => PurpleModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : PurpleModalWithTitleAndButtonRenderer.fromMap(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toMap(),
      };
}

class PurpleModalWithTitleAndButtonRenderer {
  PurpleModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  CancelText title;
  DetailsText content;
  PurpleButton button;

  factory PurpleModalWithTitleAndButtonRenderer.fromJson(String str) =>
      PurpleModalWithTitleAndButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleModalWithTitleAndButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      PurpleModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        content: json["content"] == null
            ? null
            : DetailsText.fromMap(json["content"]),
        button: json["button"] == null
            ? null
            : PurpleButton.fromMap(json["button"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "content": content == null ? null : content.toMap(),
        "button": button == null ? null : button.toMap(),
      };
}

class PurpleButton {
  PurpleButton({
    this.buttonRenderer,
  });

  PurpleButtonRenderer buttonRenderer;

  factory PurpleButton.fromJson(String str) =>
      PurpleButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleButton.fromMap(Map<String, dynamic> json) => PurpleButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : PurpleButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class PurpleButtonRenderer {
  PurpleButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  String style;
  String size;
  bool isDisabled;
  CancelText text;
  FluffyNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory PurpleButtonRenderer.fromJson(String str) =>
      PurpleButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleButtonRenderer.fromMap(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : CancelText.fromMap(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  PurpleSignInEndpoint signInEndpoint;

  factory FluffyNavigationEndpoint.fromJson(String str) =>
      FluffyNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : PurpleSignInEndpoint.fromMap(json["signInEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toMap(),
      };
}

class PurpleSignInEndpoint {
  PurpleSignInEndpoint({
    this.hack,
  });

  bool hack;

  factory PurpleSignInEndpoint.fromJson(String str) =>
      PurpleSignInEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleSignInEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleSignInEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toMap() => {
        "hack": hack == null ? null : hack,
      };
}

class MenuNavigationItemRendererServiceEndpoint {
  MenuNavigationItemRendererServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  PurpleCommandMetadata commandMetadata;
  PurpleSignalServiceEndpoint signalServiceEndpoint;

  factory MenuNavigationItemRendererServiceEndpoint.fromJson(String str) =>
      MenuNavigationItemRendererServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuNavigationItemRendererServiceEndpoint.fromMap(
          Map<String, dynamic> json) =>
      MenuNavigationItemRendererServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromMap(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : PurpleSignalServiceEndpoint.fromMap(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class PurpleCommandMetadata {
  PurpleCommandMetadata({
    this.webCommandMetadata,
  });

  TentacledWebCommandMetadata webCommandMetadata;

  factory PurpleCommandMetadata.fromJson(String str) =>
      PurpleCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleCommandMetadata.fromMap(Map<String, dynamic> json) =>
      PurpleCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : TentacledWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class TentacledWebCommandMetadata {
  TentacledWebCommandMetadata({
    this.sendPost,
  });

  bool sendPost;

  factory TentacledWebCommandMetadata.fromJson(String str) =>
      TentacledWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toMap() => {
        "sendPost": sendPost == null ? null : sendPost,
      };
}

class PurpleSignalServiceEndpoint {
  PurpleSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<PurpleAction> actions;

  factory PurpleSignalServiceEndpoint.fromJson(String str) =>
      PurpleSignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleSignalServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class PurpleAction {
  PurpleAction({
    this.clickTrackingParams,
    this.changeEngagementPanelVisibilityAction,
    this.addToPlaylistCommand,
    this.openPopupAction,
  });

  String clickTrackingParams;
  ChangeEngagementPanelVisibilityAction changeEngagementPanelVisibilityAction;
  AddToPlaylistCommand addToPlaylistCommand;
  PurpleOpenPopupAction openPopupAction;

  factory PurpleAction.fromJson(String str) =>
      PurpleAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleAction.fromMap(Map<String, dynamic> json) => PurpleAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        changeEngagementPanelVisibilityAction:
            json["changeEngagementPanelVisibilityAction"] == null
                ? null
                : ChangeEngagementPanelVisibilityAction.fromMap(
                    json["changeEngagementPanelVisibilityAction"]),
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromMap(json["addToPlaylistCommand"]),
        openPopupAction: json["openPopupAction"] == null
            ? null
            : PurpleOpenPopupAction.fromMap(json["openPopupAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "changeEngagementPanelVisibilityAction":
            changeEngagementPanelVisibilityAction == null
                ? null
                : changeEngagementPanelVisibilityAction.toMap(),
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toMap(),
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toMap(),
      };
}

class AddToPlaylistCommand {
  AddToPlaylistCommand({
    this.openMiniplayer,
    this.openListPanel,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  bool openMiniplayer;
  bool openListPanel;
  String videoId;
  ListType listType;
  OnCreateListCommand onCreateListCommand;
  List<String> videoIds;

  factory AddToPlaylistCommand.fromJson(String str) =>
      AddToPlaylistCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddToPlaylistCommand.fromMap(Map<String, dynamic> json) =>
      AddToPlaylistCommand(
        openMiniplayer:
            json["openMiniplayer"] == null ? null : json["openMiniplayer"],
        openListPanel:
            json["openListPanel"] == null ? null : json["openListPanel"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        listType: json["listType"] == null
            ? null
            : listTypeValues.map[json["listType"]],
        onCreateListCommand: json["onCreateListCommand"] == null
            ? null
            : OnCreateListCommand.fromMap(json["onCreateListCommand"]),
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "openMiniplayer": openMiniplayer == null ? null : openMiniplayer,
        "openListPanel": openListPanel == null ? null : openListPanel,
        "videoId": videoId == null ? null : videoId,
        "listType": listType == null ? null : listTypeValues.reverse[listType],
        "onCreateListCommand":
            onCreateListCommand == null ? null : onCreateListCommand.toMap(),
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
      };
}

enum ListType { PLAYLIST_EDIT_LIST_TYPE_QUEUE }

final listTypeValues = EnumValues(
    {"PLAYLIST_EDIT_LIST_TYPE_QUEUE": ListType.PLAYLIST_EDIT_LIST_TYPE_QUEUE});

class OnCreateListCommand {
  OnCreateListCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.createPlaylistServiceEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  factory OnCreateListCommand.fromJson(String str) =>
      OnCreateListCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OnCreateListCommand.fromMap(Map<String, dynamic> json) =>
      OnCreateListCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        createPlaylistServiceEndpoint:
            json["createPlaylistServiceEndpoint"] == null
                ? null
                : CreatePlaylistServiceEndpoint.fromMap(
                    json["createPlaylistServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "createPlaylistServiceEndpoint": createPlaylistServiceEndpoint == null
            ? null
            : createPlaylistServiceEndpoint.toMap(),
      };
}

class OnCreateListCommandCommandMetadata {
  OnCreateListCommandCommandMetadata({
    this.webCommandMetadata,
  });

  StickyWebCommandMetadata webCommandMetadata;

  factory OnCreateListCommandCommandMetadata.fromJson(String str) =>
      OnCreateListCommandCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OnCreateListCommandCommandMetadata.fromMap(
          Map<String, dynamic> json) =>
      OnCreateListCommandCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : StickyWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class StickyWebCommandMetadata {
  StickyWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  bool sendPost;
  FluffyApiUrl apiUrl;

  factory StickyWebCommandMetadata.fromJson(String str) =>
      StickyWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickyWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      StickyWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl: json["apiUrl"] == null
            ? null
            : fluffyApiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toMap() => {
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : fluffyApiUrlValues.reverse[apiUrl],
      };
}

enum FluffyApiUrl {
  YOUTUBEI_V1_SHARE_GET_SHARE_PANEL,
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_NEXT,
  YOUTUBEI_V1_GET_TRANSCRIPT,
  YOUTUBEI_V1_FEEDBACK,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final fluffyApiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu":
      FluffyApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist":
      FluffyApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/feedback": FluffyApiUrl.YOUTUBEI_V1_FEEDBACK,
  "/youtubei/v1/get_transcript": FluffyApiUrl.YOUTUBEI_V1_GET_TRANSCRIPT,
  "/youtubei/v1/next": FluffyApiUrl.YOUTUBEI_V1_NEXT,
  "/youtubei/v1/playlist/create": FluffyApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
  "/youtubei/v1/share/get_share_panel":
      FluffyApiUrl.YOUTUBEI_V1_SHARE_GET_SHARE_PANEL
});

class CreatePlaylistServiceEndpoint {
  CreatePlaylistServiceEndpoint({
    this.videoIds,
    this.params,
  });

  List<String> videoIds;
  Params params;

  factory CreatePlaylistServiceEndpoint.fromJson(String str) =>
      CreatePlaylistServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CreatePlaylistServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      CreatePlaylistServiceEndpoint(
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
        params:
            json["params"] == null ? null : paramsValues.map[json["params"]],
      );

  Map<String, dynamic> toMap() => {
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
        "params": params == null ? null : paramsValues.reverse[params],
      };
}

enum Params { CAQ_3_D }

final paramsValues = EnumValues({"CAQ%3D": Params.CAQ_3_D});

class ChangeEngagementPanelVisibilityAction {
  ChangeEngagementPanelVisibilityAction({
    this.targetId,
    this.visibility,
  });

  String targetId;
  String visibility;

  factory ChangeEngagementPanelVisibilityAction.fromJson(String str) =>
      ChangeEngagementPanelVisibilityAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChangeEngagementPanelVisibilityAction.fromMap(
          Map<String, dynamic> json) =>
      ChangeEngagementPanelVisibilityAction(
        targetId: json["targetId"] == null ? null : json["targetId"],
        visibility: json["visibility"] == null ? null : json["visibility"],
      );

  Map<String, dynamic> toMap() => {
        "targetId": targetId == null ? null : targetId,
        "visibility": visibility == null ? null : visibility,
      };
}

class PurpleOpenPopupAction {
  PurpleOpenPopupAction({
    this.popup,
    this.popupType,
  });

  PurplePopup popup;
  PopupType popupType;

  factory PurpleOpenPopupAction.fromJson(String str) =>
      PurpleOpenPopupAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleOpenPopupAction.fromMap(Map<String, dynamic> json) =>
      PurpleOpenPopupAction(
        popup:
            json["popup"] == null ? null : PurplePopup.fromMap(json["popup"]),
        popupType: json["popupType"] == null
            ? null
            : popupTypeValues.map[json["popupType"]],
      );

  Map<String, dynamic> toMap() => {
        "popup": popup == null ? null : popup.toMap(),
        "popupType":
            popupType == null ? null : popupTypeValues.reverse[popupType],
      };
}

class PurplePopup {
  PurplePopup({
    this.notificationActionRenderer,
  });

  NotificationActionRenderer notificationActionRenderer;

  factory PurplePopup.fromJson(String str) =>
      PurplePopup.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurplePopup.fromMap(Map<String, dynamic> json) => PurplePopup(
        notificationActionRenderer: json["notificationActionRenderer"] == null
            ? null
            : NotificationActionRenderer.fromMap(
                json["notificationActionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "notificationActionRenderer": notificationActionRenderer == null
            ? null
            : notificationActionRenderer.toMap(),
      };
}

class NotificationActionRenderer {
  NotificationActionRenderer({
    this.responseText,
    this.trackingParams,
  });

  CancelText responseText;
  String trackingParams;

  factory NotificationActionRenderer.fromJson(String str) =>
      NotificationActionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NotificationActionRenderer.fromMap(Map<String, dynamic> json) =>
      NotificationActionRenderer(
        responseText: json["responseText"] == null
            ? null
            : CancelText.fromMap(json["responseText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "responseText": responseText == null ? null : responseText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum PopupType { TOAST }

final popupTypeValues = EnumValues({"TOAST": PopupType.TOAST});

enum Signal { CLIENT_SIGNAL }

final signalValues = EnumValues({"CLIENT_SIGNAL": Signal.CLIENT_SIGNAL});

class TopLevelButton {
  TopLevelButton({
    this.toggleButtonRenderer,
    this.buttonRenderer,
  });

  ToggleButtonRenderer toggleButtonRenderer;
  TopLevelButtonButtonRenderer buttonRenderer;

  factory TopLevelButton.fromJson(String str) =>
      TopLevelButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopLevelButton.fromMap(Map<String, dynamic> json) => TopLevelButton(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : ToggleButtonRenderer.fromMap(json["toggleButtonRenderer"]),
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopLevelButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "toggleButtonRenderer":
            toggleButtonRenderer == null ? null : toggleButtonRenderer.toMap(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class TopLevelButtonButtonRenderer {
  TopLevelButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.serviceEndpoint,
    this.icon,
    this.accessibility,
    this.tooltip,
    this.trackingParams,
    this.navigationEndpoint,
    this.accessibilityData,
  });

  String style;
  String size;
  bool isDisabled;
  DetailsText text;
  PurpleServiceEndpoint serviceEndpoint;
  Icon icon;
  Accessibility accessibility;
  String tooltip;
  String trackingParams;
  DefaultNavigationEndpointClass navigationEndpoint;
  AccessibilityData accessibilityData;

  factory TopLevelButtonButtonRenderer.fromJson(String str) =>
      TopLevelButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopLevelButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      TopLevelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : PurpleServiceEndpoint.fromMap(json["serviceEndpoint"]),
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromMap(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : DefaultNavigationEndpointClass.fromMap(
                json["navigationEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibilityData"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
      };
}

class DefaultNavigationEndpointClass {
  DefaultNavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  String clickTrackingParams;
  DefaultNavigationEndpointCommandMetadata commandMetadata;
  DefaultNavigationEndpointModalEndpoint modalEndpoint;

  factory DefaultNavigationEndpointClass.fromJson(String str) =>
      DefaultNavigationEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DefaultNavigationEndpointClass.fromMap(Map<String, dynamic> json) =>
      DefaultNavigationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : DefaultNavigationEndpointModalEndpoint.fromMap(
                json["modalEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toMap(),
      };
}

class DefaultNavigationEndpointModalEndpoint {
  DefaultNavigationEndpointModalEndpoint({
    this.modal,
  });

  FluffyModal modal;

  factory DefaultNavigationEndpointModalEndpoint.fromJson(String str) =>
      DefaultNavigationEndpointModalEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DefaultNavigationEndpointModalEndpoint.fromMap(
          Map<String, dynamic> json) =>
      DefaultNavigationEndpointModalEndpoint(
        modal:
            json["modal"] == null ? null : FluffyModal.fromMap(json["modal"]),
      );

  Map<String, dynamic> toMap() => {
        "modal": modal == null ? null : modal.toMap(),
      };
}

class FluffyModal {
  FluffyModal({
    this.modalWithTitleAndButtonRenderer,
  });

  FluffyModalWithTitleAndButtonRenderer modalWithTitleAndButtonRenderer;

  factory FluffyModal.fromJson(String str) =>
      FluffyModal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyModal.fromMap(Map<String, dynamic> json) => FluffyModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : FluffyModalWithTitleAndButtonRenderer.fromMap(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toMap(),
      };
}

class FluffyModalWithTitleAndButtonRenderer {
  FluffyModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  CancelText title;
  CancelText content;
  FluffyButton button;

  factory FluffyModalWithTitleAndButtonRenderer.fromJson(String str) =>
      FluffyModalWithTitleAndButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyModalWithTitleAndButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      FluffyModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        content: json["content"] == null
            ? null
            : CancelText.fromMap(json["content"]),
        button: json["button"] == null
            ? null
            : FluffyButton.fromMap(json["button"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "content": content == null ? null : content.toMap(),
        "button": button == null ? null : button.toMap(),
      };
}

class FluffyButton {
  FluffyButton({
    this.buttonRenderer,
  });

  FluffyButtonRenderer buttonRenderer;

  factory FluffyButton.fromJson(String str) =>
      FluffyButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyButton.fromMap(Map<String, dynamic> json) => FluffyButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : FluffyButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class FluffyButtonRenderer {
  FluffyButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  String style;
  String size;
  bool isDisabled;
  CancelText text;
  TentacledNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory FluffyButtonRenderer.fromJson(String str) =>
      FluffyButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyButtonRenderer.fromMap(Map<String, dynamic> json) =>
      FluffyButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : CancelText.fromMap(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : TentacledNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  FluffySignInEndpoint signInEndpoint;

  factory TentacledNavigationEndpoint.fromJson(String str) =>
      TentacledNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      TentacledNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : FluffySignInEndpoint.fromMap(json["signInEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toMap(),
      };
}

class FluffySignInEndpoint {
  FluffySignInEndpoint({
    this.nextEndpoint,
    this.idamTag,
  });

  Endpoint nextEndpoint;
  String idamTag;

  factory FluffySignInEndpoint.fromJson(String str) =>
      FluffySignInEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffySignInEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffySignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : Endpoint.fromMap(json["nextEndpoint"]),
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toMap() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toMap(),
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  CurrentVideoEndpointWatchEndpoint watchEndpoint;

  factory Endpoint.fromJson(String str) => Endpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Endpoint.fromMap(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : CurrentVideoEndpointWatchEndpoint.fromMap(json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class CurrentVideoEndpointWatchEndpoint {
  CurrentVideoEndpointWatchEndpoint({
    this.videoId,
  });

  String videoId;

  factory CurrentVideoEndpointWatchEndpoint.fromJson(String str) =>
      CurrentVideoEndpointWatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CurrentVideoEndpointWatchEndpoint.fromMap(
          Map<String, dynamic> json) =>
      CurrentVideoEndpointWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class PurpleServiceEndpoint {
  PurpleServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.shareEntityServiceEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  ShareEntityServiceEndpoint shareEntityServiceEndpoint;

  factory PurpleServiceEndpoint.fromJson(String str) =>
      PurpleServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        shareEntityServiceEndpoint: json["shareEntityServiceEndpoint"] == null
            ? null
            : ShareEntityServiceEndpoint.fromMap(
                json["shareEntityServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "shareEntityServiceEndpoint": shareEntityServiceEndpoint == null
            ? null
            : shareEntityServiceEndpoint.toMap(),
      };
}

class ShareEntityServiceEndpoint {
  ShareEntityServiceEndpoint({
    this.serializedShareEntity,
    this.commands,
  });

  String serializedShareEntity;
  List<CommandElement> commands;

  factory ShareEntityServiceEndpoint.fromJson(String str) =>
      ShareEntityServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShareEntityServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      ShareEntityServiceEndpoint(
        serializedShareEntity: json["serializedShareEntity"] == null
            ? null
            : json["serializedShareEntity"],
        commands: json["commands"] == null
            ? null
            : List<CommandElement>.from(
                json["commands"].map((x) => CommandElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "serializedShareEntity":
            serializedShareEntity == null ? null : serializedShareEntity,
        "commands": commands == null
            ? null
            : List<dynamic>.from(commands.map((x) => x.toMap())),
      };
}

class CommandElement {
  CommandElement({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  String clickTrackingParams;
  CommandOpenPopupAction openPopupAction;

  factory CommandElement.fromJson(String str) =>
      CommandElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CommandElement.fromMap(Map<String, dynamic> json) => CommandElement(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : CommandOpenPopupAction.fromMap(json["openPopupAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toMap(),
      };
}

class CommandOpenPopupAction {
  CommandOpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  FluffyPopup popup;
  String popupType;
  bool beReused;

  factory CommandOpenPopupAction.fromJson(String str) =>
      CommandOpenPopupAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CommandOpenPopupAction.fromMap(Map<String, dynamic> json) =>
      CommandOpenPopupAction(
        popup:
            json["popup"] == null ? null : FluffyPopup.fromMap(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toMap() => {
        "popup": popup == null ? null : popup.toMap(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class FluffyPopup {
  FluffyPopup({
    this.unifiedSharePanelRenderer,
  });

  UnifiedSharePanelRenderer unifiedSharePanelRenderer;

  factory FluffyPopup.fromJson(String str) =>
      FluffyPopup.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyPopup.fromMap(Map<String, dynamic> json) => FluffyPopup(
        unifiedSharePanelRenderer: json["unifiedSharePanelRenderer"] == null
            ? null
            : UnifiedSharePanelRenderer.fromMap(
                json["unifiedSharePanelRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "unifiedSharePanelRenderer": unifiedSharePanelRenderer == null
            ? null
            : unifiedSharePanelRenderer.toMap(),
      };
}

class UnifiedSharePanelRenderer {
  UnifiedSharePanelRenderer({
    this.trackingParams,
    this.showLoadingSpinner,
  });

  String trackingParams;
  bool showLoadingSpinner;

  factory UnifiedSharePanelRenderer.fromJson(String str) =>
      UnifiedSharePanelRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UnifiedSharePanelRenderer.fromMap(Map<String, dynamic> json) =>
      UnifiedSharePanelRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showLoadingSpinner: json["showLoadingSpinner"] == null
            ? null
            : json["showLoadingSpinner"],
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "showLoadingSpinner":
            showLoadingSpinner == null ? null : showLoadingSpinner,
      };
}

class ToggleButtonRenderer {
  ToggleButtonRenderer({
    this.style,
    this.isToggled,
    this.isDisabled,
    this.defaultIcon,
    this.defaultText,
    this.toggledText,
    this.accessibility,
    this.trackingParams,
    this.defaultTooltip,
    this.toggledTooltip,
    this.toggledStyle,
    this.defaultNavigationEndpoint,
    this.accessibilityData,
    this.toggleButtonSupportedData,
    this.targetId,
  });

  StyleClass style;
  bool isToggled;
  bool isDisabled;
  Icon defaultIcon;
  LengthText defaultText;
  LengthText toggledText;
  Accessibility accessibility;
  String trackingParams;
  String defaultTooltip;
  String toggledTooltip;
  StyleClass toggledStyle;
  DefaultNavigationEndpointClass defaultNavigationEndpoint;
  AccessibilityData accessibilityData;
  ToggleButtonSupportedData toggleButtonSupportedData;
  String targetId;

  factory ToggleButtonRenderer.fromJson(String str) =>
      ToggleButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ToggleButtonRenderer.fromMap(Map<String, dynamic> json) =>
      ToggleButtonRenderer(
        style: json["style"] == null ? null : StyleClass.fromMap(json["style"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : Icon.fromMap(json["defaultIcon"]),
        defaultText: json["defaultText"] == null
            ? null
            : LengthText.fromMap(json["defaultText"]),
        toggledText: json["toggledText"] == null
            ? null
            : LengthText.fromMap(json["toggledText"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromMap(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultTooltip:
            json["defaultTooltip"] == null ? null : json["defaultTooltip"],
        toggledTooltip:
            json["toggledTooltip"] == null ? null : json["toggledTooltip"],
        toggledStyle: json["toggledStyle"] == null
            ? null
            : StyleClass.fromMap(json["toggledStyle"]),
        defaultNavigationEndpoint: json["defaultNavigationEndpoint"] == null
            ? null
            : DefaultNavigationEndpointClass.fromMap(
                json["defaultNavigationEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibilityData"]),
        toggleButtonSupportedData: json["toggleButtonSupportedData"] == null
            ? null
            : ToggleButtonSupportedData.fromMap(
                json["toggleButtonSupportedData"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style.toMap(),
        "isToggled": isToggled == null ? null : isToggled,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "defaultIcon": defaultIcon == null ? null : defaultIcon.toMap(),
        "defaultText": defaultText == null ? null : defaultText.toMap(),
        "toggledText": toggledText == null ? null : toggledText.toMap(),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultTooltip": defaultTooltip == null ? null : defaultTooltip,
        "toggledTooltip": toggledTooltip == null ? null : toggledTooltip,
        "toggledStyle": toggledStyle == null ? null : toggledStyle.toMap(),
        "defaultNavigationEndpoint": defaultNavigationEndpoint == null
            ? null
            : defaultNavigationEndpoint.toMap(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
        "toggleButtonSupportedData": toggleButtonSupportedData == null
            ? null
            : toggleButtonSupportedData.toMap(),
        "targetId": targetId == null ? null : targetId,
      };
}

class LengthText {
  LengthText({
    this.accessibility,
    this.simpleText,
  });

  AccessibilityData accessibility;
  String simpleText;

  factory LengthText.fromJson(String str) =>
      LengthText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LengthText.fromMap(Map<String, dynamic> json) => LengthText(
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toMap() => {
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class StyleClass {
  StyleClass({
    this.styleType,
  });

  String styleType;

  factory StyleClass.fromJson(String str) =>
      StyleClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StyleClass.fromMap(Map<String, dynamic> json) => StyleClass(
        styleType: json["styleType"] == null ? null : json["styleType"],
      );

  Map<String, dynamic> toMap() => {
        "styleType": styleType == null ? null : styleType,
      };
}

class ToggleButtonSupportedData {
  ToggleButtonSupportedData({
    this.toggleButtonIdData,
  });

  ToggleButtonIdData toggleButtonIdData;

  factory ToggleButtonSupportedData.fromJson(String str) =>
      ToggleButtonSupportedData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ToggleButtonSupportedData.fromMap(Map<String, dynamic> json) =>
      ToggleButtonSupportedData(
        toggleButtonIdData: json["toggleButtonIdData"] == null
            ? null
            : ToggleButtonIdData.fromMap(json["toggleButtonIdData"]),
      );

  Map<String, dynamic> toMap() => {
        "toggleButtonIdData":
            toggleButtonIdData == null ? null : toggleButtonIdData.toMap(),
      };
}

class ToggleButtonIdData {
  ToggleButtonIdData({
    this.id,
  });

  String id;

  factory ToggleButtonIdData.fromJson(String str) =>
      ToggleButtonIdData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ToggleButtonIdData.fromMap(Map<String, dynamic> json) =>
      ToggleButtonIdData(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
      };
}

class ViewCount {
  ViewCount({
    this.videoViewCountRenderer,
  });

  VideoViewCountRenderer videoViewCountRenderer;

  factory ViewCount.fromJson(String str) => ViewCount.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ViewCount.fromMap(Map<String, dynamic> json) => ViewCount(
        videoViewCountRenderer: json["videoViewCountRenderer"] == null
            ? null
            : VideoViewCountRenderer.fromMap(json["videoViewCountRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "videoViewCountRenderer": videoViewCountRenderer == null
            ? null
            : videoViewCountRenderer.toMap(),
      };
}

class VideoViewCountRenderer {
  VideoViewCountRenderer({
    this.viewCount,
    this.shortViewCount,
  });

  CancelText viewCount;
  CancelText shortViewCount;

  factory VideoViewCountRenderer.fromJson(String str) =>
      VideoViewCountRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoViewCountRenderer.fromMap(Map<String, dynamic> json) =>
      VideoViewCountRenderer(
        viewCount: json["viewCount"] == null
            ? null
            : CancelText.fromMap(json["viewCount"]),
        shortViewCount: json["shortViewCount"] == null
            ? null
            : CancelText.fromMap(json["shortViewCount"]),
      );

  Map<String, dynamic> toMap() => {
        "viewCount": viewCount == null ? null : viewCount.toMap(),
        "shortViewCount":
            shortViewCount == null ? null : shortViewCount.toMap(),
      };
}

class VideoSecondaryInfoRenderer {
  VideoSecondaryInfoRenderer({
    this.owner,
    this.description,
    this.subscribeButton,
    this.metadataRowContainer,
    this.showMoreText,
    this.showLessText,
    this.trackingParams,
    this.defaultExpanded,
    this.descriptionCollapsedLines,
  });

  Owner owner;
  Description description;
  SubscribeButton subscribeButton;
  MetadataRowContainer metadataRowContainer;
  DetailsText showMoreText;
  DetailsText showLessText;
  String trackingParams;
  bool defaultExpanded;
  int descriptionCollapsedLines;

  factory VideoSecondaryInfoRenderer.fromJson(String str) =>
      VideoSecondaryInfoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoSecondaryInfoRenderer.fromMap(Map<String, dynamic> json) =>
      VideoSecondaryInfoRenderer(
        owner: json["owner"] == null ? null : Owner.fromMap(json["owner"]),
        description: json["description"] == null
            ? null
            : Description.fromMap(json["description"]),
        subscribeButton: json["subscribeButton"] == null
            ? null
            : SubscribeButton.fromMap(json["subscribeButton"]),
        metadataRowContainer: json["metadataRowContainer"] == null
            ? null
            : MetadataRowContainer.fromMap(json["metadataRowContainer"]),
        showMoreText: json["showMoreText"] == null
            ? null
            : DetailsText.fromMap(json["showMoreText"]),
        showLessText: json["showLessText"] == null
            ? null
            : DetailsText.fromMap(json["showLessText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultExpanded:
            json["defaultExpanded"] == null ? null : json["defaultExpanded"],
        descriptionCollapsedLines: json["descriptionCollapsedLines"] == null
            ? null
            : json["descriptionCollapsedLines"],
      );

  Map<String, dynamic> toMap() => {
        "owner": owner == null ? null : owner.toMap(),
        "description": description == null ? null : description.toMap(),
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toMap(),
        "metadataRowContainer":
            metadataRowContainer == null ? null : metadataRowContainer.toMap(),
        "showMoreText": showMoreText == null ? null : showMoreText.toMap(),
        "showLessText": showLessText == null ? null : showLessText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultExpanded": defaultExpanded == null ? null : defaultExpanded,
        "descriptionCollapsedLines": descriptionCollapsedLines == null
            ? null
            : descriptionCollapsedLines,
      };
}

class Description {
  Description({
    this.runs,
  });

  List<DescriptionRun> runs;

  factory Description.fromJson(String str) =>
      Description.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Description.fromMap(Map<String, dynamic> json) => Description(
        runs: json["runs"] == null
            ? null
            : List<DescriptionRun>.from(
                json["runs"].map((x) => DescriptionRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class DescriptionRun {
  DescriptionRun({
    this.text,
    this.navigationEndpoint,
    this.loggingDirectives,
  });

  String text;
  StickyNavigationEndpoint navigationEndpoint;
  LoggingDirectives loggingDirectives;

  factory DescriptionRun.fromJson(String str) =>
      DescriptionRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DescriptionRun.fromMap(Map<String, dynamic> json) => DescriptionRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : StickyNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        loggingDirectives: json["loggingDirectives"] == null
            ? null
            : LoggingDirectives.fromMap(json["loggingDirectives"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "loggingDirectives":
            loggingDirectives == null ? null : loggingDirectives.toMap(),
      };
}

class StickyNavigationEndpoint {
  StickyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
    this.watchEndpoint,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  PurpleBrowseEndpoint browseEndpoint;
  OnTapWatchEndpoint watchEndpoint;
  PurpleUrlEndpoint urlEndpoint;

  factory StickyNavigationEndpoint.fromJson(String str) =>
      StickyNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickyNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      StickyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromMap(json["browseEndpoint"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : OnTapWatchEndpoint.fromMap(json["watchEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : PurpleUrlEndpoint.fromMap(json["urlEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toMap(),
      };
}

class PurpleUrlEndpoint {
  PurpleUrlEndpoint({
    this.url,
    this.nofollow,
    this.target,
  });

  String url;
  bool nofollow;
  String target;

  factory PurpleUrlEndpoint.fromJson(String str) =>
      PurpleUrlEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleUrlEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "nofollow": nofollow == null ? null : nofollow,
        "target": target == null ? null : target,
      };
}

class OnTapWatchEndpoint {
  OnTapWatchEndpoint({
    this.videoId,
    this.continuePlayback,
    this.startTimeSeconds,
  });

  VideoId videoId;
  bool continuePlayback;
  int startTimeSeconds;

  factory OnTapWatchEndpoint.fromJson(String str) =>
      OnTapWatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OnTapWatchEndpoint.fromMap(Map<String, dynamic> json) =>
      OnTapWatchEndpoint(
        videoId:
            json["videoId"] == null ? null : videoIdValues.map[json["videoId"]],
        continuePlayback:
            json["continuePlayback"] == null ? null : json["continuePlayback"],
        startTimeSeconds:
            json["startTimeSeconds"] == null ? null : json["startTimeSeconds"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoIdValues.reverse[videoId],
        "continuePlayback": continuePlayback == null ? null : continuePlayback,
        "startTimeSeconds": startTimeSeconds == null ? null : startTimeSeconds,
      };
}

enum VideoId { X1_LHDKLDT38 }

final videoIdValues = EnumValues({"x1LHDKLDT38": VideoId.X1_LHDKLDT38});

class MetadataRowContainer {
  MetadataRowContainer({
    this.metadataRowContainerRenderer,
  });

  MetadataRowContainerRenderer metadataRowContainerRenderer;

  factory MetadataRowContainer.fromJson(String str) =>
      MetadataRowContainer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MetadataRowContainer.fromMap(Map<String, dynamic> json) =>
      MetadataRowContainer(
        metadataRowContainerRenderer:
            json["metadataRowContainerRenderer"] == null
                ? null
                : MetadataRowContainerRenderer.fromMap(
                    json["metadataRowContainerRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "metadataRowContainerRenderer": metadataRowContainerRenderer == null
            ? null
            : metadataRowContainerRenderer.toMap(),
      };
}

class MetadataRowContainerRenderer {
  MetadataRowContainerRenderer({
    this.collapsedItemCount,
    this.trackingParams,
  });

  int collapsedItemCount;
  String trackingParams;

  factory MetadataRowContainerRenderer.fromJson(String str) =>
      MetadataRowContainerRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MetadataRowContainerRenderer.fromMap(Map<String, dynamic> json) =>
      MetadataRowContainerRenderer(
        collapsedItemCount: json["collapsedItemCount"] == null
            ? null
            : json["collapsedItemCount"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "collapsedItemCount":
            collapsedItemCount == null ? null : collapsedItemCount,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Owner {
  Owner({
    this.videoOwnerRenderer,
  });

  VideoOwnerRenderer videoOwnerRenderer;

  factory Owner.fromJson(String str) => Owner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Owner.fromMap(Map<String, dynamic> json) => Owner(
        videoOwnerRenderer: json["videoOwnerRenderer"] == null
            ? null
            : VideoOwnerRenderer.fromMap(json["videoOwnerRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "videoOwnerRenderer":
            videoOwnerRenderer == null ? null : videoOwnerRenderer.toMap(),
      };
}

class VideoOwnerRenderer {
  VideoOwnerRenderer({
    this.thumbnail,
    this.title,
    this.navigationEndpoint,
    this.subscriberCountText,
    this.trackingParams,
  });

  Background thumbnail;
  Byline title;
  VideoOwnerRendererNavigationEndpoint navigationEndpoint;
  DetailsText subscriberCountText;
  String trackingParams;

  factory VideoOwnerRenderer.fromJson(String str) =>
      VideoOwnerRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoOwnerRenderer.fromMap(Map<String, dynamic> json) =>
      VideoOwnerRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : Byline.fromMap(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoOwnerRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        subscriberCountText: json["subscriberCountText"] == null
            ? null
            : DetailsText.fromMap(json["subscriberCountText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "subscriberCountText":
            subscriberCountText == null ? null : subscriberCountText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class VideoOwnerRendererNavigationEndpoint {
  VideoOwnerRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  FluffyBrowseEndpoint browseEndpoint;

  factory VideoOwnerRendererNavigationEndpoint.fromJson(String str) =>
      VideoOwnerRendererNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoOwnerRendererNavigationEndpoint.fromMap(
          Map<String, dynamic> json) =>
      VideoOwnerRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : FluffyBrowseEndpoint.fromMap(json["browseEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
      };
}

class FluffyBrowseEndpoint {
  FluffyBrowseEndpoint({
    this.browseId,
    this.canonicalBaseUrl,
  });

  String browseId;
  String canonicalBaseUrl;

  factory FluffyBrowseEndpoint.fromJson(String str) =>
      FluffyBrowseEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyBrowseEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        canonicalBaseUrl:
            json["canonicalBaseUrl"] == null ? null : json["canonicalBaseUrl"],
      );

  Map<String, dynamic> toMap() => {
        "browseId": browseId == null ? null : browseId,
        "canonicalBaseUrl": canonicalBaseUrl == null ? null : canonicalBaseUrl,
      };
}

class Background {
  Background({
    this.thumbnails,
  });

  List<Thumbnail> thumbnails;

  factory Background.fromJson(String str) =>
      Background.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Background.fromMap(Map<String, dynamic> json) => Background(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<Thumbnail>.from(
                json["thumbnails"].map((x) => Thumbnail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toMap())),
      };
}

class Thumbnail {
  Thumbnail({
    this.url,
    this.width,
    this.height,
  });

  String url;
  int width;
  int height;

  factory Thumbnail.fromJson(String str) => Thumbnail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Thumbnail.fromMap(Map<String, dynamic> json) => Thumbnail(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class Byline {
  Byline({
    this.runs,
  });

  List<BylineRun> runs;

  factory Byline.fromJson(String str) => Byline.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Byline.fromMap(Map<String, dynamic> json) => Byline(
        runs: json["runs"] == null
            ? null
            : List<BylineRun>.from(
                json["runs"].map((x) => BylineRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class BylineRun {
  BylineRun({
    this.text,
    this.navigationEndpoint,
  });

  String text;
  EndpointClass navigationEndpoint;

  factory BylineRun.fromJson(String str) => BylineRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BylineRun.fromMap(Map<String, dynamic> json) => BylineRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : EndpointClass.fromMap(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
      };
}

class EndpointClass {
  EndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  EndpointBrowseEndpoint browseEndpoint;

  factory EndpointClass.fromJson(String str) =>
      EndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndpointClass.fromMap(Map<String, dynamic> json) => EndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromMap(json["browseEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
      };
}

class EndpointBrowseEndpoint {
  EndpointBrowseEndpoint({
    this.browseId,
  });

  String browseId;

  factory EndpointBrowseEndpoint.fromJson(String str) =>
      EndpointBrowseEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndpointBrowseEndpoint.fromMap(Map<String, dynamic> json) =>
      EndpointBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toMap() => {
        "browseId": browseId == null ? null : browseId,
      };
}

class SubscribeButton {
  SubscribeButton({
    this.buttonRenderer,
  });

  SubscribeButtonButtonRenderer buttonRenderer;

  factory SubscribeButton.fromJson(String str) =>
      SubscribeButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeButton.fromMap(Map<String, dynamic> json) => SubscribeButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : SubscribeButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class SubscribeButtonButtonRenderer {
  SubscribeButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
    this.targetId,
  });

  String style;
  String size;
  bool isDisabled;
  DetailsText text;
  IndigoNavigationEndpoint navigationEndpoint;
  String trackingParams;
  String targetId;

  factory SubscribeButtonButtonRenderer.fromJson(String str) =>
      SubscribeButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      SubscribeButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndigoNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class IndigoNavigationEndpoint {
  IndigoNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  String clickTrackingParams;
  DefaultNavigationEndpointCommandMetadata commandMetadata;
  FluffyModalEndpoint modalEndpoint;

  factory IndigoNavigationEndpoint.fromJson(String str) =>
      IndigoNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IndigoNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      IndigoNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : FluffyModalEndpoint.fromMap(json["modalEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toMap(),
      };
}

class FluffyModalEndpoint {
  FluffyModalEndpoint({
    this.modal,
  });

  TentacledModal modal;

  factory FluffyModalEndpoint.fromJson(String str) =>
      FluffyModalEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyModalEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyModalEndpoint(
        modal: json["modal"] == null
            ? null
            : TentacledModal.fromMap(json["modal"]),
      );

  Map<String, dynamic> toMap() => {
        "modal": modal == null ? null : modal.toMap(),
      };
}

class TentacledModal {
  TentacledModal({
    this.modalWithTitleAndButtonRenderer,
  });

  TentacledModalWithTitleAndButtonRenderer modalWithTitleAndButtonRenderer;

  factory TentacledModal.fromJson(String str) =>
      TentacledModal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledModal.fromMap(Map<String, dynamic> json) => TentacledModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : TentacledModalWithTitleAndButtonRenderer.fromMap(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toMap(),
      };
}

class TentacledModalWithTitleAndButtonRenderer {
  TentacledModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  CancelText title;
  CancelText content;
  TentacledButton button;

  factory TentacledModalWithTitleAndButtonRenderer.fromJson(String str) =>
      TentacledModalWithTitleAndButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledModalWithTitleAndButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      TentacledModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        content: json["content"] == null
            ? null
            : CancelText.fromMap(json["content"]),
        button: json["button"] == null
            ? null
            : TentacledButton.fromMap(json["button"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "content": content == null ? null : content.toMap(),
        "button": button == null ? null : button.toMap(),
      };
}

class TentacledButton {
  TentacledButton({
    this.buttonRenderer,
  });

  TentacledButtonRenderer buttonRenderer;

  factory TentacledButton.fromJson(String str) =>
      TentacledButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledButton.fromMap(Map<String, dynamic> json) => TentacledButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TentacledButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class TentacledButtonRenderer {
  TentacledButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  String style;
  String size;
  bool isDisabled;
  CancelText text;
  IndecentNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory TentacledButtonRenderer.fromJson(String str) =>
      TentacledButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledButtonRenderer.fromMap(Map<String, dynamic> json) =>
      TentacledButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : CancelText.fromMap(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndecentNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class IndecentNavigationEndpoint {
  IndecentNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  TentacledSignInEndpoint signInEndpoint;

  factory IndecentNavigationEndpoint.fromJson(String str) =>
      IndecentNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IndecentNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      IndecentNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : TentacledSignInEndpoint.fromMap(json["signInEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toMap(),
      };
}

class TentacledSignInEndpoint {
  TentacledSignInEndpoint({
    this.nextEndpoint,
    this.continueAction,
    this.idamTag,
  });

  Endpoint nextEndpoint;
  String continueAction;
  String idamTag;

  factory TentacledSignInEndpoint.fromJson(String str) =>
      TentacledSignInEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledSignInEndpoint.fromMap(Map<String, dynamic> json) =>
      TentacledSignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : Endpoint.fromMap(json["nextEndpoint"]),
        continueAction:
            json["continueAction"] == null ? null : json["continueAction"],
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toMap() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toMap(),
        "continueAction": continueAction == null ? null : continueAction,
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class TwoColumnWatchNextResultsSecondaryResults {
  TwoColumnWatchNextResultsSecondaryResults({
    this.secondaryResults,
  });

  SecondaryResultsSecondaryResults secondaryResults;

  factory TwoColumnWatchNextResultsSecondaryResults.fromJson(String str) =>
      TwoColumnWatchNextResultsSecondaryResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TwoColumnWatchNextResultsSecondaryResults.fromMap(
          Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsSecondaryResults(
        secondaryResults: json["secondaryResults"] == null
            ? null
            : SecondaryResultsSecondaryResults.fromMap(
                json["secondaryResults"]),
      );

  Map<String, dynamic> toMap() => {
        "secondaryResults":
            secondaryResults == null ? null : secondaryResults.toMap(),
      };
}

class SecondaryResultsSecondaryResults {
  SecondaryResultsSecondaryResults({
    this.results,
    this.trackingParams,
    this.targetId,
  });

  List<SecondaryResultsResult> results;
  String trackingParams;
  String targetId;

  factory SecondaryResultsSecondaryResults.fromJson(String str) =>
      SecondaryResultsSecondaryResults.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SecondaryResultsSecondaryResults.fromMap(Map<String, dynamic> json) =>
      SecondaryResultsSecondaryResults(
        results: json["results"] == null
            ? null
            : List<SecondaryResultsResult>.from(
                json["results"].map((x) => SecondaryResultsResult.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toMap() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class SecondaryResultsResult {
  SecondaryResultsResult({
    this.compactAutoplayRenderer,
    this.compactVideoRenderer,
    this.compactRadioRenderer,
    this.compactPlaylistRenderer,
    this.continuationItemRenderer,
  });

  CompactAutoplayRenderer compactAutoplayRenderer;
  ResultCompactVideoRenderer compactVideoRenderer;
  CompactRadioRenderer compactRadioRenderer;
  CompactPlaylistRenderer compactPlaylistRenderer;
  ResultContinuationItemRenderer continuationItemRenderer;

  factory SecondaryResultsResult.fromJson(String str) =>
      SecondaryResultsResult.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SecondaryResultsResult.fromMap(Map<String, dynamic> json) =>
      SecondaryResultsResult(
        compactAutoplayRenderer: json["compactAutoplayRenderer"] == null
            ? null
            : CompactAutoplayRenderer.fromMap(json["compactAutoplayRenderer"]),
        compactVideoRenderer: json["compactVideoRenderer"] == null
            ? null
            : ResultCompactVideoRenderer.fromMap(json["compactVideoRenderer"]),
        compactRadioRenderer: json["compactRadioRenderer"] == null
            ? null
            : CompactRadioRenderer.fromMap(json["compactRadioRenderer"]),
        compactPlaylistRenderer: json["compactPlaylistRenderer"] == null
            ? null
            : CompactPlaylistRenderer.fromMap(json["compactPlaylistRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ResultContinuationItemRenderer.fromMap(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "compactAutoplayRenderer": compactAutoplayRenderer == null
            ? null
            : compactAutoplayRenderer.toMap(),
        "compactVideoRenderer":
            compactVideoRenderer == null ? null : compactVideoRenderer.toMap(),
        "compactRadioRenderer":
            compactRadioRenderer == null ? null : compactRadioRenderer.toMap(),
        "compactPlaylistRenderer": compactPlaylistRenderer == null
            ? null
            : compactPlaylistRenderer.toMap(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toMap(),
      };
}

class CompactAutoplayRenderer {
  CompactAutoplayRenderer({
    this.title,
    this.toggleDescription,
    this.infoIcon,
    this.infoText,
    this.contents,
    this.trackingParams,
  });

  CancelText title;
  DetailsText toggleDescription;
  Icon infoIcon;
  DetailsText infoText;
  List<CompactAutoplayRendererContent> contents;
  String trackingParams;

  factory CompactAutoplayRenderer.fromJson(String str) =>
      CompactAutoplayRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactAutoplayRenderer.fromMap(Map<String, dynamic> json) =>
      CompactAutoplayRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        toggleDescription: json["toggleDescription"] == null
            ? null
            : DetailsText.fromMap(json["toggleDescription"]),
        infoIcon:
            json["infoIcon"] == null ? null : Icon.fromMap(json["infoIcon"]),
        infoText: json["infoText"] == null
            ? null
            : DetailsText.fromMap(json["infoText"]),
        contents: json["contents"] == null
            ? null
            : List<CompactAutoplayRendererContent>.from(json["contents"]
                .map((x) => CompactAutoplayRendererContent.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "toggleDescription":
            toggleDescription == null ? null : toggleDescription.toMap(),
        "infoIcon": infoIcon == null ? null : infoIcon.toMap(),
        "infoText": infoText == null ? null : infoText.toMap(),
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompactAutoplayRendererContent {
  CompactAutoplayRendererContent({
    this.compactVideoRenderer,
  });

  ContentCompactVideoRenderer compactVideoRenderer;

  factory CompactAutoplayRendererContent.fromJson(String str) =>
      CompactAutoplayRendererContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactAutoplayRendererContent.fromMap(Map<String, dynamic> json) =>
      CompactAutoplayRendererContent(
        compactVideoRenderer: json["compactVideoRenderer"] == null
            ? null
            : ContentCompactVideoRenderer.fromMap(json["compactVideoRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "compactVideoRenderer":
            compactVideoRenderer == null ? null : compactVideoRenderer.toMap(),
      };
}

class ContentCompactVideoRenderer {
  ContentCompactVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.longBylineText,
    this.publishedTimeText,
    this.viewCountText,
    this.lengthText,
    this.navigationEndpoint,
    this.shortBylineText,
    this.channelThumbnail,
    this.ownerBadges,
    this.trackingParams,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
    this.accessibility,
    this.richThumbnail,
  });

  String videoId;
  Background thumbnail;
  LengthText title;
  BylineText longBylineText;
  CancelText publishedTimeText;
  CancelText viewCountText;
  LengthText lengthText;
  CompactVideoRendererNavigationEndpoint navigationEndpoint;
  BylineText shortBylineText;
  Background channelThumbnail;
  List<OwnerBadge> ownerBadges;
  String trackingParams;
  CancelText shortViewCountText;
  CompactVideoRendererMenu menu;
  List<CompactVideoRendererThumbnailOverlay> thumbnailOverlays;
  AccessibilityData accessibility;
  RichThumbnail richThumbnail;

  factory ContentCompactVideoRenderer.fromJson(String str) =>
      ContentCompactVideoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContentCompactVideoRenderer.fromMap(Map<String, dynamic> json) =>
      ContentCompactVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : LengthText.fromMap(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : BylineText.fromMap(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : CancelText.fromMap(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : CancelText.fromMap(json["viewCountText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromMap(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactVideoRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromMap(json["shortBylineText"]),
        channelThumbnail: json["channelThumbnail"] == null
            ? null
            : Background.fromMap(json["channelThumbnail"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadge>.from(
                json["ownerBadges"].map((x) => OwnerBadge.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : CancelText.fromMap(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : CompactVideoRendererMenu.fromMap(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactVideoRendererThumbnailOverlay.fromMap(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromMap(json["richThumbnail"]),
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toMap(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toMap(),
        "viewCountText": viewCountText == null ? null : viewCountText.toMap(),
        "lengthText": lengthText == null ? null : lengthText.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toMap(),
        "channelThumbnail":
            channelThumbnail == null ? null : channelThumbnail.toMap(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toMap(),
        "menu": menu == null ? null : menu.toMap(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toMap())),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toMap(),
      };
}

class BylineText {
  BylineText({
    this.runs,
  });

  List<LongBylineTextRun> runs;

  factory BylineText.fromJson(String str) =>
      BylineText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BylineText.fromMap(Map<String, dynamic> json) => BylineText(
        runs: json["runs"] == null
            ? null
            : List<LongBylineTextRun>.from(
                json["runs"].map((x) => LongBylineTextRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class LongBylineTextRun {
  LongBylineTextRun({
    this.text,
    this.navigationEndpoint,
  });

  String text;
  VideoOwnerRendererNavigationEndpoint navigationEndpoint;

  factory LongBylineTextRun.fromJson(String str) =>
      LongBylineTextRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LongBylineTextRun.fromMap(Map<String, dynamic> json) =>
      LongBylineTextRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoOwnerRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
      };
}

class CompactVideoRendererMenu {
  CompactVideoRendererMenu({
    this.menuRenderer,
  });

  PurpleMenuRenderer menuRenderer;

  factory CompactVideoRendererMenu.fromJson(String str) =>
      CompactVideoRendererMenu.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactVideoRendererMenu.fromMap(Map<String, dynamic> json) =>
      CompactVideoRendererMenu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : PurpleMenuRenderer.fromMap(json["menuRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toMap(),
      };
}

class PurpleMenuRenderer {
  PurpleMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
    this.targetId,
  });

  List<FluffyItem> items;
  String trackingParams;
  AccessibilityData accessibility;
  String targetId;

  factory PurpleMenuRenderer.fromJson(String str) =>
      PurpleMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleMenuRenderer.fromMap(Map<String, dynamic> json) =>
      PurpleMenuRenderer(
        items: json["items"] == null
            ? null
            : List<FluffyItem>.from(
                json["items"].map((x) => FluffyItem.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toMap() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "targetId": targetId == null ? null : targetId,
      };
}

class FluffyItem {
  FluffyItem({
    this.menuServiceItemRenderer,
  });

  MenuItemRenderer menuServiceItemRenderer;

  factory FluffyItem.fromJson(String str) =>
      FluffyItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyItem.fromMap(Map<String, dynamic> json) => FluffyItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromMap(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toMap(),
      };
}

class CompactVideoRendererNavigationEndpoint {
  CompactVideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  PurpleWatchEndpoint watchEndpoint;

  factory CompactVideoRendererNavigationEndpoint.fromJson(String str) =>
      CompactVideoRendererNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactVideoRendererNavigationEndpoint.fromMap(
          Map<String, dynamic> json) =>
      CompactVideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : PurpleWatchEndpoint.fromMap(json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class PurpleWatchEndpoint {
  PurpleWatchEndpoint({
    this.videoId,
    this.nofollow,
  });

  String videoId;
  bool nofollow;

  factory PurpleWatchEndpoint.fromJson(String str) =>
      PurpleWatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleWatchEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "nofollow": nofollow == null ? null : nofollow,
      };
}

class OwnerBadge {
  OwnerBadge({
    this.metadataBadgeRenderer,
  });

  OwnerBadgeMetadataBadgeRenderer metadataBadgeRenderer;

  factory OwnerBadge.fromJson(String str) =>
      OwnerBadge.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OwnerBadge.fromMap(Map<String, dynamic> json) => OwnerBadge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : OwnerBadgeMetadataBadgeRenderer.fromMap(
                json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toMap(),
      };
}

class OwnerBadgeMetadataBadgeRenderer {
  OwnerBadgeMetadataBadgeRenderer({
    this.icon,
    this.style,
    this.tooltip,
    this.trackingParams,
  });

  Icon icon;
  MetadataBadgeRendererStyle style;
  Tooltip tooltip;
  String trackingParams;

  factory OwnerBadgeMetadataBadgeRenderer.fromJson(String str) =>
      OwnerBadgeMetadataBadgeRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OwnerBadgeMetadataBadgeRenderer.fromMap(Map<String, dynamic> json) =>
      OwnerBadgeMetadataBadgeRenderer(
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        style: json["style"] == null
            ? null
            : metadataBadgeRendererStyleValues.map[json["style"]],
        tooltip:
            json["tooltip"] == null ? null : tooltipValues.map[json["tooltip"]],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "style": style == null
            ? null
            : metadataBadgeRendererStyleValues.reverse[style],
        "tooltip": tooltip == null ? null : tooltipValues.reverse[tooltip],
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum MetadataBadgeRendererStyle { BADGE_STYLE_TYPE_VERIFIED }

final metadataBadgeRendererStyleValues = EnumValues({
  "BADGE_STYLE_TYPE_VERIFIED":
      MetadataBadgeRendererStyle.BADGE_STYLE_TYPE_VERIFIED
});

enum Tooltip { DORULAND }

final tooltipValues = EnumValues({"Doğrulandı": Tooltip.DORULAND});

class RichThumbnail {
  RichThumbnail({
    this.movingThumbnailRenderer,
  });

  MovingThumbnailRenderer movingThumbnailRenderer;

  factory RichThumbnail.fromJson(String str) =>
      RichThumbnail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RichThumbnail.fromMap(Map<String, dynamic> json) => RichThumbnail(
        movingThumbnailRenderer: json["movingThumbnailRenderer"] == null
            ? null
            : MovingThumbnailRenderer.fromMap(json["movingThumbnailRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "movingThumbnailRenderer": movingThumbnailRenderer == null
            ? null
            : movingThumbnailRenderer.toMap(),
      };
}

class MovingThumbnailRenderer {
  MovingThumbnailRenderer({
    this.movingThumbnailDetails,
    this.enableHoveredLogging,
    this.enableOverlay,
  });

  MovingThumbnailDetails movingThumbnailDetails;
  bool enableHoveredLogging;
  bool enableOverlay;

  factory MovingThumbnailRenderer.fromJson(String str) =>
      MovingThumbnailRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MovingThumbnailRenderer.fromMap(Map<String, dynamic> json) =>
      MovingThumbnailRenderer(
        movingThumbnailDetails: json["movingThumbnailDetails"] == null
            ? null
            : MovingThumbnailDetails.fromMap(json["movingThumbnailDetails"]),
        enableHoveredLogging: json["enableHoveredLogging"] == null
            ? null
            : json["enableHoveredLogging"],
        enableOverlay:
            json["enableOverlay"] == null ? null : json["enableOverlay"],
      );

  Map<String, dynamic> toMap() => {
        "movingThumbnailDetails": movingThumbnailDetails == null
            ? null
            : movingThumbnailDetails.toMap(),
        "enableHoveredLogging":
            enableHoveredLogging == null ? null : enableHoveredLogging,
        "enableOverlay": enableOverlay == null ? null : enableOverlay,
      };
}

class MovingThumbnailDetails {
  MovingThumbnailDetails({
    this.thumbnails,
    this.logAsMovingThumbnail,
  });

  List<Thumbnail> thumbnails;
  bool logAsMovingThumbnail;

  factory MovingThumbnailDetails.fromJson(String str) =>
      MovingThumbnailDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MovingThumbnailDetails.fromMap(Map<String, dynamic> json) =>
      MovingThumbnailDetails(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<Thumbnail>.from(
                json["thumbnails"].map((x) => Thumbnail.fromMap(x))),
        logAsMovingThumbnail: json["logAsMovingThumbnail"] == null
            ? null
            : json["logAsMovingThumbnail"],
      );

  Map<String, dynamic> toMap() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toMap())),
        "logAsMovingThumbnail":
            logAsMovingThumbnail == null ? null : logAsMovingThumbnail,
      };
}

class CompactVideoRendererThumbnailOverlay {
  CompactVideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  ThumbnailOverlayToggleButtonRenderer thumbnailOverlayToggleButtonRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory CompactVideoRendererThumbnailOverlay.fromJson(String str) =>
      CompactVideoRendererThumbnailOverlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactVideoRendererThumbnailOverlay.fromMap(
          Map<String, dynamic> json) =>
      CompactVideoRendererThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : ThumbnailOverlayTimeStatusRenderer.fromMap(
                    json["thumbnailOverlayTimeStatusRenderer"]),
        thumbnailOverlayToggleButtonRenderer:
            json["thumbnailOverlayToggleButtonRenderer"] == null
                ? null
                : ThumbnailOverlayToggleButtonRenderer.fromMap(
                    json["thumbnailOverlayToggleButtonRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromMap(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnailOverlayTimeStatusRenderer":
            thumbnailOverlayTimeStatusRenderer == null
                ? null
                : thumbnailOverlayTimeStatusRenderer.toMap(),
        "thumbnailOverlayToggleButtonRenderer":
            thumbnailOverlayToggleButtonRenderer == null
                ? null
                : thumbnailOverlayToggleButtonRenderer.toMap(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toMap(),
      };
}

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  DetailsText text;

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailOverlayNowPlayingRenderer.fromMap(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
      };
}

class ThumbnailOverlayTimeStatusRenderer {
  ThumbnailOverlayTimeStatusRenderer({
    this.text,
    this.style,
  });

  LengthText text;
  ThumbnailOverlayTimeStatusRendererStyle style;

  factory ThumbnailOverlayTimeStatusRenderer.fromJson(String str) =>
      ThumbnailOverlayTimeStatusRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailOverlayTimeStatusRenderer.fromMap(
          Map<String, dynamic> json) =>
      ThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null ? null : LengthText.fromMap(json["text"]),
        style: json["style"] == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.map[json["style"]],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "style": style == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.reverse[style],
      };
}

enum ThumbnailOverlayTimeStatusRendererStyle { DEFAULT }

final thumbnailOverlayTimeStatusRendererStyleValues =
    EnumValues({"DEFAULT": ThumbnailOverlayTimeStatusRendererStyle.DEFAULT});

class ThumbnailOverlayToggleButtonRenderer {
  ThumbnailOverlayToggleButtonRenderer({
    this.isToggled,
    this.untoggledIcon,
    this.toggledIcon,
    this.untoggledTooltip,
    this.toggledTooltip,
    this.untoggledServiceEndpoint,
    this.toggledServiceEndpoint,
    this.untoggledAccessibility,
    this.toggledAccessibility,
    this.trackingParams,
  });

  bool isToggled;
  Icon untoggledIcon;
  Icon toggledIcon;
  UntoggledTooltip untoggledTooltip;
  ToggledTooltip toggledTooltip;
  UntoggledServiceEndpoint untoggledServiceEndpoint;
  ToggledServiceEndpoint toggledServiceEndpoint;
  AccessibilityData untoggledAccessibility;
  AccessibilityData toggledAccessibility;
  String trackingParams;

  factory ThumbnailOverlayToggleButtonRenderer.fromJson(String str) =>
      ThumbnailOverlayToggleButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailOverlayToggleButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      ThumbnailOverlayToggleButtonRenderer(
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        untoggledIcon: json["untoggledIcon"] == null
            ? null
            : Icon.fromMap(json["untoggledIcon"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : Icon.fromMap(json["toggledIcon"]),
        untoggledTooltip: json["untoggledTooltip"] == null
            ? null
            : untoggledTooltipValues.map[json["untoggledTooltip"]],
        toggledTooltip: json["toggledTooltip"] == null
            ? null
            : toggledTooltipValues.map[json["toggledTooltip"]],
        untoggledServiceEndpoint: json["untoggledServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpoint.fromMap(
                json["untoggledServiceEndpoint"]),
        toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
            ? null
            : ToggledServiceEndpoint.fromMap(json["toggledServiceEndpoint"]),
        untoggledAccessibility: json["untoggledAccessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["untoggledAccessibility"]),
        toggledAccessibility: json["toggledAccessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["toggledAccessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "isToggled": isToggled == null ? null : isToggled,
        "untoggledIcon": untoggledIcon == null ? null : untoggledIcon.toMap(),
        "toggledIcon": toggledIcon == null ? null : toggledIcon.toMap(),
        "untoggledTooltip": untoggledTooltip == null
            ? null
            : untoggledTooltipValues.reverse[untoggledTooltip],
        "toggledTooltip": toggledTooltip == null
            ? null
            : toggledTooltipValues.reverse[toggledTooltip],
        "untoggledServiceEndpoint": untoggledServiceEndpoint == null
            ? null
            : untoggledServiceEndpoint.toMap(),
        "toggledServiceEndpoint": toggledServiceEndpoint == null
            ? null
            : toggledServiceEndpoint.toMap(),
        "untoggledAccessibility": untoggledAccessibility == null
            ? null
            : untoggledAccessibility.toMap(),
        "toggledAccessibility":
            toggledAccessibility == null ? null : toggledAccessibility.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ToggledServiceEndpoint {
  ToggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  ToggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;

  factory ToggledServiceEndpoint.fromJson(String str) =>
      ToggledServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ToggledServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      ToggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : ToggledServiceEndpointPlaylistEditEndpoint.fromMap(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toMap(),
      };
}

class ToggledServiceEndpointPlaylistEditEndpoint {
  ToggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  PlaylistId playlistId;
  List<FluffyAction> actions;

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromJson(String str) =>
      ToggledServiceEndpointPlaylistEditEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromMap(
          Map<String, dynamic> json) =>
      ToggledServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class FluffyAction {
  FluffyAction({
    this.action,
    this.removedVideoId,
  });

  AmbitiousAction action;
  String removedVideoId;

  factory FluffyAction.fromJson(String str) =>
      FluffyAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyAction.fromMap(Map<String, dynamic> json) => FluffyAction(
        action: json["action"] == null
            ? null
            : ambitiousActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toMap() => {
        "action": action == null ? null : ambitiousActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum AmbitiousAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final ambitiousActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      AmbitiousAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
});

enum PlaylistId { WL }

final playlistIdValues = EnumValues({"WL": PlaylistId.WL});

enum ToggledTooltip { EKLENDI }

final toggledTooltipValues = EnumValues({"Eklendi": ToggledTooltip.EKLENDI});

class UntoggledServiceEndpoint {
  UntoggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  UntoggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
  UntoggledServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory UntoggledServiceEndpoint.fromJson(String str) =>
      UntoggledServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UntoggledServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      UntoggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : UntoggledServiceEndpointPlaylistEditEndpoint.fromMap(
                json["playlistEditEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpointSignalServiceEndpoint.fromMap(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class UntoggledServiceEndpointPlaylistEditEndpoint {
  UntoggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  PlaylistId playlistId;
  List<TentacledAction> actions;

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(String str) =>
      UntoggledServiceEndpointPlaylistEditEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromMap(
          Map<String, dynamic> json) =>
      UntoggledServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<TentacledAction>.from(
                json["actions"].map((x) => TentacledAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class TentacledAction {
  TentacledAction({
    this.addedVideoId,
    this.action,
  });

  String addedVideoId;
  CunningAction action;

  factory TentacledAction.fromJson(String str) =>
      TentacledAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledAction.fromMap(Map<String, dynamic> json) => TentacledAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : cunningActionValues.map[json["action"]],
      );

  Map<String, dynamic> toMap() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : cunningActionValues.reverse[action],
      };
}

enum CunningAction { ACTION_ADD_VIDEO }

final cunningActionValues =
    EnumValues({"ACTION_ADD_VIDEO": CunningAction.ACTION_ADD_VIDEO});

class UntoggledServiceEndpointSignalServiceEndpoint {
  UntoggledServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<StickyAction> actions;

  factory UntoggledServiceEndpointSignalServiceEndpoint.fromJson(String str) =>
      UntoggledServiceEndpointSignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UntoggledServiceEndpointSignalServiceEndpoint.fromMap(
          Map<String, dynamic> json) =>
      UntoggledServiceEndpointSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class StickyAction {
  StickyAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  String clickTrackingParams;
  AddToPlaylistCommand addToPlaylistCommand;

  factory StickyAction.fromJson(String str) =>
      StickyAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickyAction.fromMap(Map<String, dynamic> json) => StickyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromMap(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toMap(),
      };
}

enum UntoggledTooltip { DAHA_SONRA_IZLE, SRAYA_EKLE }

final untoggledTooltipValues = EnumValues({
  "Daha+sonra+izle": UntoggledTooltip.DAHA_SONRA_IZLE,
  "Sıraya+ekle": UntoggledTooltip.SRAYA_EKLE
});

class CompactPlaylistRenderer {
  CompactPlaylistRenderer({
    this.playlistId,
    this.thumbnail,
    this.title,
    this.shortBylineText,
    this.videoCountText,
    this.navigationEndpoint,
    this.publishedTimeText,
    this.videoCountShortText,
    this.trackingParams,
    this.sidebarThumbnails,
    this.thumbnailText,
    this.shareUrl,
    this.thumbnailRenderer,
    this.longBylineText,
    this.thumbnailOverlays,
  });

  String playlistId;
  Background thumbnail;
  CancelText title;
  BylineText shortBylineText;
  DetailsText videoCountText;
  SecondaryNavigationEndpointClass navigationEndpoint;
  CancelText publishedTimeText;
  CancelText videoCountShortText;
  String trackingParams;
  List<Background> sidebarThumbnails;
  ThumbnailText thumbnailText;
  String shareUrl;
  ThumbnailRenderer thumbnailRenderer;
  BylineText longBylineText;
  List<CompactPlaylistRendererThumbnailOverlay> thumbnailOverlays;

  factory CompactPlaylistRenderer.fromJson(String str) =>
      CompactPlaylistRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactPlaylistRenderer.fromMap(Map<String, dynamic> json) =>
      CompactPlaylistRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromMap(json["shortBylineText"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : DetailsText.fromMap(json["videoCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromMap(
                json["navigationEndpoint"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : CancelText.fromMap(json["publishedTimeText"]),
        videoCountShortText: json["videoCountShortText"] == null
            ? null
            : CancelText.fromMap(json["videoCountShortText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sidebarThumbnails: json["sidebarThumbnails"] == null
            ? null
            : List<Background>.from(
                json["sidebarThumbnails"].map((x) => Background.fromMap(x))),
        thumbnailText: json["thumbnailText"] == null
            ? null
            : ThumbnailText.fromMap(json["thumbnailText"]),
        shareUrl: json["shareUrl"] == null ? null : json["shareUrl"],
        thumbnailRenderer: json["thumbnailRenderer"] == null
            ? null
            : ThumbnailRenderer.fromMap(json["thumbnailRenderer"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : BylineText.fromMap(json["longBylineText"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactPlaylistRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactPlaylistRendererThumbnailOverlay.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId": playlistId == null ? null : playlistId,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toMap(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toMap(),
        "videoCountShortText":
            videoCountShortText == null ? null : videoCountShortText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "sidebarThumbnails": sidebarThumbnails == null
            ? null
            : List<dynamic>.from(sidebarThumbnails.map((x) => x.toMap())),
        "thumbnailText": thumbnailText == null ? null : thumbnailText.toMap(),
        "shareUrl": shareUrl == null ? null : shareUrl,
        "thumbnailRenderer":
            thumbnailRenderer == null ? null : thumbnailRenderer.toMap(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toMap(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toMap())),
      };
}

class SecondaryNavigationEndpointClass {
  SecondaryNavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  SecondaryNavigationEndpointWatchEndpoint watchEndpoint;

  factory SecondaryNavigationEndpointClass.fromJson(String str) =>
      SecondaryNavigationEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SecondaryNavigationEndpointClass.fromMap(Map<String, dynamic> json) =>
      SecondaryNavigationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointWatchEndpoint.fromMap(
                json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class SecondaryNavigationEndpointWatchEndpoint {
  SecondaryNavigationEndpointWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.params,
    this.continuePlayback,
  });

  String videoId;
  String playlistId;
  String params;
  bool continuePlayback;

  factory SecondaryNavigationEndpointWatchEndpoint.fromJson(String str) =>
      SecondaryNavigationEndpointWatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SecondaryNavigationEndpointWatchEndpoint.fromMap(
          Map<String, dynamic> json) =>
      SecondaryNavigationEndpointWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        params: json["params"] == null ? null : json["params"],
        continuePlayback:
            json["continuePlayback"] == null ? null : json["continuePlayback"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "playlistId": playlistId == null ? null : playlistId,
        "params": params == null ? null : params,
        "continuePlayback": continuePlayback == null ? null : continuePlayback,
      };
}

class CompactPlaylistRendererThumbnailOverlay {
  CompactPlaylistRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
    this.thumbnailOverlayHoverTextRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  ThumbnailOverlaySidePanelRenderer thumbnailOverlaySidePanelRenderer;
  ThumbnailOverlayRenderer thumbnailOverlayHoverTextRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory CompactPlaylistRendererThumbnailOverlay.fromJson(String str) =>
      CompactPlaylistRendererThumbnailOverlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactPlaylistRendererThumbnailOverlay.fromMap(
          Map<String, dynamic> json) =>
      CompactPlaylistRendererThumbnailOverlay(
        thumbnailOverlaySidePanelRenderer:
            json["thumbnailOverlaySidePanelRenderer"] == null
                ? null
                : ThumbnailOverlaySidePanelRenderer.fromMap(
                    json["thumbnailOverlaySidePanelRenderer"]),
        thumbnailOverlayHoverTextRenderer:
            json["thumbnailOverlayHoverTextRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromMap(
                    json["thumbnailOverlayHoverTextRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromMap(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnailOverlaySidePanelRenderer":
            thumbnailOverlaySidePanelRenderer == null
                ? null
                : thumbnailOverlaySidePanelRenderer.toMap(),
        "thumbnailOverlayHoverTextRenderer":
            thumbnailOverlayHoverTextRenderer == null
                ? null
                : thumbnailOverlayHoverTextRenderer.toMap(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toMap(),
      };
}

class ThumbnailOverlayRenderer {
  ThumbnailOverlayRenderer({
    this.text,
    this.icon,
  });

  DetailsText text;
  Icon icon;

  factory ThumbnailOverlayRenderer.fromJson(String str) =>
      ThumbnailOverlayRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailOverlayRenderer.fromMap(Map<String, dynamic> json) =>
      ThumbnailOverlayRenderer(
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
      };
}

class ThumbnailOverlaySidePanelRenderer {
  ThumbnailOverlaySidePanelRenderer({
    this.text,
    this.icon,
  });

  CancelText text;
  Icon icon;

  factory ThumbnailOverlaySidePanelRenderer.fromJson(String str) =>
      ThumbnailOverlaySidePanelRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailOverlaySidePanelRenderer.fromMap(
          Map<String, dynamic> json) =>
      ThumbnailOverlaySidePanelRenderer(
        text: json["text"] == null ? null : CancelText.fromMap(json["text"]),
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
      };
}

class ThumbnailRenderer {
  ThumbnailRenderer({
    this.playlistVideoThumbnailRenderer,
  });

  PlaylistVideoThumbnailRenderer playlistVideoThumbnailRenderer;

  factory ThumbnailRenderer.fromJson(String str) =>
      ThumbnailRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailRenderer.fromMap(Map<String, dynamic> json) =>
      ThumbnailRenderer(
        playlistVideoThumbnailRenderer:
            json["playlistVideoThumbnailRenderer"] == null
                ? null
                : PlaylistVideoThumbnailRenderer.fromMap(
                    json["playlistVideoThumbnailRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playlistVideoThumbnailRenderer": playlistVideoThumbnailRenderer == null
            ? null
            : playlistVideoThumbnailRenderer.toMap(),
      };
}

class PlaylistVideoThumbnailRenderer {
  PlaylistVideoThumbnailRenderer({
    this.thumbnail,
  });

  Background thumbnail;

  factory PlaylistVideoThumbnailRenderer.fromJson(String str) =>
      PlaylistVideoThumbnailRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlaylistVideoThumbnailRenderer.fromMap(Map<String, dynamic> json) =>
      PlaylistVideoThumbnailRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
      };
}

class ThumbnailText {
  ThumbnailText({
    this.runs,
  });

  List<PurpleRun> runs;

  factory ThumbnailText.fromJson(String str) =>
      ThumbnailText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ThumbnailText.fromMap(Map<String, dynamic> json) => ThumbnailText(
        runs: json["runs"] == null
            ? null
            : List<PurpleRun>.from(
                json["runs"].map((x) => PurpleRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class PurpleRun {
  PurpleRun({
    this.text,
    this.bold,
  });

  String text;
  bool bold;

  factory PurpleRun.fromJson(String str) => PurpleRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleRun.fromMap(Map<String, dynamic> json) => PurpleRun(
        text: json["text"] == null ? null : json["text"],
        bold: json["bold"] == null ? null : json["bold"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "bold": bold == null ? null : bold,
      };
}

class CompactRadioRenderer {
  CompactRadioRenderer({
    this.playlistId,
    this.thumbnail,
    this.title,
    this.navigationEndpoint,
    this.videoCountText,
    this.secondaryNavigationEndpoint,
    this.shortBylineText,
    this.longBylineText,
    this.trackingParams,
    this.thumbnailText,
    this.videoCountShortText,
    this.shareUrl,
    this.thumbnailOverlays,
  });

  String playlistId;
  Background thumbnail;
  CancelText title;
  SecondaryNavigationEndpointClass navigationEndpoint;
  DetailsText videoCountText;
  SecondaryNavigationEndpointClass secondaryNavigationEndpoint;
  CancelText shortBylineText;
  CancelText longBylineText;
  String trackingParams;
  DetailsText thumbnailText;
  DetailsText videoCountShortText;
  String shareUrl;
  List<CompactRadioRendererThumbnailOverlay> thumbnailOverlays;

  factory CompactRadioRenderer.fromJson(String str) =>
      CompactRadioRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactRadioRenderer.fromMap(Map<String, dynamic> json) =>
      CompactRadioRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromMap(
                json["navigationEndpoint"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : DetailsText.fromMap(json["videoCountText"]),
        secondaryNavigationEndpoint: json["secondaryNavigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromMap(
                json["secondaryNavigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : CancelText.fromMap(json["shortBylineText"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : CancelText.fromMap(json["longBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        thumbnailText: json["thumbnailText"] == null
            ? null
            : DetailsText.fromMap(json["thumbnailText"]),
        videoCountShortText: json["videoCountShortText"] == null
            ? null
            : DetailsText.fromMap(json["videoCountShortText"]),
        shareUrl: json["shareUrl"] == null ? null : json["shareUrl"],
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactRadioRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactRadioRendererThumbnailOverlay.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId": playlistId == null ? null : playlistId,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toMap(),
        "secondaryNavigationEndpoint": secondaryNavigationEndpoint == null
            ? null
            : secondaryNavigationEndpoint.toMap(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toMap(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "thumbnailText": thumbnailText == null ? null : thumbnailText.toMap(),
        "videoCountShortText":
            videoCountShortText == null ? null : videoCountShortText.toMap(),
        "shareUrl": shareUrl == null ? null : shareUrl,
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toMap())),
      };
}

class CompactRadioRendererThumbnailOverlay {
  CompactRadioRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
    this.thumbnailOverlayHoverTextRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  ThumbnailOverlayRenderer thumbnailOverlaySidePanelRenderer;
  ThumbnailOverlayRenderer thumbnailOverlayHoverTextRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory CompactRadioRendererThumbnailOverlay.fromJson(String str) =>
      CompactRadioRendererThumbnailOverlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactRadioRendererThumbnailOverlay.fromMap(
          Map<String, dynamic> json) =>
      CompactRadioRendererThumbnailOverlay(
        thumbnailOverlaySidePanelRenderer:
            json["thumbnailOverlaySidePanelRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromMap(
                    json["thumbnailOverlaySidePanelRenderer"]),
        thumbnailOverlayHoverTextRenderer:
            json["thumbnailOverlayHoverTextRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromMap(
                    json["thumbnailOverlayHoverTextRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromMap(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnailOverlaySidePanelRenderer":
            thumbnailOverlaySidePanelRenderer == null
                ? null
                : thumbnailOverlaySidePanelRenderer.toMap(),
        "thumbnailOverlayHoverTextRenderer":
            thumbnailOverlayHoverTextRenderer == null
                ? null
                : thumbnailOverlayHoverTextRenderer.toMap(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toMap(),
      };
}

class ResultCompactVideoRenderer {
  ResultCompactVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.longBylineText,
    this.publishedTimeText,
    this.viewCountText,
    this.lengthText,
    this.navigationEndpoint,
    this.shortBylineText,
    this.channelThumbnail,
    this.trackingParams,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
    this.accessibility,
    this.richThumbnail,
    this.ownerBadges,
    this.badges,
  });

  String videoId;
  Background thumbnail;
  LengthText title;
  BylineText longBylineText;
  CancelText publishedTimeText;
  CancelText viewCountText;
  LengthText lengthText;
  CompactVideoRendererNavigationEndpoint navigationEndpoint;
  BylineText shortBylineText;
  Background channelThumbnail;
  String trackingParams;
  CancelText shortViewCountText;
  CompactVideoRendererMenu menu;
  List<CompactVideoRendererThumbnailOverlay> thumbnailOverlays;
  AccessibilityData accessibility;
  RichThumbnail richThumbnail;
  List<OwnerBadge> ownerBadges;
  List<Badge> badges;

  factory ResultCompactVideoRenderer.fromJson(String str) =>
      ResultCompactVideoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResultCompactVideoRenderer.fromMap(Map<String, dynamic> json) =>
      ResultCompactVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : LengthText.fromMap(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : BylineText.fromMap(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : CancelText.fromMap(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : CancelText.fromMap(json["viewCountText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromMap(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactVideoRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromMap(json["shortBylineText"]),
        channelThumbnail: json["channelThumbnail"] == null
            ? null
            : Background.fromMap(json["channelThumbnail"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : CancelText.fromMap(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : CompactVideoRendererMenu.fromMap(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactVideoRendererThumbnailOverlay.fromMap(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromMap(json["richThumbnail"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadge>.from(
                json["ownerBadges"].map((x) => OwnerBadge.fromMap(x))),
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toMap(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toMap(),
        "viewCountText": viewCountText == null ? null : viewCountText.toMap(),
        "lengthText": lengthText == null ? null : lengthText.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toMap(),
        "channelThumbnail":
            channelThumbnail == null ? null : channelThumbnail.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toMap(),
        "menu": menu == null ? null : menu.toMap(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toMap())),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toMap(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toMap())),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toMap())),
      };
}

class Badge {
  Badge({
    this.metadataBadgeRenderer,
  });

  BadgeMetadataBadgeRenderer metadataBadgeRenderer;

  factory Badge.fromJson(String str) => Badge.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Badge.fromMap(Map<String, dynamic> json) => Badge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : BadgeMetadataBadgeRenderer.fromMap(json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toMap(),
      };
}

class BadgeMetadataBadgeRenderer {
  BadgeMetadataBadgeRenderer({
    this.style,
    this.label,
    this.trackingParams,
  });

  String style;
  String label;
  String trackingParams;

  factory BadgeMetadataBadgeRenderer.fromJson(String str) =>
      BadgeMetadataBadgeRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BadgeMetadataBadgeRenderer.fromMap(Map<String, dynamic> json) =>
      BadgeMetadataBadgeRenderer(
        style: json["style"] == null ? null : json["style"],
        label: json["label"] == null ? null : json["label"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "label": label == null ? null : label,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ResultContinuationItemRenderer {
  ResultContinuationItemRenderer({
    this.trigger,
    this.continuationEndpoint,
    this.button,
  });

  String trigger;
  ContinuationEndpointClass continuationEndpoint;
  DismissButtonClass button;

  factory ResultContinuationItemRenderer.fromJson(String str) =>
      ResultContinuationItemRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResultContinuationItemRenderer.fromMap(Map<String, dynamic> json) =>
      ResultContinuationItemRenderer(
        trigger: json["trigger"] == null ? null : json["trigger"],
        continuationEndpoint: json["continuationEndpoint"] == null
            ? null
            : ContinuationEndpointClass.fromMap(json["continuationEndpoint"]),
        button: json["button"] == null
            ? null
            : DismissButtonClass.fromMap(json["button"]),
      );

  Map<String, dynamic> toMap() => {
        "trigger": trigger == null ? null : trigger,
        "continuationEndpoint":
            continuationEndpoint == null ? null : continuationEndpoint.toMap(),
        "button": button == null ? null : button.toMap(),
      };
}

class DismissButtonClass {
  DismissButtonClass({
    this.buttonRenderer,
  });

  StickyButtonRenderer buttonRenderer;

  factory DismissButtonClass.fromJson(String str) =>
      DismissButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DismissButtonClass.fromMap(Map<String, dynamic> json) =>
      DismissButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : StickyButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class StickyButtonRenderer {
  StickyButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.trackingParams,
    this.command,
  });

  String style;
  String size;
  bool isDisabled;
  DetailsText text;
  String trackingParams;
  ContinuationEndpointClass command;

  factory StickyButtonRenderer.fromJson(String str) =>
      StickyButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickyButtonRenderer.fromMap(Map<String, dynamic> json) =>
      StickyButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ContinuationEndpointClass.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toMap(),
      };
}

class ContinuationEndpointClass {
  ContinuationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.continuationCommand,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  ContinuationCommand continuationCommand;

  factory ContinuationEndpointClass.fromJson(String str) =>
      ContinuationEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContinuationEndpointClass.fromMap(Map<String, dynamic> json) =>
      ContinuationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        continuationCommand: json["continuationCommand"] == null
            ? null
            : ContinuationCommand.fromMap(json["continuationCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "continuationCommand":
            continuationCommand == null ? null : continuationCommand.toMap(),
      };
}

class ContinuationCommand {
  ContinuationCommand({
    this.token,
    this.request,
  });

  String token;
  String request;

  factory ContinuationCommand.fromJson(String str) =>
      ContinuationCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContinuationCommand.fromMap(Map<String, dynamic> json) =>
      ContinuationCommand(
        token: json["token"] == null ? null : json["token"],
        request: json["request"] == null ? null : json["request"],
      );

  Map<String, dynamic> toMap() => {
        "token": token == null ? null : token,
        "request": request == null ? null : request,
      };
}

class EngagementPanel {
  EngagementPanel({
    this.engagementPanelSectionListRenderer,
  });

  EngagementPanelSectionListRenderer engagementPanelSectionListRenderer;

  factory EngagementPanel.fromJson(String str) =>
      EngagementPanel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EngagementPanel.fromMap(Map<String, dynamic> json) => EngagementPanel(
        engagementPanelSectionListRenderer:
            json["engagementPanelSectionListRenderer"] == null
                ? null
                : EngagementPanelSectionListRenderer.fromMap(
                    json["engagementPanelSectionListRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "engagementPanelSectionListRenderer":
            engagementPanelSectionListRenderer == null
                ? null
                : engagementPanelSectionListRenderer.toMap(),
      };
}

class EngagementPanelSectionListRenderer {
  EngagementPanelSectionListRenderer({
    this.panelIdentifier,
    this.header,
    this.content,
    this.targetId,
    this.visibility,
  });

  String panelIdentifier;
  Header header;
  EngagementPanelSectionListRendererContent content;
  String targetId;
  String visibility;

  factory EngagementPanelSectionListRenderer.fromJson(String str) =>
      EngagementPanelSectionListRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EngagementPanelSectionListRenderer.fromMap(
          Map<String, dynamic> json) =>
      EngagementPanelSectionListRenderer(
        panelIdentifier:
            json["panelIdentifier"] == null ? null : json["panelIdentifier"],
        header: json["header"] == null ? null : Header.fromMap(json["header"]),
        content: json["content"] == null
            ? null
            : EngagementPanelSectionListRendererContent.fromMap(
                json["content"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
        visibility: json["visibility"] == null ? null : json["visibility"],
      );

  Map<String, dynamic> toMap() => {
        "panelIdentifier": panelIdentifier == null ? null : panelIdentifier,
        "header": header == null ? null : header.toMap(),
        "content": content == null ? null : content.toMap(),
        "targetId": targetId == null ? null : targetId,
        "visibility": visibility == null ? null : visibility,
      };
}

class EngagementPanelSectionListRendererContent {
  EngagementPanelSectionListRendererContent({
    this.continuationItemRenderer,
    this.macroMarkersListRenderer,
  });

  ContentContinuationItemRenderer continuationItemRenderer;
  MacroMarkersListRenderer macroMarkersListRenderer;

  factory EngagementPanelSectionListRendererContent.fromJson(String str) =>
      EngagementPanelSectionListRendererContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EngagementPanelSectionListRendererContent.fromMap(
          Map<String, dynamic> json) =>
      EngagementPanelSectionListRendererContent(
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContentContinuationItemRenderer.fromMap(
                json["continuationItemRenderer"]),
        macroMarkersListRenderer: json["macroMarkersListRenderer"] == null
            ? null
            : MacroMarkersListRenderer.fromMap(
                json["macroMarkersListRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toMap(),
        "macroMarkersListRenderer": macroMarkersListRenderer == null
            ? null
            : macroMarkersListRenderer.toMap(),
      };
}

class ContentContinuationItemRenderer {
  ContentContinuationItemRenderer({
    this.trigger,
    this.continuationEndpoint,
  });

  String trigger;
  ContinuationEndpoint continuationEndpoint;

  factory ContentContinuationItemRenderer.fromJson(String str) =>
      ContentContinuationItemRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContentContinuationItemRenderer.fromMap(Map<String, dynamic> json) =>
      ContentContinuationItemRenderer(
        trigger: json["trigger"] == null ? null : json["trigger"],
        continuationEndpoint: json["continuationEndpoint"] == null
            ? null
            : ContinuationEndpoint.fromMap(json["continuationEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "trigger": trigger == null ? null : trigger,
        "continuationEndpoint":
            continuationEndpoint == null ? null : continuationEndpoint.toMap(),
      };
}

class ContinuationEndpoint {
  ContinuationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.getTranscriptEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  GetTranscriptEndpoint getTranscriptEndpoint;

  factory ContinuationEndpoint.fromJson(String str) =>
      ContinuationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContinuationEndpoint.fromMap(Map<String, dynamic> json) =>
      ContinuationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        getTranscriptEndpoint: json["getTranscriptEndpoint"] == null
            ? null
            : GetTranscriptEndpoint.fromMap(json["getTranscriptEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "getTranscriptEndpoint": getTranscriptEndpoint == null
            ? null
            : getTranscriptEndpoint.toMap(),
      };
}

class GetTranscriptEndpoint {
  GetTranscriptEndpoint({
    this.params,
  });

  String params;

  factory GetTranscriptEndpoint.fromJson(String str) =>
      GetTranscriptEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetTranscriptEndpoint.fromMap(Map<String, dynamic> json) =>
      GetTranscriptEndpoint(
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toMap() => {
        "params": params == null ? null : params,
      };
}

class MacroMarkersListRenderer {
  MacroMarkersListRenderer({
    this.contents,
    this.syncButtonLabel,
    this.trackingParams,
  });

  List<MacroMarkersListRendererContent> contents;
  DetailsText syncButtonLabel;
  String trackingParams;

  factory MacroMarkersListRenderer.fromJson(String str) =>
      MacroMarkersListRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MacroMarkersListRenderer.fromMap(Map<String, dynamic> json) =>
      MacroMarkersListRenderer(
        contents: json["contents"] == null
            ? null
            : List<MacroMarkersListRendererContent>.from(json["contents"]
                .map((x) => MacroMarkersListRendererContent.fromMap(x))),
        syncButtonLabel: json["syncButtonLabel"] == null
            ? null
            : DetailsText.fromMap(json["syncButtonLabel"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toMap())),
        "syncButtonLabel":
            syncButtonLabel == null ? null : syncButtonLabel.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MacroMarkersListRendererContent {
  MacroMarkersListRendererContent({
    this.macroMarkersListItemRenderer,
  });

  MacroMarkersListItemRenderer macroMarkersListItemRenderer;

  factory MacroMarkersListRendererContent.fromJson(String str) =>
      MacroMarkersListRendererContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MacroMarkersListRendererContent.fromMap(Map<String, dynamic> json) =>
      MacroMarkersListRendererContent(
        macroMarkersListItemRenderer:
            json["macroMarkersListItemRenderer"] == null
                ? null
                : MacroMarkersListItemRenderer.fromMap(
                    json["macroMarkersListItemRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "macroMarkersListItemRenderer": macroMarkersListItemRenderer == null
            ? null
            : macroMarkersListItemRenderer.toMap(),
      };
}

class MacroMarkersListItemRenderer {
  MacroMarkersListItemRenderer({
    this.title,
    this.timeDescription,
    this.thumbnail,
    this.onTap,
    this.trackingParams,
  });

  CancelText title;
  CancelText timeDescription;
  Background thumbnail;
  OnTap onTap;
  String trackingParams;

  factory MacroMarkersListItemRenderer.fromJson(String str) =>
      MacroMarkersListItemRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MacroMarkersListItemRenderer.fromMap(Map<String, dynamic> json) =>
      MacroMarkersListItemRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        timeDescription: json["timeDescription"] == null
            ? null
            : CancelText.fromMap(json["timeDescription"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        onTap: json["onTap"] == null ? null : OnTap.fromMap(json["onTap"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "timeDescription":
            timeDescription == null ? null : timeDescription.toMap(),
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "onTap": onTap == null ? null : onTap.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class OnTap {
  OnTap({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  OnTapWatchEndpoint watchEndpoint;

  factory OnTap.fromJson(String str) => OnTap.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OnTap.fromMap(Map<String, dynamic> json) => OnTap(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : OnTapWatchEndpoint.fromMap(json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class Header {
  Header({
    this.engagementPanelTitleHeaderRenderer,
  });

  EngagementPanelTitleHeaderRenderer engagementPanelTitleHeaderRenderer;

  factory Header.fromJson(String str) => Header.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Header.fromMap(Map<String, dynamic> json) => Header(
        engagementPanelTitleHeaderRenderer:
            json["engagementPanelTitleHeaderRenderer"] == null
                ? null
                : EngagementPanelTitleHeaderRenderer.fromMap(
                    json["engagementPanelTitleHeaderRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "engagementPanelTitleHeaderRenderer":
            engagementPanelTitleHeaderRenderer == null
                ? null
                : engagementPanelTitleHeaderRenderer.toMap(),
      };
}

class EngagementPanelTitleHeaderRenderer {
  EngagementPanelTitleHeaderRenderer({
    this.title,
    this.menu,
    this.visibilityButton,
    this.trackingParams,
  });

  DetailsText title;
  EngagementPanelTitleHeaderRendererMenu menu;
  VisibilityButton visibilityButton;
  String trackingParams;

  factory EngagementPanelTitleHeaderRenderer.fromJson(String str) =>
      EngagementPanelTitleHeaderRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EngagementPanelTitleHeaderRenderer.fromMap(
          Map<String, dynamic> json) =>
      EngagementPanelTitleHeaderRenderer(
        title:
            json["title"] == null ? null : DetailsText.fromMap(json["title"]),
        menu: json["menu"] == null
            ? null
            : EngagementPanelTitleHeaderRendererMenu.fromMap(json["menu"]),
        visibilityButton: json["visibilityButton"] == null
            ? null
            : VisibilityButton.fromMap(json["visibilityButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "menu": menu == null ? null : menu.toMap(),
        "visibilityButton":
            visibilityButton == null ? null : visibilityButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class EngagementPanelTitleHeaderRendererMenu {
  EngagementPanelTitleHeaderRendererMenu({
    this.menuRenderer,
  });

  FluffyMenuRenderer menuRenderer;

  factory EngagementPanelTitleHeaderRendererMenu.fromJson(String str) =>
      EngagementPanelTitleHeaderRendererMenu.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EngagementPanelTitleHeaderRendererMenu.fromMap(
          Map<String, dynamic> json) =>
      EngagementPanelTitleHeaderRendererMenu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : FluffyMenuRenderer.fromMap(json["menuRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toMap(),
      };
}

class FluffyMenuRenderer {
  FluffyMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  List<TentacledItem> items;
  String trackingParams;
  AccessibilityData accessibility;

  factory FluffyMenuRenderer.fromJson(String str) =>
      FluffyMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyMenuRenderer.fromMap(Map<String, dynamic> json) =>
      FluffyMenuRenderer(
        items: json["items"] == null
            ? null
            : List<TentacledItem>.from(
                json["items"].map((x) => TentacledItem.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
      );

  Map<String, dynamic> toMap() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toMap(),
      };
}

class TentacledItem {
  TentacledItem({
    this.menuServiceItemRenderer,
  });

  MenuServiceItemRenderer menuServiceItemRenderer;

  factory TentacledItem.fromJson(String str) =>
      TentacledItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledItem.fromMap(Map<String, dynamic> json) => TentacledItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuServiceItemRenderer.fromMap(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toMap(),
      };
}

class MenuServiceItemRenderer {
  MenuServiceItemRenderer({
    this.text,
    this.serviceEndpoint,
    this.trackingParams,
  });

  DetailsText text;
  ServiceEndpointClass serviceEndpoint;
  String trackingParams;

  factory MenuServiceItemRenderer.fromJson(String str) =>
      MenuServiceItemRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuServiceItemRenderer.fromMap(Map<String, dynamic> json) =>
      MenuServiceItemRenderer(
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ServiceEndpointClass {
  ServiceEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  PurpleCommandMetadata commandMetadata;
  CommandSignalServiceEndpoint signalServiceEndpoint;

  factory ServiceEndpointClass.fromJson(String str) =>
      ServiceEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceEndpointClass.fromMap(Map<String, dynamic> json) =>
      ServiceEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromMap(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : CommandSignalServiceEndpoint.fromMap(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<IndigoAction> actions;

  factory CommandSignalServiceEndpoint.fromJson(String str) =>
      CommandSignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CommandSignalServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<IndigoAction>.from(
                json["actions"].map((x) => IndigoAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class IndigoAction {
  IndigoAction({
    this.clickTrackingParams,
    this.signalAction,
  });

  String clickTrackingParams;
  SignalAction signalAction;

  factory IndigoAction.fromJson(String str) =>
      IndigoAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IndigoAction.fromMap(Map<String, dynamic> json) => IndigoAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        signalAction: json["signalAction"] == null
            ? null
            : SignalAction.fromMap(json["signalAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "signalAction": signalAction == null ? null : signalAction.toMap(),
      };
}

class SignalAction {
  SignalAction({
    this.signal,
  });

  String signal;

  factory SignalAction.fromJson(String str) =>
      SignalAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignalAction.fromMap(Map<String, dynamic> json) => SignalAction(
        signal: json["signal"] == null ? null : json["signal"],
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signal,
      };
}

class VisibilityButton {
  VisibilityButton({
    this.buttonRenderer,
  });

  VisibilityButtonButtonRenderer buttonRenderer;

  factory VisibilityButton.fromJson(String str) =>
      VisibilityButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VisibilityButton.fromMap(Map<String, dynamic> json) =>
      VisibilityButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : VisibilityButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class VisibilityButtonButtonRenderer {
  VisibilityButtonButtonRenderer({
    this.icon,
    this.accessibility,
    this.trackingParams,
    this.accessibilityData,
    this.command,
  });

  Icon icon;
  Accessibility accessibility;
  String trackingParams;
  AccessibilityData accessibilityData;
  PurpleCommand command;

  factory VisibilityButtonButtonRenderer.fromJson(String str) =>
      VisibilityButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VisibilityButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      VisibilityButtonButtonRenderer(
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromMap(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibilityData"]),
        command: json["command"] == null
            ? null
            : PurpleCommand.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
        "command": command == null ? null : command.toMap(),
      };
}

class PurpleCommand {
  PurpleCommand({
    this.clickTrackingParams,
    this.changeEngagementPanelVisibilityAction,
  });

  String clickTrackingParams;
  ChangeEngagementPanelVisibilityAction changeEngagementPanelVisibilityAction;

  factory PurpleCommand.fromJson(String str) =>
      PurpleCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleCommand.fromMap(Map<String, dynamic> json) => PurpleCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        changeEngagementPanelVisibilityAction:
            json["changeEngagementPanelVisibilityAction"] == null
                ? null
                : ChangeEngagementPanelVisibilityAction.fromMap(
                    json["changeEngagementPanelVisibilityAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "changeEngagementPanelVisibilityAction":
            changeEngagementPanelVisibilityAction == null
                ? null
                : changeEngagementPanelVisibilityAction.toMap(),
      };
}

class FrameworkUpdates {
  FrameworkUpdates();

  factory FrameworkUpdates.fromJson(String str) =>
      FrameworkUpdates.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FrameworkUpdates.fromMap(Map<String, dynamic> json) =>
      FrameworkUpdates();

  Map<String, dynamic> toMap() => {};
}

class Overlay {
  Overlay({
    this.tooltipRenderer,
  });

  TooltipRenderer tooltipRenderer;

  factory Overlay.fromJson(String str) => Overlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Overlay.fromMap(Map<String, dynamic> json) => Overlay(
        tooltipRenderer: json["tooltipRenderer"] == null
            ? null
            : TooltipRenderer.fromMap(json["tooltipRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "tooltipRenderer":
            tooltipRenderer == null ? null : tooltipRenderer.toMap(),
      };
}

class TooltipRenderer {
  TooltipRenderer({
    this.promoConfig,
    this.targetId,
    this.text,
    this.detailsText,
    this.dismissButton,
    this.suggestedPosition,
    this.dismissStrategy,
    this.trackingParams,
  });

  PromoConfig promoConfig;
  String targetId;
  DetailsText text;
  DetailsText detailsText;
  DismissButton dismissButton;
  DismissStrategy suggestedPosition;
  DismissStrategy dismissStrategy;
  String trackingParams;

  factory TooltipRenderer.fromJson(String str) =>
      TooltipRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TooltipRenderer.fromMap(Map<String, dynamic> json) => TooltipRenderer(
        promoConfig: json["promoConfig"] == null
            ? null
            : PromoConfig.fromMap(json["promoConfig"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        detailsText: json["detailsText"] == null
            ? null
            : DetailsText.fromMap(json["detailsText"]),
        dismissButton: json["dismissButton"] == null
            ? null
            : DismissButton.fromMap(json["dismissButton"]),
        suggestedPosition: json["suggestedPosition"] == null
            ? null
            : DismissStrategy.fromMap(json["suggestedPosition"]),
        dismissStrategy: json["dismissStrategy"] == null
            ? null
            : DismissStrategy.fromMap(json["dismissStrategy"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "promoConfig": promoConfig == null ? null : promoConfig.toMap(),
        "targetId": targetId == null ? null : targetId,
        "text": text == null ? null : text.toMap(),
        "detailsText": detailsText == null ? null : detailsText.toMap(),
        "dismissButton": dismissButton == null ? null : dismissButton.toMap(),
        "suggestedPosition":
            suggestedPosition == null ? null : suggestedPosition.toMap(),
        "dismissStrategy":
            dismissStrategy == null ? null : dismissStrategy.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class DismissButton {
  DismissButton({
    this.buttonRenderer,
  });

  IndigoButtonRenderer buttonRenderer;

  factory DismissButton.fromJson(String str) =>
      DismissButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DismissButton.fromMap(Map<String, dynamic> json) => DismissButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : IndigoButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class IndigoButtonRenderer {
  IndigoButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.trackingParams,
    this.command,
  });

  String style;
  String size;
  DetailsText text;
  String trackingParams;
  AcceptCommand command;

  factory IndigoButtonRenderer.fromJson(String str) =>
      IndigoButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IndigoButtonRenderer.fromMap(Map<String, dynamic> json) =>
      IndigoButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : AcceptCommand.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "text": text == null ? null : text.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toMap(),
      };
}

class AcceptCommand {
  AcceptCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.feedbackEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  FeedbackEndpoint feedbackEndpoint;

  factory AcceptCommand.fromJson(String str) =>
      AcceptCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AcceptCommand.fromMap(Map<String, dynamic> json) => AcceptCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        feedbackEndpoint: json["feedbackEndpoint"] == null
            ? null
            : FeedbackEndpoint.fromMap(json["feedbackEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "feedbackEndpoint":
            feedbackEndpoint == null ? null : feedbackEndpoint.toMap(),
      };
}

class FeedbackEndpoint {
  FeedbackEndpoint({
    this.feedbackToken,
    this.uiActions,
  });

  String feedbackToken;
  UiActions uiActions;

  factory FeedbackEndpoint.fromJson(String str) =>
      FeedbackEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeedbackEndpoint.fromMap(Map<String, dynamic> json) =>
      FeedbackEndpoint(
        feedbackToken:
            json["feedbackToken"] == null ? null : json["feedbackToken"],
        uiActions: json["uiActions"] == null
            ? null
            : UiActions.fromMap(json["uiActions"]),
      );

  Map<String, dynamic> toMap() => {
        "feedbackToken": feedbackToken == null ? null : feedbackToken,
        "uiActions": uiActions == null ? null : uiActions.toMap(),
      };
}

class UiActions {
  UiActions({
    this.hideEnclosingContainer,
  });

  bool hideEnclosingContainer;

  factory UiActions.fromJson(String str) => UiActions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UiActions.fromMap(Map<String, dynamic> json) => UiActions(
        hideEnclosingContainer: json["hideEnclosingContainer"] == null
            ? null
            : json["hideEnclosingContainer"],
      );

  Map<String, dynamic> toMap() => {
        "hideEnclosingContainer":
            hideEnclosingContainer == null ? null : hideEnclosingContainer,
      };
}

class DismissStrategy {
  DismissStrategy({
    this.type,
  });

  String type;

  factory DismissStrategy.fromJson(String str) =>
      DismissStrategy.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DismissStrategy.fromMap(Map<String, dynamic> json) => DismissStrategy(
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
      };
}

class PromoConfig {
  PromoConfig({
    this.promoId,
    this.impressionEndpoints,
    this.acceptCommand,
    this.dismissCommand,
  });

  String promoId;
  List<AcceptCommand> impressionEndpoints;
  AcceptCommand acceptCommand;
  AcceptCommand dismissCommand;

  factory PromoConfig.fromJson(String str) =>
      PromoConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PromoConfig.fromMap(Map<String, dynamic> json) => PromoConfig(
        promoId: json["promoId"] == null ? null : json["promoId"],
        impressionEndpoints: json["impressionEndpoints"] == null
            ? null
            : List<AcceptCommand>.from(json["impressionEndpoints"]
                .map((x) => AcceptCommand.fromMap(x))),
        acceptCommand: json["acceptCommand"] == null
            ? null
            : AcceptCommand.fromMap(json["acceptCommand"]),
        dismissCommand: json["dismissCommand"] == null
            ? null
            : AcceptCommand.fromMap(json["dismissCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "promoId": promoId == null ? null : promoId,
        "impressionEndpoints": impressionEndpoints == null
            ? null
            : List<dynamic>.from(impressionEndpoints.map((x) => x.toMap())),
        "acceptCommand": acceptCommand == null ? null : acceptCommand.toMap(),
        "dismissCommand":
            dismissCommand == null ? null : dismissCommand.toMap(),
      };
}

class PlayerOverlays {
  PlayerOverlays({
    this.playerOverlayRenderer,
  });

  PlayerOverlayRenderer playerOverlayRenderer;

  factory PlayerOverlays.fromJson(String str) =>
      PlayerOverlays.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerOverlays.fromMap(Map<String, dynamic> json) => PlayerOverlays(
        playerOverlayRenderer: json["playerOverlayRenderer"] == null
            ? null
            : PlayerOverlayRenderer.fromMap(json["playerOverlayRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerOverlayRenderer": playerOverlayRenderer == null
            ? null
            : playerOverlayRenderer.toMap(),
      };
}

class PlayerOverlayRenderer {
  PlayerOverlayRenderer({
    this.endScreen,
    this.autoplay,
    this.shareButton,
  });

  EndScreen endScreen;
  PlayerOverlayRendererAutoplay autoplay;
  ShareButtonClass shareButton;

  factory PlayerOverlayRenderer.fromJson(String str) =>
      PlayerOverlayRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerOverlayRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerOverlayRenderer(
        endScreen: json["endScreen"] == null
            ? null
            : EndScreen.fromMap(json["endScreen"]),
        autoplay: json["autoplay"] == null
            ? null
            : PlayerOverlayRendererAutoplay.fromMap(json["autoplay"]),
        shareButton: json["shareButton"] == null
            ? null
            : ShareButtonClass.fromMap(json["shareButton"]),
      );

  Map<String, dynamic> toMap() => {
        "endScreen": endScreen == null ? null : endScreen.toMap(),
        "autoplay": autoplay == null ? null : autoplay.toMap(),
        "shareButton": shareButton == null ? null : shareButton.toMap(),
      };
}

class PlayerOverlayRendererAutoplay {
  PlayerOverlayRendererAutoplay({
    this.playerOverlayAutoplayRenderer,
  });

  PlayerOverlayAutoplayRenderer playerOverlayAutoplayRenderer;

  factory PlayerOverlayRendererAutoplay.fromJson(String str) =>
      PlayerOverlayRendererAutoplay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerOverlayRendererAutoplay.fromMap(Map<String, dynamic> json) =>
      PlayerOverlayRendererAutoplay(
        playerOverlayAutoplayRenderer:
            json["playerOverlayAutoplayRenderer"] == null
                ? null
                : PlayerOverlayAutoplayRenderer.fromMap(
                    json["playerOverlayAutoplayRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerOverlayAutoplayRenderer": playerOverlayAutoplayRenderer == null
            ? null
            : playerOverlayAutoplayRenderer.toMap(),
      };
}

class PlayerOverlayAutoplayRenderer {
  PlayerOverlayAutoplayRenderer({
    this.title,
    this.videoTitle,
    this.byline,
    this.cancelText,
    this.pauseText,
    this.background,
    this.countDownSecs,
    this.nextButton,
    this.trackingParams,
    this.preferImmediateRedirect,
    this.videoId,
    this.publishedTimeText,
    this.webShowNewAutonavCountdown,
    this.webShowBigThumbnailEndscreen,
    this.shortViewCountText,
  });

  CancelText title;
  CancelText videoTitle;
  Byline byline;
  CancelText cancelText;
  CancelText pauseText;
  Background background;
  int countDownSecs;
  NextButton nextButton;
  String trackingParams;
  bool preferImmediateRedirect;
  String videoId;
  CancelText publishedTimeText;
  bool webShowNewAutonavCountdown;
  bool webShowBigThumbnailEndscreen;
  CancelText shortViewCountText;

  factory PlayerOverlayAutoplayRenderer.fromJson(String str) =>
      PlayerOverlayAutoplayRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerOverlayAutoplayRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerOverlayAutoplayRenderer(
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        videoTitle: json["videoTitle"] == null
            ? null
            : CancelText.fromMap(json["videoTitle"]),
        byline: json["byline"] == null ? null : Byline.fromMap(json["byline"]),
        cancelText: json["cancelText"] == null
            ? null
            : CancelText.fromMap(json["cancelText"]),
        pauseText: json["pauseText"] == null
            ? null
            : CancelText.fromMap(json["pauseText"]),
        background: json["background"] == null
            ? null
            : Background.fromMap(json["background"]),
        countDownSecs:
            json["countDownSecs"] == null ? null : json["countDownSecs"],
        nextButton: json["nextButton"] == null
            ? null
            : NextButton.fromMap(json["nextButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        preferImmediateRedirect: json["preferImmediateRedirect"] == null
            ? null
            : json["preferImmediateRedirect"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : CancelText.fromMap(json["publishedTimeText"]),
        webShowNewAutonavCountdown: json["webShowNewAutonavCountdown"] == null
            ? null
            : json["webShowNewAutonavCountdown"],
        webShowBigThumbnailEndscreen:
            json["webShowBigThumbnailEndscreen"] == null
                ? null
                : json["webShowBigThumbnailEndscreen"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : CancelText.fromMap(json["shortViewCountText"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "videoTitle": videoTitle == null ? null : videoTitle.toMap(),
        "byline": byline == null ? null : byline.toMap(),
        "cancelText": cancelText == null ? null : cancelText.toMap(),
        "pauseText": pauseText == null ? null : pauseText.toMap(),
        "background": background == null ? null : background.toMap(),
        "countDownSecs": countDownSecs == null ? null : countDownSecs,
        "nextButton": nextButton == null ? null : nextButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "preferImmediateRedirect":
            preferImmediateRedirect == null ? null : preferImmediateRedirect,
        "videoId": videoId == null ? null : videoId,
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toMap(),
        "webShowNewAutonavCountdown": webShowNewAutonavCountdown == null
            ? null
            : webShowNewAutonavCountdown,
        "webShowBigThumbnailEndscreen": webShowBigThumbnailEndscreen == null
            ? null
            : webShowBigThumbnailEndscreen,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toMap(),
      };
}

class NextButton {
  NextButton({
    this.buttonRenderer,
  });

  NextButtonButtonRenderer buttonRenderer;

  factory NextButton.fromJson(String str) =>
      NextButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NextButton.fromMap(Map<String, dynamic> json) => NextButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : NextButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class NextButtonButtonRenderer {
  NextButtonButtonRenderer({
    this.navigationEndpoint,
    this.accessibility,
    this.trackingParams,
  });

  Endpoint navigationEndpoint;
  Accessibility accessibility;
  String trackingParams;

  factory NextButtonButtonRenderer.fromJson(String str) =>
      NextButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NextButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      NextButtonButtonRenderer(
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromMap(json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromMap(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class EndScreen {
  EndScreen({
    this.watchNextEndScreenRenderer,
  });

  WatchNextEndScreenRenderer watchNextEndScreenRenderer;

  factory EndScreen.fromJson(String str) => EndScreen.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndScreen.fromMap(Map<String, dynamic> json) => EndScreen(
        watchNextEndScreenRenderer: json["watchNextEndScreenRenderer"] == null
            ? null
            : WatchNextEndScreenRenderer.fromMap(
                json["watchNextEndScreenRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "watchNextEndScreenRenderer": watchNextEndScreenRenderer == null
            ? null
            : watchNextEndScreenRenderer.toMap(),
      };
}

class WatchNextEndScreenRenderer {
  WatchNextEndScreenRenderer({
    this.results,
    this.title,
    this.trackingParams,
  });

  List<WatchNextEndScreenRendererResult> results;
  CancelText title;
  String trackingParams;

  factory WatchNextEndScreenRenderer.fromJson(String str) =>
      WatchNextEndScreenRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatchNextEndScreenRenderer.fromMap(Map<String, dynamic> json) =>
      WatchNextEndScreenRenderer(
        results: json["results"] == null
            ? null
            : List<WatchNextEndScreenRendererResult>.from(json["results"]
                .map((x) => WatchNextEndScreenRendererResult.fromMap(x))),
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toMap())),
        "title": title == null ? null : title.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class WatchNextEndScreenRendererResult {
  WatchNextEndScreenRendererResult({
    this.endScreenVideoRenderer,
    this.endScreenPlaylistRenderer,
  });

  EndScreenVideoRenderer endScreenVideoRenderer;
  EndScreenPlaylistRenderer endScreenPlaylistRenderer;

  factory WatchNextEndScreenRendererResult.fromJson(String str) =>
      WatchNextEndScreenRendererResult.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatchNextEndScreenRendererResult.fromMap(Map<String, dynamic> json) =>
      WatchNextEndScreenRendererResult(
        endScreenVideoRenderer: json["endScreenVideoRenderer"] == null
            ? null
            : EndScreenVideoRenderer.fromMap(json["endScreenVideoRenderer"]),
        endScreenPlaylistRenderer: json["endScreenPlaylistRenderer"] == null
            ? null
            : EndScreenPlaylistRenderer.fromMap(
                json["endScreenPlaylistRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "endScreenVideoRenderer": endScreenVideoRenderer == null
            ? null
            : endScreenVideoRenderer.toMap(),
        "endScreenPlaylistRenderer": endScreenPlaylistRenderer == null
            ? null
            : endScreenPlaylistRenderer.toMap(),
      };
}

class EndScreenPlaylistRenderer {
  EndScreenPlaylistRenderer({
    this.playlistId,
    this.title,
    this.thumbnail,
    this.longBylineText,
    this.videoCountText,
    this.navigationEndpoint,
    this.trackingParams,
    this.videoCount,
  });

  String playlistId;
  CancelText title;
  Background thumbnail;
  LongBylineText longBylineText;
  DetailsText videoCountText;
  SecondaryNavigationEndpointClass navigationEndpoint;
  String trackingParams;
  String videoCount;

  factory EndScreenPlaylistRenderer.fromJson(String str) =>
      EndScreenPlaylistRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndScreenPlaylistRenderer.fromMap(Map<String, dynamic> json) =>
      EndScreenPlaylistRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        title: json["title"] == null ? null : CancelText.fromMap(json["title"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : LongBylineText.fromMap(json["longBylineText"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : DetailsText.fromMap(json["videoCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromMap(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        videoCount: json["videoCount"] == null ? null : json["videoCount"],
      );

  Map<String, dynamic> toMap() => {
        "playlistId": playlistId == null ? null : playlistId,
        "title": title == null ? null : title.toMap(),
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toMap(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "videoCount": videoCount == null ? null : videoCount,
      };
}

class LongBylineText {
  LongBylineText({
    this.simpleText,
    this.runs,
  });

  String simpleText;
  List<LongBylineTextRun> runs;

  factory LongBylineText.fromJson(String str) =>
      LongBylineText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LongBylineText.fromMap(Map<String, dynamic> json) => LongBylineText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
        runs: json["runs"] == null
            ? null
            : List<LongBylineTextRun>.from(
                json["runs"].map((x) => LongBylineTextRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "simpleText": simpleText == null ? null : simpleText,
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class EndScreenVideoRenderer {
  EndScreenVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.shortBylineText,
    this.lengthText,
    this.lengthInSeconds,
    this.navigationEndpoint,
    this.trackingParams,
    this.shortViewCountText,
    this.publishedTimeText,
    this.thumbnailOverlays,
  });

  String videoId;
  Background thumbnail;
  LengthText title;
  BylineText shortBylineText;
  LengthText lengthText;
  int lengthInSeconds;
  Endpoint navigationEndpoint;
  String trackingParams;
  CancelText shortViewCountText;
  CancelText publishedTimeText;
  List<EndScreenVideoRendererThumbnailOverlay> thumbnailOverlays;

  factory EndScreenVideoRenderer.fromJson(String str) =>
      EndScreenVideoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndScreenVideoRenderer.fromMap(Map<String, dynamic> json) =>
      EndScreenVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Background.fromMap(json["thumbnail"]),
        title: json["title"] == null ? null : LengthText.fromMap(json["title"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromMap(json["shortBylineText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromMap(json["lengthText"]),
        lengthInSeconds:
            json["lengthInSeconds"] == null ? null : json["lengthInSeconds"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : CancelText.fromMap(json["shortViewCountText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : CancelText.fromMap(json["publishedTimeText"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<EndScreenVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => EndScreenVideoRendererThumbnailOverlay.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "title": title == null ? null : title.toMap(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toMap(),
        "lengthText": lengthText == null ? null : lengthText.toMap(),
        "lengthInSeconds": lengthInSeconds == null ? null : lengthInSeconds,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toMap(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toMap(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toMap())),
      };
}

class EndScreenVideoRendererThumbnailOverlay {
  EndScreenVideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory EndScreenVideoRendererThumbnailOverlay.fromJson(String str) =>
      EndScreenVideoRendererThumbnailOverlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndScreenVideoRendererThumbnailOverlay.fromMap(
          Map<String, dynamic> json) =>
      EndScreenVideoRendererThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : ThumbnailOverlayTimeStatusRenderer.fromMap(
                    json["thumbnailOverlayTimeStatusRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromMap(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnailOverlayTimeStatusRenderer":
            thumbnailOverlayTimeStatusRenderer == null
                ? null
                : thumbnailOverlayTimeStatusRenderer.toMap(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toMap(),
      };
}

class VoiceSearchDialogRenderer {
  VoiceSearchDialogRenderer({
    this.placeholderHeader,
    this.promptHeader,
    this.exampleQuery1,
    this.exampleQuery2,
    this.promptMicrophoneLabel,
    this.loadingHeader,
    this.connectionErrorHeader,
    this.connectionErrorMicrophoneLabel,
    this.permissionsHeader,
    this.permissionsSubtext,
    this.disabledHeader,
    this.disabledSubtext,
    this.exitButton,
    this.trackingParams,
    this.microphoneOffPromptHeader,
  });

  DetailsText placeholderHeader;
  DetailsText promptHeader;
  DetailsText exampleQuery1;
  DetailsText exampleQuery2;
  DetailsText promptMicrophoneLabel;
  DetailsText loadingHeader;
  DetailsText connectionErrorHeader;
  DetailsText connectionErrorMicrophoneLabel;
  DetailsText permissionsHeader;
  DetailsText permissionsSubtext;
  DetailsText disabledHeader;
  DetailsText disabledSubtext;
  ShareButtonClass exitButton;
  String trackingParams;
  DetailsText microphoneOffPromptHeader;

  factory VoiceSearchDialogRenderer.fromJson(String str) =>
      VoiceSearchDialogRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VoiceSearchDialogRenderer.fromMap(Map<String, dynamic> json) =>
      VoiceSearchDialogRenderer(
        placeholderHeader: json["placeholderHeader"] == null
            ? null
            : DetailsText.fromMap(json["placeholderHeader"]),
        promptHeader: json["promptHeader"] == null
            ? null
            : DetailsText.fromMap(json["promptHeader"]),
        exampleQuery1: json["exampleQuery1"] == null
            ? null
            : DetailsText.fromMap(json["exampleQuery1"]),
        exampleQuery2: json["exampleQuery2"] == null
            ? null
            : DetailsText.fromMap(json["exampleQuery2"]),
        promptMicrophoneLabel: json["promptMicrophoneLabel"] == null
            ? null
            : DetailsText.fromMap(json["promptMicrophoneLabel"]),
        loadingHeader: json["loadingHeader"] == null
            ? null
            : DetailsText.fromMap(json["loadingHeader"]),
        connectionErrorHeader: json["connectionErrorHeader"] == null
            ? null
            : DetailsText.fromMap(json["connectionErrorHeader"]),
        connectionErrorMicrophoneLabel:
            json["connectionErrorMicrophoneLabel"] == null
                ? null
                : DetailsText.fromMap(json["connectionErrorMicrophoneLabel"]),
        permissionsHeader: json["permissionsHeader"] == null
            ? null
            : DetailsText.fromMap(json["permissionsHeader"]),
        permissionsSubtext: json["permissionsSubtext"] == null
            ? null
            : DetailsText.fromMap(json["permissionsSubtext"]),
        disabledHeader: json["disabledHeader"] == null
            ? null
            : DetailsText.fromMap(json["disabledHeader"]),
        disabledSubtext: json["disabledSubtext"] == null
            ? null
            : DetailsText.fromMap(json["disabledSubtext"]),
        exitButton: json["exitButton"] == null
            ? null
            : ShareButtonClass.fromMap(json["exitButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        microphoneOffPromptHeader: json["microphoneOffPromptHeader"] == null
            ? null
            : DetailsText.fromMap(json["microphoneOffPromptHeader"]),
      );

  Map<String, dynamic> toMap() => {
        "placeholderHeader":
            placeholderHeader == null ? null : placeholderHeader.toMap(),
        "promptHeader": promptHeader == null ? null : promptHeader.toMap(),
        "exampleQuery1": exampleQuery1 == null ? null : exampleQuery1.toMap(),
        "exampleQuery2": exampleQuery2 == null ? null : exampleQuery2.toMap(),
        "promptMicrophoneLabel": promptMicrophoneLabel == null
            ? null
            : promptMicrophoneLabel.toMap(),
        "loadingHeader": loadingHeader == null ? null : loadingHeader.toMap(),
        "connectionErrorHeader": connectionErrorHeader == null
            ? null
            : connectionErrorHeader.toMap(),
        "connectionErrorMicrophoneLabel": connectionErrorMicrophoneLabel == null
            ? null
            : connectionErrorMicrophoneLabel.toMap(),
        "permissionsHeader":
            permissionsHeader == null ? null : permissionsHeader.toMap(),
        "permissionsSubtext":
            permissionsSubtext == null ? null : permissionsSubtext.toMap(),
        "disabledHeader":
            disabledHeader == null ? null : disabledHeader.toMap(),
        "disabledSubtext":
            disabledSubtext == null ? null : disabledSubtext.toMap(),
        "exitButton": exitButton == null ? null : exitButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "microphoneOffPromptHeader": microphoneOffPromptHeader == null
            ? null
            : microphoneOffPromptHeader.toMap(),
      };
}

class TentacledPopup {
  TentacledPopup({
    this.voiceSearchDialogRenderer,
  });

  VoiceSearchDialogRenderer voiceSearchDialogRenderer;

  factory TentacledPopup.fromJson(String str) =>
      TentacledPopup.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledPopup.fromMap(Map<String, dynamic> json) => TentacledPopup(
        voiceSearchDialogRenderer: json["voiceSearchDialogRenderer"] == null
            ? null
            : VoiceSearchDialogRenderer.fromMap(
                json["voiceSearchDialogRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "voiceSearchDialogRenderer": voiceSearchDialogRenderer == null
            ? null
            : voiceSearchDialogRenderer.toMap(),
      };
}

class FluffyOpenPopupAction {
  FluffyOpenPopupAction({
    this.popup,
    this.popupType,
  });

  TentacledPopup popup;
  String popupType;

  factory FluffyOpenPopupAction.fromJson(String str) =>
      FluffyOpenPopupAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyOpenPopupAction.fromMap(Map<String, dynamic> json) =>
      FluffyOpenPopupAction(
        popup: json["popup"] == null
            ? null
            : TentacledPopup.fromMap(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toMap() => {
        "popup": popup == null ? null : popup.toMap(),
        "popupType": popupType == null ? null : popupType,
      };
}

class IndecentAction {
  IndecentAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  String clickTrackingParams;
  FluffyOpenPopupAction openPopupAction;

  factory IndecentAction.fromJson(String str) =>
      IndecentAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IndecentAction.fromMap(Map<String, dynamic> json) => IndecentAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : FluffyOpenPopupAction.fromMap(json["openPopupAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toMap(),
      };
}

class FluffySignalServiceEndpoint {
  FluffySignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<IndecentAction> actions;

  factory FluffySignalServiceEndpoint.fromJson(String str) =>
      FluffySignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffySignalServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffySignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<IndecentAction>.from(
                json["actions"].map((x) => IndecentAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class FluffyServiceEndpoint {
  FluffyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  PurpleCommandMetadata commandMetadata;
  FluffySignalServiceEndpoint signalServiceEndpoint;

  factory FluffyServiceEndpoint.fromJson(String str) =>
      FluffyServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromMap(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : FluffySignalServiceEndpoint.fromMap(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class ShareButtonButtonRenderer {
  ShareButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.icon,
    this.navigationEndpoint,
    this.tooltip,
    this.trackingParams,
    this.serviceEndpoint,
    this.accessibilityData,
  });

  String style;
  String size;
  bool isDisabled;
  Icon icon;
  HilariousNavigationEndpoint navigationEndpoint;
  String tooltip;
  String trackingParams;
  FluffyServiceEndpoint serviceEndpoint;
  AccessibilityData accessibilityData;

  factory ShareButtonButtonRenderer.fromJson(String str) =>
      ShareButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShareButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      ShareButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : HilariousNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : FluffyServiceEndpoint.fromMap(json["serviceEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibilityData"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
      };
}

class ShareButtonClass {
  ShareButtonClass({
    this.buttonRenderer,
  });

  ShareButtonButtonRenderer buttonRenderer;

  factory ShareButtonClass.fromJson(String str) =>
      ShareButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShareButtonClass.fromMap(Map<String, dynamic> json) =>
      ShareButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : ShareButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class HilariousNavigationEndpoint {
  HilariousNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.shareEntityEndpoint,
  });

  String clickTrackingParams;
  DefaultNavigationEndpointCommandMetadata commandMetadata;
  ShareEntityEndpoint shareEntityEndpoint;

  factory HilariousNavigationEndpoint.fromJson(String str) =>
      HilariousNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HilariousNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      HilariousNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        shareEntityEndpoint: json["shareEntityEndpoint"] == null
            ? null
            : ShareEntityEndpoint.fromMap(json["shareEntityEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "shareEntityEndpoint":
            shareEntityEndpoint == null ? null : shareEntityEndpoint.toMap(),
      };
}

class ShareEntityEndpoint {
  ShareEntityEndpoint({
    this.serializedShareEntity,
  });

  String serializedShareEntity;

  factory ShareEntityEndpoint.fromJson(String str) =>
      ShareEntityEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShareEntityEndpoint.fromMap(Map<String, dynamic> json) =>
      ShareEntityEndpoint(
        serializedShareEntity: json["serializedShareEntity"] == null
            ? null
            : json["serializedShareEntity"],
      );

  Map<String, dynamic> toMap() => {
        "serializedShareEntity":
            serializedShareEntity == null ? null : serializedShareEntity,
      };
}

class ResponseContext {
  ResponseContext({
    this.serviceTrackingParams,
    this.mainAppWebResponseContext,
    this.webResponseContextExtensionData,
  });

  List<ServiceTrackingParam> serviceTrackingParams;
  MainAppWebResponseContext mainAppWebResponseContext;
  WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromJson(String str) =>
      ResponseContext.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponseContext.fromMap(Map<String, dynamic> json) => ResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromMap(x))),
        mainAppWebResponseContext: json["mainAppWebResponseContext"] == null
            ? null
            : MainAppWebResponseContext.fromMap(
                json["mainAppWebResponseContext"]),
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : WebResponseContextExtensionData.fromMap(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toMap() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toMap())),
        "mainAppWebResponseContext": mainAppWebResponseContext == null
            ? null
            : mainAppWebResponseContext.toMap(),
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toMap(),
      };
}

class MainAppWebResponseContext {
  MainAppWebResponseContext({
    this.loggedOut,
  });

  bool loggedOut;

  factory MainAppWebResponseContext.fromJson(String str) =>
      MainAppWebResponseContext.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MainAppWebResponseContext.fromMap(Map<String, dynamic> json) =>
      MainAppWebResponseContext(
        loggedOut: json["loggedOut"] == null ? null : json["loggedOut"],
      );

  Map<String, dynamic> toMap() => {
        "loggedOut": loggedOut == null ? null : loggedOut,
      };
}

class ServiceTrackingParam {
  ServiceTrackingParam({
    this.service,
    this.params,
  });

  String service;
  List<Param> params;

  factory ServiceTrackingParam.fromJson(String str) =>
      ServiceTrackingParam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceTrackingParam.fromMap(Map<String, dynamic> json) =>
      ServiceTrackingParam(
        service: json["service"] == null ? null : json["service"],
        params: json["params"] == null
            ? null
            : List<Param>.from(json["params"].map((x) => Param.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "service": service == null ? null : service,
        "params": params == null
            ? null
            : List<dynamic>.from(params.map((x) => x.toMap())),
      };
}

class Param {
  Param({
    this.key,
    this.value,
  });

  String key;
  String value;

  factory Param.fromJson(String str) => Param.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Param.fromMap(Map<String, dynamic> json) => Param(
        key: json["key"] == null ? null : json["key"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toMap() => {
        "key": key == null ? null : key,
        "value": value == null ? null : value,
      };
}

class WebResponseContextExtensionData {
  WebResponseContextExtensionData({
    this.webPrefetchData,
    this.hasDecorated,
  });

  WebPrefetchData webPrefetchData;
  bool hasDecorated;

  factory WebResponseContextExtensionData.fromJson(String str) =>
      WebResponseContextExtensionData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebResponseContextExtensionData.fromMap(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        webPrefetchData: json["webPrefetchData"] == null
            ? null
            : WebPrefetchData.fromMap(json["webPrefetchData"]),
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toMap() => {
        "webPrefetchData":
            webPrefetchData == null ? null : webPrefetchData.toMap(),
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class WebPrefetchData {
  WebPrefetchData({
    this.navigationEndpoints,
  });

  List<NavigationEndpointElement> navigationEndpoints;

  factory WebPrefetchData.fromJson(String str) =>
      WebPrefetchData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebPrefetchData.fromMap(Map<String, dynamic> json) => WebPrefetchData(
        navigationEndpoints: json["navigationEndpoints"] == null
            ? null
            : List<NavigationEndpointElement>.from(json["navigationEndpoints"]
                .map((x) => NavigationEndpointElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "navigationEndpoints": navigationEndpoints == null
            ? null
            : List<dynamic>.from(navigationEndpoints.map((x) => x.toMap())),
      };
}

class Topbar {
  Topbar({
    this.desktopTopbarRenderer,
  });

  DesktopTopbarRenderer desktopTopbarRenderer;

  factory Topbar.fromJson(String str) => Topbar.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Topbar.fromMap(Map<String, dynamic> json) => Topbar(
        desktopTopbarRenderer: json["desktopTopbarRenderer"] == null
            ? null
            : DesktopTopbarRenderer.fromMap(json["desktopTopbarRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "desktopTopbarRenderer": desktopTopbarRenderer == null
            ? null
            : desktopTopbarRenderer.toMap(),
      };
}

class DesktopTopbarRenderer {
  DesktopTopbarRenderer({
    this.logo,
    this.searchbox,
    this.trackingParams,
    this.countryCode,
    this.topbarButtons,
    this.hotkeyDialog,
    this.backButton,
    this.forwardButton,
    this.a11YSkipNavigationButton,
    this.voiceSearchButton,
  });

  Logo logo;
  Searchbox searchbox;
  String trackingParams;
  String countryCode;
  List<TopbarButton> topbarButtons;
  HotkeyDialog hotkeyDialog;
  BackButtonClass backButton;
  BackButtonClass forwardButton;
  A11YSkipNavigationButton a11YSkipNavigationButton;
  ShareButtonClass voiceSearchButton;

  factory DesktopTopbarRenderer.fromJson(String str) =>
      DesktopTopbarRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DesktopTopbarRenderer.fromMap(Map<String, dynamic> json) =>
      DesktopTopbarRenderer(
        logo: json["logo"] == null ? null : Logo.fromMap(json["logo"]),
        searchbox: json["searchbox"] == null
            ? null
            : Searchbox.fromMap(json["searchbox"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        countryCode: json["countryCode"] == null ? null : json["countryCode"],
        topbarButtons: json["topbarButtons"] == null
            ? null
            : List<TopbarButton>.from(
                json["topbarButtons"].map((x) => TopbarButton.fromMap(x))),
        hotkeyDialog: json["hotkeyDialog"] == null
            ? null
            : HotkeyDialog.fromMap(json["hotkeyDialog"]),
        backButton: json["backButton"] == null
            ? null
            : BackButtonClass.fromMap(json["backButton"]),
        forwardButton: json["forwardButton"] == null
            ? null
            : BackButtonClass.fromMap(json["forwardButton"]),
        a11YSkipNavigationButton: json["a11ySkipNavigationButton"] == null
            ? null
            : A11YSkipNavigationButton.fromMap(
                json["a11ySkipNavigationButton"]),
        voiceSearchButton: json["voiceSearchButton"] == null
            ? null
            : ShareButtonClass.fromMap(json["voiceSearchButton"]),
      );

  Map<String, dynamic> toMap() => {
        "logo": logo == null ? null : logo.toMap(),
        "searchbox": searchbox == null ? null : searchbox.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "countryCode": countryCode == null ? null : countryCode,
        "topbarButtons": topbarButtons == null
            ? null
            : List<dynamic>.from(topbarButtons.map((x) => x.toMap())),
        "hotkeyDialog": hotkeyDialog == null ? null : hotkeyDialog.toMap(),
        "backButton": backButton == null ? null : backButton.toMap(),
        "forwardButton": forwardButton == null ? null : forwardButton.toMap(),
        "a11ySkipNavigationButton": a11YSkipNavigationButton == null
            ? null
            : a11YSkipNavigationButton.toMap(),
        "voiceSearchButton":
            voiceSearchButton == null ? null : voiceSearchButton.toMap(),
      };
}

class A11YSkipNavigationButton {
  A11YSkipNavigationButton({
    this.buttonRenderer,
  });

  A11YSkipNavigationButtonButtonRenderer buttonRenderer;

  factory A11YSkipNavigationButton.fromJson(String str) =>
      A11YSkipNavigationButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory A11YSkipNavigationButton.fromMap(Map<String, dynamic> json) =>
      A11YSkipNavigationButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : A11YSkipNavigationButtonButtonRenderer.fromMap(
                json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class A11YSkipNavigationButtonButtonRenderer {
  A11YSkipNavigationButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.trackingParams,
    this.command,
  });

  String style;
  String size;
  bool isDisabled;
  DetailsText text;
  String trackingParams;
  ServiceEndpointClass command;

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory A11YSkipNavigationButtonButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toMap(),
      };
}

class BackButtonClass {
  BackButtonClass({
    this.buttonRenderer,
  });

  BackButtonButtonRenderer buttonRenderer;

  factory BackButtonClass.fromJson(String str) =>
      BackButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BackButtonClass.fromMap(Map<String, dynamic> json) => BackButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : BackButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class BackButtonButtonRenderer {
  BackButtonButtonRenderer({
    this.trackingParams,
    this.command,
  });

  String trackingParams;
  ServiceEndpointClass command;

  factory BackButtonButtonRenderer.fromJson(String str) =>
      BackButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BackButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toMap(),
      };
}

class HotkeyDialog {
  HotkeyDialog({
    this.hotkeyDialogRenderer,
  });

  HotkeyDialogRenderer hotkeyDialogRenderer;

  factory HotkeyDialog.fromJson(String str) =>
      HotkeyDialog.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotkeyDialog.fromMap(Map<String, dynamic> json) => HotkeyDialog(
        hotkeyDialogRenderer: json["hotkeyDialogRenderer"] == null
            ? null
            : HotkeyDialogRenderer.fromMap(json["hotkeyDialogRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "hotkeyDialogRenderer":
            hotkeyDialogRenderer == null ? null : hotkeyDialogRenderer.toMap(),
      };
}

class HotkeyDialogRenderer {
  HotkeyDialogRenderer({
    this.title,
    this.sections,
    this.dismissButton,
    this.trackingParams,
  });

  DetailsText title;
  List<HotkeyDialogRendererSection> sections;
  DismissButtonClass dismissButton;
  String trackingParams;

  factory HotkeyDialogRenderer.fromJson(String str) =>
      HotkeyDialogRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotkeyDialogRenderer.fromMap(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title:
            json["title"] == null ? null : DetailsText.fromMap(json["title"]),
        sections: json["sections"] == null
            ? null
            : List<HotkeyDialogRendererSection>.from(json["sections"]
                .map((x) => HotkeyDialogRendererSection.fromMap(x))),
        dismissButton: json["dismissButton"] == null
            ? null
            : DismissButtonClass.fromMap(json["dismissButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toMap())),
        "dismissButton": dismissButton == null ? null : dismissButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class HotkeyDialogRendererSection {
  HotkeyDialogRendererSection({
    this.hotkeyDialogSectionRenderer,
  });

  HotkeyDialogSectionRenderer hotkeyDialogSectionRenderer;

  factory HotkeyDialogRendererSection.fromJson(String str) =>
      HotkeyDialogRendererSection.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotkeyDialogRendererSection.fromMap(Map<String, dynamic> json) =>
      HotkeyDialogRendererSection(
        hotkeyDialogSectionRenderer: json["hotkeyDialogSectionRenderer"] == null
            ? null
            : HotkeyDialogSectionRenderer.fromMap(
                json["hotkeyDialogSectionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "hotkeyDialogSectionRenderer": hotkeyDialogSectionRenderer == null
            ? null
            : hotkeyDialogSectionRenderer.toMap(),
      };
}

class HotkeyDialogSectionRenderer {
  HotkeyDialogSectionRenderer({
    this.title,
    this.options,
  });

  DetailsText title;
  List<Option> options;

  factory HotkeyDialogSectionRenderer.fromJson(String str) =>
      HotkeyDialogSectionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotkeyDialogSectionRenderer.fromMap(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title:
            json["title"] == null ? null : DetailsText.fromMap(json["title"]),
        options: json["options"] == null
            ? null
            : List<Option>.from(json["options"].map((x) => Option.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "options": options == null
            ? null
            : List<dynamic>.from(options.map((x) => x.toMap())),
      };
}

class Option {
  Option({
    this.hotkeyDialogSectionOptionRenderer,
  });

  HotkeyDialogSectionOptionRenderer hotkeyDialogSectionOptionRenderer;

  factory Option.fromJson(String str) => Option.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Option.fromMap(Map<String, dynamic> json) => Option(
        hotkeyDialogSectionOptionRenderer:
            json["hotkeyDialogSectionOptionRenderer"] == null
                ? null
                : HotkeyDialogSectionOptionRenderer.fromMap(
                    json["hotkeyDialogSectionOptionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "hotkeyDialogSectionOptionRenderer":
            hotkeyDialogSectionOptionRenderer == null
                ? null
                : hotkeyDialogSectionOptionRenderer.toMap(),
      };
}

class HotkeyDialogSectionOptionRenderer {
  HotkeyDialogSectionOptionRenderer({
    this.label,
    this.hotkey,
    this.hotkeyAccessibilityLabel,
  });

  DetailsText label;
  String hotkey;
  AccessibilityData hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HotkeyDialogSectionOptionRenderer.fromMap(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label:
            json["label"] == null ? null : DetailsText.fromMap(json["label"]),
        hotkey: json["hotkey"] == null ? null : json["hotkey"],
        hotkeyAccessibilityLabel: json["hotkeyAccessibilityLabel"] == null
            ? null
            : AccessibilityData.fromMap(json["hotkeyAccessibilityLabel"]),
      );

  Map<String, dynamic> toMap() => {
        "label": label == null ? null : label.toMap(),
        "hotkey": hotkey == null ? null : hotkey,
        "hotkeyAccessibilityLabel": hotkeyAccessibilityLabel == null
            ? null
            : hotkeyAccessibilityLabel.toMap(),
      };
}

class Logo {
  Logo({
    this.topbarLogoRenderer,
  });

  TopbarLogoRenderer topbarLogoRenderer;

  factory Logo.fromJson(String str) => Logo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Logo.fromMap(Map<String, dynamic> json) => Logo(
        topbarLogoRenderer: json["topbarLogoRenderer"] == null
            ? null
            : TopbarLogoRenderer.fromMap(json["topbarLogoRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "topbarLogoRenderer":
            topbarLogoRenderer == null ? null : topbarLogoRenderer.toMap(),
      };
}

class TopbarLogoRenderer {
  TopbarLogoRenderer({
    this.iconImage,
    this.tooltipText,
    this.endpoint,
    this.trackingParams,
  });

  Icon iconImage;
  DetailsText tooltipText;
  EndpointClass endpoint;
  String trackingParams;

  factory TopbarLogoRenderer.fromJson(String str) =>
      TopbarLogoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopbarLogoRenderer.fromMap(Map<String, dynamic> json) =>
      TopbarLogoRenderer(
        iconImage:
            json["iconImage"] == null ? null : Icon.fromMap(json["iconImage"]),
        tooltipText: json["tooltipText"] == null
            ? null
            : DetailsText.fromMap(json["tooltipText"]),
        endpoint: json["endpoint"] == null
            ? null
            : EndpointClass.fromMap(json["endpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "iconImage": iconImage == null ? null : iconImage.toMap(),
        "tooltipText": tooltipText == null ? null : tooltipText.toMap(),
        "endpoint": endpoint == null ? null : endpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Searchbox {
  Searchbox({
    this.fusionSearchboxRenderer,
  });

  FusionSearchboxRenderer fusionSearchboxRenderer;

  factory Searchbox.fromJson(String str) => Searchbox.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Searchbox.fromMap(Map<String, dynamic> json) => Searchbox(
        fusionSearchboxRenderer: json["fusionSearchboxRenderer"] == null
            ? null
            : FusionSearchboxRenderer.fromMap(json["fusionSearchboxRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "fusionSearchboxRenderer": fusionSearchboxRenderer == null
            ? null
            : fusionSearchboxRenderer.toMap(),
      };
}

class FusionSearchboxRenderer {
  FusionSearchboxRenderer({
    this.icon,
    this.placeholderText,
    this.config,
    this.trackingParams,
    this.searchEndpoint,
  });

  Icon icon;
  DetailsText placeholderText;
  Config config;
  String trackingParams;
  FusionSearchboxRendererSearchEndpoint searchEndpoint;

  factory FusionSearchboxRenderer.fromJson(String str) =>
      FusionSearchboxRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FusionSearchboxRenderer.fromMap(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        placeholderText: json["placeholderText"] == null
            ? null
            : DetailsText.fromMap(json["placeholderText"]),
        config: json["config"] == null ? null : Config.fromMap(json["config"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : FusionSearchboxRendererSearchEndpoint.fromMap(
                json["searchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "placeholderText":
            placeholderText == null ? null : placeholderText.toMap(),
        "config": config == null ? null : config.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toMap(),
      };
}

class Config {
  Config({
    this.webSearchboxConfig,
  });

  WebSearchboxConfig webSearchboxConfig;

  factory Config.fromJson(String str) => Config.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Config.fromMap(Map<String, dynamic> json) => Config(
        webSearchboxConfig: json["webSearchboxConfig"] == null
            ? null
            : WebSearchboxConfig.fromMap(json["webSearchboxConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "webSearchboxConfig":
            webSearchboxConfig == null ? null : webSearchboxConfig.toMap(),
      };
}

class WebSearchboxConfig {
  WebSearchboxConfig({
    this.requestLanguage,
    this.requestDomain,
    this.hasOnscreenKeyboard,
    this.focusSearchbox,
  });

  String requestLanguage;
  String requestDomain;
  bool hasOnscreenKeyboard;
  bool focusSearchbox;

  factory WebSearchboxConfig.fromJson(String str) =>
      WebSearchboxConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebSearchboxConfig.fromMap(Map<String, dynamic> json) =>
      WebSearchboxConfig(
        requestLanguage:
            json["requestLanguage"] == null ? null : json["requestLanguage"],
        requestDomain:
            json["requestDomain"] == null ? null : json["requestDomain"],
        hasOnscreenKeyboard: json["hasOnscreenKeyboard"] == null
            ? null
            : json["hasOnscreenKeyboard"],
        focusSearchbox:
            json["focusSearchbox"] == null ? null : json["focusSearchbox"],
      );

  Map<String, dynamic> toMap() => {
        "requestLanguage": requestLanguage == null ? null : requestLanguage,
        "requestDomain": requestDomain == null ? null : requestDomain,
        "hasOnscreenKeyboard":
            hasOnscreenKeyboard == null ? null : hasOnscreenKeyboard,
        "focusSearchbox": focusSearchbox == null ? null : focusSearchbox,
      };
}

class FusionSearchboxRendererSearchEndpoint {
  FusionSearchboxRendererSearchEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  SearchEndpointSearchEndpoint searchEndpoint;

  factory FusionSearchboxRendererSearchEndpoint.fromJson(String str) =>
      FusionSearchboxRendererSearchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FusionSearchboxRendererSearchEndpoint.fromMap(
          Map<String, dynamic> json) =>
      FusionSearchboxRendererSearchEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : SearchEndpointSearchEndpoint.fromMap(json["searchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toMap(),
      };
}

class SearchEndpointSearchEndpoint {
  SearchEndpointSearchEndpoint({
    this.query,
  });

  String query;

  factory SearchEndpointSearchEndpoint.fromJson(String str) =>
      SearchEndpointSearchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SearchEndpointSearchEndpoint.fromMap(Map<String, dynamic> json) =>
      SearchEndpointSearchEndpoint(
        query: json["query"] == null ? null : json["query"],
      );

  Map<String, dynamic> toMap() => {
        "query": query == null ? null : query,
      };
}

class TopbarButton {
  TopbarButton({
    this.topbarMenuButtonRenderer,
    this.buttonRenderer,
  });

  TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  TopbarButtonButtonRenderer buttonRenderer;

  factory TopbarButton.fromJson(String str) =>
      TopbarButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopbarButton.fromMap(Map<String, dynamic> json) => TopbarButton(
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromMap(
                json["topbarMenuButtonRenderer"]),
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopbarButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toMap(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class TopbarButtonButtonRenderer {
  TopbarButtonButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.targetId,
  });

  String style;
  String size;
  DetailsText text;
  Icon icon;
  AmbitiousNavigationEndpoint navigationEndpoint;
  String trackingParams;
  String targetId;

  factory TopbarButtonButtonRenderer.fromJson(String str) =>
      TopbarButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopbarButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : DetailsText.fromMap(json["text"]),
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : AmbitiousNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class AmbitiousNavigationEndpoint {
  AmbitiousNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  StickySignInEndpoint signInEndpoint;

  factory AmbitiousNavigationEndpoint.fromJson(String str) =>
      AmbitiousNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AmbitiousNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      AmbitiousNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : StickySignInEndpoint.fromMap(json["signInEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toMap(),
      };
}

class StickySignInEndpoint {
  StickySignInEndpoint({
    this.idamTag,
  });

  String idamTag;

  factory StickySignInEndpoint.fromJson(String str) =>
      StickySignInEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickySignInEndpoint.fromMap(Map<String, dynamic> json) =>
      StickySignInEndpoint(
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toMap() => {
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class TopbarMenuButtonRenderer {
  TopbarMenuButtonRenderer({
    this.icon,
    this.menuRenderer,
    this.trackingParams,
    this.accessibility,
    this.tooltip,
    this.style,
    this.targetId,
    this.menuRequest,
  });

  Icon icon;
  TopbarMenuButtonRendererMenuRenderer menuRenderer;
  String trackingParams;
  AccessibilityData accessibility;
  String tooltip;
  String style;
  String targetId;
  MenuRequest menuRequest;

  factory TopbarMenuButtonRenderer.fromJson(String str) =>
      TopbarMenuButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopbarMenuButtonRenderer.fromMap(Map<String, dynamic> json) =>
      TopbarMenuButtonRenderer(
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        menuRenderer: json["menuRenderer"] == null
            ? null
            : TopbarMenuButtonRendererMenuRenderer.fromMap(
                json["menuRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromMap(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null ? null : json["style"],
        targetId: json["targetId"] == null ? null : json["targetId"],
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromMap(json["menuRequest"]),
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "tooltip": tooltip == null ? null : tooltip,
        "style": style == null ? null : style,
        "targetId": targetId == null ? null : targetId,
        "menuRequest": menuRequest == null ? null : menuRequest.toMap(),
      };
}

class TopbarMenuButtonRendererMenuRenderer {
  TopbarMenuButtonRendererMenuRenderer({
    this.multiPageMenuRenderer,
  });

  MenuRendererMultiPageMenuRenderer multiPageMenuRenderer;

  factory TopbarMenuButtonRendererMenuRenderer.fromJson(String str) =>
      TopbarMenuButtonRendererMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopbarMenuButtonRendererMenuRenderer.fromMap(
          Map<String, dynamic> json) =>
      TopbarMenuButtonRendererMenuRenderer(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : MenuRendererMultiPageMenuRenderer.fromMap(
                json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toMap(),
      };
}

class MenuRendererMultiPageMenuRenderer {
  MenuRendererMultiPageMenuRenderer({
    this.sections,
    this.trackingParams,
  });

  List<MultiPageMenuRendererSection> sections;
  String trackingParams;

  factory MenuRendererMultiPageMenuRenderer.fromJson(String str) =>
      MenuRendererMultiPageMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuRendererMultiPageMenuRenderer.fromMap(
          Map<String, dynamic> json) =>
      MenuRendererMultiPageMenuRenderer(
        sections: json["sections"] == null
            ? null
            : List<MultiPageMenuRendererSection>.from(json["sections"]
                .map((x) => MultiPageMenuRendererSection.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MultiPageMenuRendererSection {
  MultiPageMenuRendererSection({
    this.multiPageMenuSectionRenderer,
  });

  MultiPageMenuSectionRenderer multiPageMenuSectionRenderer;

  factory MultiPageMenuRendererSection.fromJson(String str) =>
      MultiPageMenuRendererSection.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MultiPageMenuRendererSection.fromMap(Map<String, dynamic> json) =>
      MultiPageMenuRendererSection(
        multiPageMenuSectionRenderer:
            json["multiPageMenuSectionRenderer"] == null
                ? null
                : MultiPageMenuSectionRenderer.fromMap(
                    json["multiPageMenuSectionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "multiPageMenuSectionRenderer": multiPageMenuSectionRenderer == null
            ? null
            : multiPageMenuSectionRenderer.toMap(),
      };
}

class MultiPageMenuSectionRenderer {
  MultiPageMenuSectionRenderer({
    this.items,
    this.trackingParams,
  });

  List<MultiPageMenuSectionRendererItem> items;
  String trackingParams;

  factory MultiPageMenuSectionRenderer.fromJson(String str) =>
      MultiPageMenuSectionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MultiPageMenuSectionRenderer.fromMap(Map<String, dynamic> json) =>
      MultiPageMenuSectionRenderer(
        items: json["items"] == null
            ? null
            : List<MultiPageMenuSectionRendererItem>.from(json["items"]
                .map((x) => MultiPageMenuSectionRendererItem.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MultiPageMenuSectionRendererItem {
  MultiPageMenuSectionRendererItem({
    this.compactLinkRenderer,
  });

  CompactLinkRenderer compactLinkRenderer;

  factory MultiPageMenuSectionRendererItem.fromJson(String str) =>
      MultiPageMenuSectionRendererItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MultiPageMenuSectionRendererItem.fromMap(Map<String, dynamic> json) =>
      MultiPageMenuSectionRendererItem(
        compactLinkRenderer: json["compactLinkRenderer"] == null
            ? null
            : CompactLinkRenderer.fromMap(json["compactLinkRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "compactLinkRenderer":
            compactLinkRenderer == null ? null : compactLinkRenderer.toMap(),
      };
}

class CompactLinkRenderer {
  CompactLinkRenderer({
    this.icon,
    this.title,
    this.navigationEndpoint,
    this.trackingParams,
  });

  Icon icon;
  DetailsText title;
  CompactLinkRendererNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory CompactLinkRenderer.fromJson(String str) =>
      CompactLinkRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactLinkRenderer.fromMap(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : Icon.fromMap(json["icon"]),
        title:
            json["title"] == null ? null : DetailsText.fromMap(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactLinkRendererNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "title": title == null ? null : title.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompactLinkRendererNavigationEndpoint {
  CompactLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  AutoplayVideoCommandMetadata commandMetadata;
  FluffyUrlEndpoint urlEndpoint;

  factory CompactLinkRendererNavigationEndpoint.fromJson(String str) =>
      CompactLinkRendererNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompactLinkRendererNavigationEndpoint.fromMap(
          Map<String, dynamic> json) =>
      CompactLinkRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromMap(json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : FluffyUrlEndpoint.fromMap(json["urlEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toMap(),
      };
}

class FluffyUrlEndpoint {
  FluffyUrlEndpoint({
    this.url,
    this.target,
  });

  String url;
  String target;

  factory FluffyUrlEndpoint.fromJson(String str) =>
      FluffyUrlEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyUrlEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "target": target == null ? null : target,
      };
}

class MenuRequest {
  MenuRequest({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  OnCreateListCommandCommandMetadata commandMetadata;
  MenuRequestSignalServiceEndpoint signalServiceEndpoint;

  factory MenuRequest.fromJson(String str) =>
      MenuRequest.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuRequest.fromMap(Map<String, dynamic> json) => MenuRequest(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromMap(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : MenuRequestSignalServiceEndpoint.fromMap(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class MenuRequestSignalServiceEndpoint {
  MenuRequestSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  String signal;
  List<HilariousAction> actions;

  factory MenuRequestSignalServiceEndpoint.fromJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuRequestSignalServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<HilariousAction>.from(
                json["actions"].map((x) => HilariousAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class HilariousAction {
  HilariousAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  String clickTrackingParams;
  TentacledOpenPopupAction openPopupAction;

  factory HilariousAction.fromJson(String str) =>
      HilariousAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HilariousAction.fromMap(Map<String, dynamic> json) => HilariousAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : TentacledOpenPopupAction.fromMap(json["openPopupAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toMap(),
      };
}

class TentacledOpenPopupAction {
  TentacledOpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  StickyPopup popup;
  String popupType;
  bool beReused;

  factory TentacledOpenPopupAction.fromJson(String str) =>
      TentacledOpenPopupAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledOpenPopupAction.fromMap(Map<String, dynamic> json) =>
      TentacledOpenPopupAction(
        popup:
            json["popup"] == null ? null : StickyPopup.fromMap(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toMap() => {
        "popup": popup == null ? null : popup.toMap(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class StickyPopup {
  StickyPopup({
    this.multiPageMenuRenderer,
  });

  PopupMultiPageMenuRenderer multiPageMenuRenderer;

  factory StickyPopup.fromJson(String str) =>
      StickyPopup.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StickyPopup.fromMap(Map<String, dynamic> json) => StickyPopup(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : PopupMultiPageMenuRenderer.fromMap(json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toMap(),
      };
}

class PopupMultiPageMenuRenderer {
  PopupMultiPageMenuRenderer({
    this.trackingParams,
    this.style,
    this.showLoadingSpinner,
  });

  String trackingParams;
  String style;
  bool showLoadingSpinner;

  factory PopupMultiPageMenuRenderer.fromJson(String str) =>
      PopupMultiPageMenuRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PopupMultiPageMenuRenderer.fromMap(Map<String, dynamic> json) =>
      PopupMultiPageMenuRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
        showLoadingSpinner: json["showLoadingSpinner"] == null
            ? null
            : json["showLoadingSpinner"],
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
        "showLoadingSpinner":
            showLoadingSpinner == null ? null : showLoadingSpinner,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
