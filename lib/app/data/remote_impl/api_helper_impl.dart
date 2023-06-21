import 'package:get/get.dart';
import '../response_model/Fixture.dart';

import '../response_model/c.dart';
import 'api_client.dart';

class APIHelper {
  Future<Fixture ?> fixture() async {
    var response = await ApiClient().getAPI(
      Get.context,
      'v3/football/fixtures/date/2023-06-17?api_token=pOrQiOGJTy3tZzq0WxrGevTckFeZZo1IuNJZYlwml7sfCh5pEvMwrTc1KIZf&include=league.country;participants;round.stage;state;periods;scores;events.type',
    );

    return fixtureFromJson(response.toString());
  }
  Future<String> fix() async {
    var response = await ApiClient().getAPI(
      Get.context,
      '',
    );

    return response.toString();
  }
}
