import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobs_tdd/features/jobs_list/data/models/job_model.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/data.dart';
import 'package:jobs_tdd/features/jobs_list/domain/entities/job.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel extends Data {
   DataModel(
    //List<JobModel>? data,
    //@JsonKey(name: 'Message') String? Message,
  );
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
