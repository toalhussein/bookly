import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../model/book_model/book_model.dart';

abstract class HomeRepo {

  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}


