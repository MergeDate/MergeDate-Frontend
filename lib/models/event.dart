
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

@Freezed(toJson: true)
class Event with _$Event {
  factory Event({
    required String title,
    required String description,
    required DateTime start,
    required DateTime end,
  }) = _Event;
  
  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json); 
}