import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    /*
    return Message(
      text: response.data["answer"],
      fromWho: FromWho.hers,
      imageUrl: response.data["image"]
    );
    */
    /*
    return Message(
      text: yesNoModel.answer,
      fromWho: FromWho.hers,
      imageUrl: yesNoModel.image
    ); */

    return yesNoModel.toMessageEntity();
  }
}
