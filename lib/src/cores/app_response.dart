class AppResponse<T> {
  final bool response;
  final T data;
  final String message;

  const AppResponse({
    this.response,
    this.data,
    this.message,
  });
}
