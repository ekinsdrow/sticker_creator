import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sticker_creator/data/repositories/pack_repository_impl.dart';
import 'package:sticker_creator/data/repositories/packs_repository.dart';
import 'package:sticker_creator/domain/create_pack_bloc/create_pack_bloc.dart';

class CreatePackScope extends StatelessWidget {
  const CreatePackScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider<PackRepository>(
      create: (context) => PackRepositoryImpl(
        db: context.read<Database>(),
      ),
      child: BlocProvider(
        create: (context) => CreatePackBloc(
          packRepository: context.read<PackRepository>(),
        ),
        child: child,
      ),
    );
  }
}
