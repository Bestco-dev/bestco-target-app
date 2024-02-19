
import '../../../domain/entities/news/news_entity.dart';
import '../../../domain/repositories/customers_repo.dart';
import '../../../domain/repositories/resource.dart';

abstract class NewsDataSource extends LoadingRepository<NewsEntity>  {}

