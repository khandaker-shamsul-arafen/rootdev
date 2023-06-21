import 'dart:convert';
Fixture fixtureFromJson(String str) => Fixture.fromJson(json.decode(str));
String fixtureToJson(Fixture data) => json.encode(data.toJson());
class Fixture {
  Fixture({
    this.data,
    this.pagination,
    this.subscription,
    this.rateLimit,
    this.timezone,
  });

  Fixture.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
    if (json['subscription'] != null) {
      subscription = [];
      json['subscription'].forEach((v) {
        subscription?.add(Subscription.fromJson(v));
      });
    }
    rateLimit = json['rate_limit'] != null ? RateLimit.fromJson(json['rate_limit']) : null;
    timezone = json['timezone'];
  }
  List<Data>? data;
  Pagination? pagination;
  List<Subscription>? subscription;
  RateLimit? rateLimit;
  String? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      map['pagination'] = pagination?.toJson();
    }
    if (subscription != null) {
      map['subscription'] = subscription?.map((v) => v.toJson()).toList();
    }
    if (rateLimit != null) {
      map['rate_limit'] = rateLimit?.toJson();
    }
    map['timezone'] = timezone;
    return map;
  }

}

RateLimit rateLimitFromJson(String str) => RateLimit.fromJson(json.decode(str));
String rateLimitToJson(RateLimit data) => json.encode(data.toJson());
class RateLimit {
  RateLimit({
    this.resetsInSeconds,
    this.remaining,
    this.requestedEntity,
  });

  RateLimit.fromJson(dynamic json) {
    resetsInSeconds = json['resets_in_seconds'];
    remaining = json['remaining'];
    requestedEntity = json['requested_entity'];
  }
  num? resetsInSeconds;
  num? remaining;
  String? requestedEntity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['resets_in_seconds'] = resetsInSeconds;
    map['remaining'] = remaining;
    map['requested_entity'] = requestedEntity;
    return map;
  }

}

Subscription subscriptionFromJson(String str) => Subscription.fromJson(json.decode(str));
String subscriptionToJson(Subscription data) => json.encode(data.toJson());
class Subscription {
  Subscription({
    this.meta,
    this.plans,
    this.addOns,
    this.widgets,
  });

  Subscription.fromJson(dynamic json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['plans'] != null) {
      plans = [];
      json['plans'].forEach((v) {
        plans?.add(Plans.fromJson(v));
      });
    }

  }
  Meta? meta;
  List<Plans>? plans;
  List<dynamic>? addOns;
  List<dynamic>? widgets;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    if (plans != null) {
      map['plans'] = plans?.map((v) => v.toJson()).toList();
    }
    if (addOns != null) {
      map['add_ons'] = addOns?.map((v) => v.toJson()).toList();
    }
    if (widgets != null) {
      map['widgets'] = widgets?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Plans plansFromJson(String str) => Plans.fromJson(json.decode(str));
String plansToJson(Plans data) => json.encode(data.toJson());
class Plans {
  Plans({
    this.plan,
    this.sport,
    this.category,
  });

  Plans.fromJson(dynamic json) {
    plan = json['plan'];
    sport = json['sport'];
    category = json['category'];
  }
  String? plan;
  String? sport;
  String? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['plan'] = plan;
    map['sport'] = sport;
    map['category'] = category;
    return map;
  }

}

Meta metaFromJson(String str) => Meta.fromJson(json.decode(str));
String metaToJson(Meta data) => json.encode(data.toJson());
class Meta {
  Meta({
    this.trialEndsAt,
    this.endsAt,
  });

  Meta.fromJson(dynamic json) {
    trialEndsAt = json['trial_ends_at'];
    endsAt = json['ends_at'];
  }
  String? trialEndsAt;
  String? endsAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['trial_ends_at'] = trialEndsAt;
    map['ends_at'] = endsAt;
    return map;
  }

}

