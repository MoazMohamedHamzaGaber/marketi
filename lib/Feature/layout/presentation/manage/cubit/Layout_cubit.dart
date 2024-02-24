import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/s.dart';
import '../../../../Home/presentation/view/home_view.dart';
import 'Layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates>
{
  LayoutCubit():super (LayoutInitialStates());
  LayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(LayoutChangeCurrentIndexStates());
  }

  List<Widget>screens=[
    const HomeView(),
    const First(),
    const Second(),
    const Thired(),
  ];
}