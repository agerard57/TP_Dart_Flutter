import 'package:hive/hive.dart';

import '../models/bachelor.dart';
import 'dummy_data.dart';

class BachelorDataManager {
  final Box _bachelorBox;

  BachelorDataManager() : _bachelorBox = Hive.box('bachelors');

  Future<void> generateBachelors() async {
    await _bachelorBox.clear();
    await _bachelorBox.addAll(generateFakeBachelors());
  }

  Future<void> saveBachelor(Bachelor bachelor) async {
    await _bachelorBox.put(bachelor.id, bachelor);
  }

  Bachelor getBachelor(int id) {
    return _bachelorBox.get(id);
  }

  List<Bachelor> getAllBachelors() {
    return _bachelorBox.values.toList().cast<Bachelor>();
  }

  Future<void> deleteBachelor(int id) async {
    await _bachelorBox.delete(id);
  }

  Future<void> clearAllBachelors() async {
    await _bachelorBox.clear();
  }
}