Pagination paginationFromJson(String str) => Pagination.fromJson(json.decode(str));
String paginationToJson(Pagination data) => json.encode(data.toJson());
class Pagination {
  Pagination({
    this.count,
    this.perPage,
    this.currentPage,
    this.nextPage,
    this.hasMore,
  });

  Pagination.fromJson(dynamic json) {
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    nextPage = json['next_page'];
    hasMore = json['has_more'];
  }
  num? count;
  num? perPage;
  num? currentPage;
  String? nextPage;
  bool? hasMore;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['per_page'] = perPage;
    map['current_page'] = currentPage;
    map['next_page'] = nextPage;
    map['has_more'] = hasMore;
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
    this.id,
    this.sportId,
    this.leagueId,
    this.seasonId,
    this.stageId,
    this.groupId,
    this.aggregateId,
    this.roundId,
    this.stateId,
    this.venueId,
    this.name,
    this.startingAt,
    this.resultInfo,
    this.leg,
    this.details,
    this.length,
    this.placeholder,
    this.hasOdds,
    this.startingAtTimestamp,
    this.league,
    this.participants,
    this.round,
    this.state,
    this.periods,
    this.scores,
    this.events,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    sportId = json['sport_id'];
    leagueId = json['league_id'];
    seasonId = json['season_id'];
    stageId = json['stage_id'];
    groupId = json['group_id'];
    aggregateId = json['aggregate_id'];
    roundId = json['round_id'];
    stateId = json['state_id'];
    venueId = json['venue_id'];
    name = json['name'];
    startingAt = json['starting_at'];
    resultInfo = json['result_info'];
    leg = json['leg'];
    details = json['details'];
    length = json['length'];
    placeholder = json['placeholder'];
    hasOdds = json['has_odds'];
    startingAtTimestamp = json['starting_at_timestamp'];
    league = json['league'] != null ? League.fromJson(json['league']) : null;
    if (json['participants'] != null) {
      participants = [];
      json['participants'].forEach((v) {
        participants?.add(Participants.fromJson(v));
      });
    }
    round = json['round'];
    state = json['state'] != null ? State.fromJson(json['state']) : null;
    if (json['periods'] != null) {
      periods = [];
      json['periods'].forEach((v) {
        periods?.add(Periods.fromJson(v));
      });
    }
    if (json['scores'] != null) {
      scores = [];
      json['scores'].forEach((v) {
        scores?.add(Scores.fromJson(v));
      });
    }
    if (json['events'] != null) {
      events = [];
      json['events'].forEach((v) {
        events?.add(Events.fromJson(v));
      });
    }
  }
  num? id;
  num? sportId;
  num? leagueId;
  num? seasonId;
  num? stageId;
  dynamic groupId;
  dynamic aggregateId;
  dynamic roundId;
  num? stateId;
  dynamic venueId;
  String? name;
  String? startingAt;
  String? resultInfo;
  String? leg;
  dynamic details;
  num? length;
  bool? placeholder;
  bool? hasOdds;
  num? startingAtTimestamp;
  League? league;
  List<Participants>? participants;
  dynamic round;
  State? state;
  List<Periods>? periods;
  List<Scores>? scores;
  List<Events>? events;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sport_id'] = sportId;
    map['league_id'] = leagueId;
    map['season_id'] = seasonId;
    map['stage_id'] = stageId;
    map['group_id'] = groupId;
    map['aggregate_id'] = aggregateId;
    map['round_id'] = roundId;
    map['state_id'] = stateId;
    map['venue_id'] = venueId;
    map['name'] = name;
    map['starting_at'] = startingAt;
    map['result_info'] = resultInfo;
    map['leg'] = leg;
    map['details'] = details;
    map['length'] = length;
    map['placeholder'] = placeholder;
    map['has_odds'] = hasOdds;
    map['starting_at_timestamp'] = startingAtTimestamp;
    if (league != null) {
      map['league'] = league?.toJson();
    }
    if (participants != null) {
      map['participants'] = participants?.map((v) => v.toJson()).toList();
    }
    map['round'] = round;
    if (state != null) {
      map['state'] = state?.toJson();
    }
    if (periods != null) {
      map['periods'] = periods?.map((v) => v.toJson()).toList();
    }
    if (scores != null) {
      map['scores'] = scores?.map((v) => v.toJson()).toList();
    }
    if (events != null) {
      map['events'] = events?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Events eventsFromJson(String str) => Events.fromJson(json.decode(str));
String eventsToJson(Events data) => json.encode(data.toJson());
class Events {
  Events({
    this.id,
    this.fixtureId,
    this.periodId,
    this.participantId,
    this.typeId,
    this.section,
    this.playerId,
    this.relatedPlayerId,
    this.playerName,
    this.relatedPlayerName,
    this.result,
    this.info,
    this.addition,
    this.minute,
    this.extraMinute,
    this.injured,
    this.onBench,
    this.coachId,
    this.subTypeId,
    this.type,
  });

  Events.fromJson(dynamic json) {
    id = json['id'];
    fixtureId = json['fixture_id'];
    periodId = json['period_id'];
    participantId = json['participant_id'];
    typeId = json['type_id'];
    section = json['section'];
    playerId = json['player_id'];
    relatedPlayerId = json['related_player_id'];
    playerName = json['player_name'];
    relatedPlayerName = json['related_player_name'];
    result = json['result'];
    info = json['info'];
    addition = json['addition'];
    minute = json['minute'];
    extraMinute = json['extra_minute'];
    injured = json['injured'];
    onBench = json['on_bench'];
    coachId = json['coach_id'];
    subTypeId = json['sub_type_id'];
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
  }
  num? id;
  num? fixtureId;
  num? periodId;
  num? participantId;
  num? typeId;
  String? section;
  num? playerId;
  num? relatedPlayerId;
  String? playerName;
  String? relatedPlayerName;
  dynamic result;
  dynamic info;
  dynamic addition;
  num? minute;
  dynamic extraMinute;
  dynamic injured;
  bool? onBench;
  dynamic coachId;
  num? subTypeId;
  Type? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['fixture_id'] = fixtureId;
    map['period_id'] = periodId;
    map['participant_id'] = participantId;
    map['type_id'] = typeId;
    map['section'] = section;
    map['player_id'] = playerId;
    map['related_player_id'] = relatedPlayerId;
    map['player_name'] = playerName;
    map['related_player_name'] = relatedPlayerName;
    map['result'] = result;
    map['info'] = info;
    map['addition'] = addition;
    map['minute'] = minute;
    map['extra_minute'] = extraMinute;
    map['injured'] = injured;
    map['on_bench'] = onBench;
    map['coach_id'] = coachId;
    map['sub_type_id'] = subTypeId;
    if (type != null) {
      map['type'] = type?.toJson();
    }
    return map;
  }

}

