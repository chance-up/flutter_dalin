import 'package:flutter_dalin/api/estimate_api.dart';

class EstimateRepositor {
  final EstimateApi _estimateApi = EstimateApi();

  Future<dynamic> getEstimate(String id) async {
    return await _estimateApi.getEstimate(id);
  }
}
