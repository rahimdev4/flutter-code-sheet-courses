class ApiResponse<T> {
  final bool success; final T? data; final String? error;
  ApiResponse({required this.success, this.data, this.error});
}

class NoteDto {
  final String id; final String title;
  NoteDto({required this.id, required this.title});
  factory NoteDto.fromJson(Map<String, dynamic> j) => NoteDto(id: j['id'] ?? '', title: j['title'] ?? '');
}

void main() {
  final json = {'id': '1', 'title': 'DTO Example'};
  final dto = NoteDto.fromJson(json);
  final response = ApiResponse(success: true, data: dto);
  print('Success: ${response.success}, Title: ${response.data?.title}');
}