Type typeFromJson(String str) => Type.fromJson(json.decode(str));
String typeToJson(Type data) => json.encode(data.toJson());
class Type {
  Type({
    this.id,
    this.name,
    this.code,
    this.developerName,
    this.modelType,
    this.statGroup,
  });

  Type.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    developerName = json['developer_name'];
    modelType = json['model_type'];
    statGroup = json['stat_group'];
  }
  num? id;
  String? name;
  String? code;
  String? developerName;
  String? modelType;
  dynamic statGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['code'] = code;
    map['developer_name'] = developerName;
    map['model_type'] = modelType;
    map['stat_group'] = statGroup;
    return map;
  }

}

Scores scoresFromJson(String str) => Scores.fromJson(json.decode(str));
String scoresToJson(Scores data) => json.encode(data.toJson());
class Scores {
  Scores({
    this.id,
    this.fixtureId,
    this.typeId,
    this.participantId,
    this.score,
    this.description,
  });

  Scores.fromJson(dynamic json) {
    id = json['id'];
    fixtureId = json['fixture_id'];
    typeId = json['type_id'];
    participantId = json['participant_id'];
    score = json['score'] != null ? Score.fromJson(json['score']) : null;
    description = json['description'];
  }
  num? id;
  num? fixtureId;
  num? typeId;
  num? participantId;
  Score? score;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['fixture_id'] = fixtureId;
    map['type_id'] = typeId;
    map['participant_id'] = participantId;
    if (score != null) {
      map['score'] = score?.toJson();
    }
    map['description'] = description;
    return map;
  }

}

