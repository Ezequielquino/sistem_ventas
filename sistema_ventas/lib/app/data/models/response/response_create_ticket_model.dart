class ResponseCreateTicketModel {
  ResponseCreateTicketModel({
    this.result,
  });

  Result? result;

  factory ResponseCreateTicketModel.fromJson(Map<String, dynamic> json) =>
      ResponseCreateTicketModel(
        result: Result.fromJson(json["result"]),
      );
}

class Result {
  Result({
    this.success,
    this.message,
    this.ticketId,
    this.ticketState,
  });

  bool? success;
  String? message;
  int? ticketId;
  bool? ticketState;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        success: json["success"],
        message: json["message"],
        ticketId: json["ticket_id"],
        ticketState: json["ticket_state"],
      );
}
