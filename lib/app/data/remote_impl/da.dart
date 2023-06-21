class Da {
  List<Datum> data;
  Pagination pagination;
  List<Subscription> subscription;
  RateLimit rateLimit;
  String timezone;

  Da({
    required this.data,
    required this.pagination,
    required this.subscription,
    required this.rateLimit,
    required this.timezone,
  });

}

class Datum {
  int id;
  int sportId;
  int leagueId;
  int seasonId;
  int stageId;
  int? groupId;
  dynamic aggregateId;
  int? roundId;
  int stateId;
  int? venueId;
  String name;
  DateTime startingAt;
  String resultInfo;
  Leg leg;
  dynamic details;
  int length;
  bool placeholder;
  bool hasOdds;
  int startingAtTimestamp;
  League league;
  List<Participant> participants;
  Round? round;
  State state;
  List<Period> periods;
  List<ScoreElement> scores;
  List<Event> events;

  Datum({
    required this.id,
    required this.sportId,
    required this.leagueId,
    required this.seasonId,
    required this.stageId,
    this.groupId,
    this.aggregateId,
    this.roundId,
    required this.stateId,
    this.venueId,
    required this.name,
    required this.startingAt,
    required this.resultInfo,
    required this.leg,
    this.details,
    required this.length,
    required this.placeholder,
    required this.hasOdds,
    required this.startingAtTimestamp,
    required this.league,
    required this.participants,
    this.round,
    required this.state,
    required this.periods,
    required this.scores,
    required this.events,
  });

}

class Event {
  int id;
  int fixtureId;
  int periodId;
  int participantId;
  int typeId;
  Section section;
  int? playerId;
  int? relatedPlayerId;
  String playerName;
  String? relatedPlayerName;
  String? result;
  Info? info;
  Addition? addition;
  int minute;
  int? extraMinute;
  bool? injured;
  bool onBench;
  int? coachId;
  int? subTypeId;
  TypeClass type;

  Event({
    required this.id,
    required this.fixtureId,
    required this.periodId,
    required this.participantId,
    required this.typeId,
    required this.section,
    this.playerId,
    this.relatedPlayerId,
    required this.playerName,
    this.relatedPlayerName,
    this.result,
    this.info,
    this.addition,
    required this.minute,
    this.extraMinute,
    this.injured,
    required this.onBench,
    this.coachId,
    this.subTypeId,
    required this.type,
  });

}

enum Addition { THE_4_TH_GOAL, THE_5_TH_GOAL, THE_1_ST_GOAL, THE_2_ND_GOAL, THE_3_RD_GOAL, GOAL_DISALLOWED }

enum Info { SHOT, HEADER, ARGUMENT, FOUL, PROFESSIONAL_FOUL_LAST_MAN, TIME_WASTING, OFFSIDE, HANDBALL }

enum Section { EVENT }

class TypeClass {
  int id;
  TypeName name;
  Code code;
  TypeDeveloperName developerName;
  Section modelType;
  dynamic statGroup;

  TypeClass({
    required this.id,
    required this.name,
    required this.code,
    required this.developerName,
    required this.modelType,
    this.statGroup,
  });

}

enum Code { SUBSTITUTION, YELLOWCARD, PENALTY, GOAL, REDCARD, OWNGOAL, VAR }

enum TypeDeveloperName { SUBSTITUTION, YELLOWCARD, PENALTY, GOAL, REDCARD, OWNGOAL, VAR }

enum TypeName { SUBSTITUTION, YELLOWCARD, PENALTY, GOAL, REDCARD, OWN_GOAL, VAR }

class League {
  int id;
  int sportId;
  int countryId;
  String name;
  bool active;
  String? shortCode;
  String imagePath;
  LeagueType type;
  SubType subType;
  DateTime lastPlayedAt;
  int category;
  bool hasJerseys;
  Country country;

  League({
    required this.id,
    required this.sportId,
    required this.countryId,
    required this.name,
    required this.active,
    this.shortCode,
    required this.imagePath,
    required this.type,
    required this.subType,
    required this.lastPlayedAt,
    required this.category,
    required this.hasJerseys,
    required this.country,
  });

}

class Country {
  int id;
  int continentId;
  String name;
  String? officialName;
  String? fifaName;
  String? iso2;
  String? iso3;
  String? latitude;
  String? longitude;
  List<String> borders;
  String? imagePath;

  Country({
    required this.id,
    required this.continentId,
    required this.name,
    this.officialName,
    this.fifaName,
    this.iso2,
    this.iso3,
    this.latitude,
    this.longitude,
    required this.borders,
    this.imagePath,
  });

}