Score scoreFromJson(String str) => Score.fromJson(json.decode(str));
String scoreToJson(Score data) => json.encode(data.toJson());
class Score {
  Score({
    this.goals,
    this.participant,
  });

  Score.fromJson(dynamic json) {
    goals = json['goals'];
    participant = json['participant'];
  }
  num? goals;
  String? participant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['goals'] = goals;
    map['participant'] = participant;
    return map;
  }

}

Periods periodsFromJson(String str) => Periods.fromJson(json.decode(str));
String periodsToJson(Periods data) => json.encode(data.toJson());
class Periods {
  Periods({
    this.id,
    this.fixtureId,
    this.typeId,
    this.started,
    this.ended,
    this.countsFrom,
    this.ticking,
    this.sortOrder,
    this.description,
    this.timeAdded,
    this.periodLength,
    this.minutes,
    this.seconds,
  });

  Periods.fromJson(dynamic json) {
    id = json['id'];
    fixtureId = json['fixture_id'];
    typeId = json['type_id'];
    started = json['started'];
    ended = json['ended'];
    countsFrom = json['counts_from'];
    ticking = json['ticking'];
    sortOrder = json['sort_order'];
    description = json['description'];
    timeAdded = json['time_added'];
    periodLength = json['period_length'];
    minutes = json['minutes'];
    seconds = json['seconds'];
  }
  num? id;
  num? fixtureId;
  num? typeId;
  num? started;
  num? ended;
  num? countsFrom;
  bool? ticking;
  num? sortOrder;
  String? description;
  num? timeAdded;
  num? periodLength;
  dynamic minutes;
  dynamic seconds;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['fixture_id'] = fixtureId;
    map['type_id'] = typeId;
    map['started'] = started;
    map['ended'] = ended;
    map['counts_from'] = countsFrom;
    map['ticking'] = ticking;
    map['sort_order'] = sortOrder;
    map['description'] = description;
    map['time_added'] = timeAdded;
    map['period_length'] = periodLength;
    map['minutes'] = minutes;
    map['seconds'] = seconds;
    return map;
  }

}

State stateFromJson(String str) => State.fromJson(json.decode(str));
String stateToJson(State data) => json.encode(data.toJson());
class State {
  State({
    this.id,
    this.state,
    this.name,
    this.shortName,
    this.developerName,
  });

  State.fromJson(dynamic json) {
    id = json['id'];
    state = json['state'];
    name = json['name'];
    shortName = json['short_name'];
    developerName = json['developer_name'];
  }
  num? id;
  String? state;
  String? name;
  String? shortName;
  String? developerName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['state'] = state;
    map['name'] = name;
    map['short_name'] = shortName;
    map['developer_name'] = developerName;
    return map;
  }

}

Participants participantsFromJson(String str) => Participants.fromJson(json.decode(str));
String participantsToJson(Participants data) => json.encode(data.toJson());
class Participants {
  Participants({
    this.id,
    this.sportId,
    this.countryId,
    this.venueId,
    this.gender,
    this.name,
    this.shortCode,
    this.imagePath,
    this.founded,
    this.type,
    this.placeholder,
    this.lastPlayedAt,
    this.meta,
  });

