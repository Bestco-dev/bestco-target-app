import '../entities/product/product_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class ProductsRepo {
  Future<ResponseState<List<ProductEntity>>> load();
  Future<ResponseState<ProductEntity>> loadOne(ReqParam param);
  Future<ResponseState<ProductEntity>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
}