enum SubType { FRIENDLY, CUP_INTERNATIONAL, INTERNATIONAL, DOMESTIC }

enum LeagueType { LEAGUE }

enum Leg { THE_11 }

class Participant {
  int id;
  int sportId;
  int countryId;
  int? venueId;
  Gender gender;
  String name;
  String? shortCode;
  String imagePath;
  int? founded;
  ParticipantType type;
  bool placeholder;
  DateTime lastPlayedAt;
  ParticipantMeta meta;

  Participant({
    required this.id,
    required this.sportId,
    required this.countryId,
    this.venueId,
    required this.gender,
    required this.name,
    this.shortCode,
    required this.imagePath,
    this.founded,
    required this.type,
    required this.placeholder,
    required this.lastPlayedAt,
    required this.meta,
  });

}

enum Gender { MALE }

class ParticipantMeta {
  Location location;
  bool? winner;
  int position;

  ParticipantMeta({
    required this.location,
    this.winner,
    required this.position,
  });

}

enum Location { HOME, AWAY }

enum ParticipantType { NATIONAL, DOMESTIC }

class Period {
  int id;
  int fixtureId;
  int typeId;
  int started;
  int ended;
  int countsFrom;
  bool ticking;
  int sortOrder;
  PeriodDescription description;
  int? timeAdded;
  int periodLength;
  dynamic minutes;
  dynamic seconds;

  Period({
    required this.id,
    required this.fixtureId,
    required this.typeId,
    required this.started,
    required this.ended,
    required this.countsFrom,
    required this.ticking,
    required this.sortOrder,
    required this.description,
    this.timeAdded,
    required this.periodLength,
    this.minutes,
    this.seconds,
  });

}

enum PeriodDescription { THE_1_ST_HALF, THE_2_ND_HALF }

class Round {
  int id;
  int sportId;
  int leagueId;
  int seasonId;
  int? stageId;
  String name;
  bool finished;
  bool isCurrent;
  DateTime startingAt;
  DateTime endingAt;
  bool gamesInCurrentWeek;
  Round? stage;
  int? typeId;
  int? sortOrder;
  dynamic tieBreakerRuleId;

  Round({
    required this.id,
    required this.sportId,
    required this.leagueId,
    required this.seasonId,
    this.stageId,
    required this.name,
    required this.finished,
    required this.isCurrent,
    required this.startingAt,
    required this.endingAt,
    required this.gamesInCurrentWeek,
    this.stage,
    this.typeId,
    this.sortOrder,
    this.tieBreakerRuleId,
  });

}

class ScoreElement {
  int id;
  int fixtureId;
  int typeId;
  int participantId;
  ScoreScore score;
  ScoreDescription description;

  ScoreElement({
    required this.id,
    required this.fixtureId,
    required this.typeId,
    required this.participantId,
    required this.score,
    required this.description,
  });

}

enum ScoreDescription { CURRENT, THE_1_ST_HALF, THE_2_ND_HALF }

class ScoreScore {
  int goals;
  Location participant;

  ScoreScore({
    required this.goals,
    required this.participant,
  });

}

class State {
  int id;
  ShortNameEnum state;
  StateName name;
  ShortNameEnum shortName;
  ShortNameEnum developerName;

  State({
    required this.id,
    required this.state,
    required this.name,
    required this.shortName,
    required this.developerName,
  });

}

enum ShortNameEnum { FT }

enum StateName { FULL_TIME }

class Pagination {
  int count;
  int perPage;
  int currentPage;
  String nextPage;
  bool hasMore;

  Pagination({
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.nextPage,
    required this.hasMore,
  });

}

class RateLimit {
  int resetsInSeconds;
  int remaining;
  String requestedEntity;

  RateLimit({
    required this.resetsInSeconds,
    required this.remaining,
    required this.requestedEntity,
  });

}

class Subscription {
  SubscriptionMeta meta;
  List<Plan> plans;
  List<dynamic> addOns;
  List<dynamic> widgets;

  Subscription({
    required this.meta,
    required this.plans,
    required this.addOns,
    required this.widgets,
  });

}

class SubscriptionMeta {
  DateTime trialEndsAt;
  DateTime endsAt;

  SubscriptionMeta({
    required this.trialEndsAt,
    required this.endsAt,
  });

}

class Plan {
  String plan;
  String sport;
  String category;

  Plan({
    required this.plan,
    required this.sport,
    required this.category,
  });

}