  Participants.fromJson(dynamic json) {
    id = json['id'];
    sportId = json['sport_id'];
    countryId = json['country_id'];
    venueId = json['venue_id'];
    gender = json['gender'];
    name = json['name'];
    shortCode = json['short_code'];
    imagePath = json['image_path'];
    founded = json['founded'];
    type = json['type'];
    placeholder = json['placeholder'];
    lastPlayedAt = json['last_played_at'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
  num? id;
  num? sportId;
  num? countryId;
  num? venueId;
  String? gender;
  String? name;
  String? shortCode;
  String? imagePath;
  num? founded;
  String? type;
  bool? placeholder;
  String? lastPlayedAt;
  Meta? meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sport_id'] = sportId;
    map['country_id'] = countryId;
    map['venue_id'] = venueId;
    map['gender'] = gender;
    map['name'] = name;
    map['short_code'] = shortCode;
    map['image_path'] = imagePath;
    map['founded'] = founded;
    map['type'] = type;
    map['placeholder'] = placeholder;
    map['last_played_at'] = lastPlayedAt;
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    return map;
  }

}



League leagueFromJson(String str) => League.fromJson(json.decode(str));
String leagueToJson(League data) => json.encode(data.toJson());
class League {
  League({
    this.id,
    this.sportId,
    this.countryId,
    this.name,
    this.active,
    this.shortCode,
    this.imagePath,
    this.type,
    this.subType,
    this.lastPlayedAt,
    this.category,
    this.hasJerseys,
    this.country,
  });

  League.fromJson(dynamic json) {
    id = json['id'];
    sportId = json['sport_id'];
    countryId = json['country_id'];
    name = json['name'];
    active = json['active'];
    shortCode = json['short_code'];
    imagePath = json['image_path'];
    type = json['type'];
    subType = json['sub_type'];
    lastPlayedAt = json['last_played_at'];
    category = json['category'];
    hasJerseys = json['has_jerseys'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
  }
  num? id;
  num? sportId;
  num? countryId;
  String? name;
  bool? active;
  String? shortCode;
  String? imagePath;
  String? type;
  String? subType;
  String? lastPlayedAt;
  num? category;
  bool? hasJerseys;
  Country? country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sport_id'] = sportId;
    map['country_id'] = countryId;
    map['name'] = name;
    map['active'] = active;
    map['short_code'] = shortCode;
    map['image_path'] = imagePath;
    map['type'] = type;
    map['sub_type'] = subType;
    map['last_played_at'] = lastPlayedAt;
    map['category'] = category;
    map['has_jerseys'] = hasJerseys;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    return map;
  }

}

Country countryFromJson(String str) => Country.fromJson(json.decode(str));
String countryToJson(Country data) => json.encode(data.toJson());
class Country {
  Country({
    this.id,
    this.continentId,
    this.name,
    this.officialName,
    this.fifaName,
    this.iso2,
    this.iso3,
    this.latitude,
    this.longitude,
    this.borders,
    this.imagePath,
  });

  Country.fromJson(dynamic json) {
    id = json['id'];
    continentId = json['continent_id'];
    name = json['name'];
    officialName = json['official_name'];
    fifaName = json['fifa_name'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    // if (json['borders'] != null) {
    //   borders = [];
    //   json['borders'].forEach((v) {
    //     borders?.add(Dynamic.fromJson(v));
    //   }
    //   );
    // }
    imagePath = json['image_path'];
  }
  num? id;
  num? continentId;
  String? name;
  dynamic officialName;
  dynamic fifaName;
  dynamic iso2;
  dynamic iso3;
  dynamic latitude;
  dynamic longitude;
  List<dynamic>? borders;
  dynamic imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['continent_id'] = continentId;
    map['name'] = name;
    map['official_name'] = officialName;
    map['fifa_name'] = fifaName;
    map['iso2'] = iso2;
    map['iso3'] = iso3;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    if (borders != null) {
      map['borders'] = borders?.map((v) => v.toJson()).toList();
    }
    map['image_path'] = imagePath;
    return map;
  }

}