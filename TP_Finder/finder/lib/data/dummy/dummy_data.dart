import 'dart:math';

import 'package:faker/faker.dart';

import '../../models/bachelor_model.dart';
import 'men_first_names_data.dart';
import 'last_names_data.dart';
import 'women_first_names_data.dart';

int generateRandomNameIndex(int length) {
  return Random().nextInt(length);
}

List<Bachelor> generateFakeBachelors() {
  final List<Bachelor> bachelors = [];

  for (int i = 0; i < 30; i++) {
    final firstName = i < 15
        ? menFirstNames[generateRandomNameIndex(menFirstNames.length)]
        : womenFirstNames[generateRandomNameIndex(womenFirstNames.length)];
    final lastName = lastNames[generateRandomNameIndex(lastNames.length)];
    final gender = i < 15 ? Gender.MALE : Gender.FEMALE;
    final avatar = gender == Gender.MALE
        ? 'images/users/man-${i + 1}.png'
        : 'images/users/woman-${i - 14}.png';
    final job = faker.job.title();
    final description = faker.lorem
        .sentences(3)
        .toString()
        .replaceAll('[', '')
        .replaceAll(']', '');

    final bachelor = Bachelor(
      id: i,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      avatar: avatar,
      searchFor: [],
      job: job,
      description: description,
    );

    bachelors.add(bachelor);
  }

  return bachelors;
}
