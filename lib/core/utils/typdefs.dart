import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_news_app/core/error/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;
