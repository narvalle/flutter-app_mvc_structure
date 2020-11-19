import 'package:mvc_pattern/mvc_pattern.dart';

class ListController extends ControllerMVC {
  bool isLoading = true;
  String messageError;

  static final ListController instance = ListController._internal();
  factory ListController() => instance;
  ListController._internal();

  @override
  void initState(){
    super.initState();
  }

  /*void listenCategories() async {
    (await _repo.getAll()).listen((category) {
      categories.add(category);
    }, onDone: () {
     //await Future.delayed(Duration(seconds: 3));
      setState(() {
        isLoading = false;
      });
    }, onError: (onError) {
      messageError = onError.toString();
      print('error in listenCategories $onError');
    });
  }*/

  onTapItem(){
    print('Preciono el item=====================');
  }



  @override
  void dispose() {
    messageError = null;
    isLoading = false;
    super.dispose();
  }
}
