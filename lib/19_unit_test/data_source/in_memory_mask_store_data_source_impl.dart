import 'package:learn_dart_together/19_unit_test/model/store.dart';
import 'package:learn_dart_together/19_unit_test/data_source/mask_store_data_source.dart';

class InMemoryMaskStoreDataSourceImpl implements MaskStoreDataSource {
  final _json = [
    {
      "addr": "서울역",
      "code": "11817488",
      "created_at": "2020/07/03 11:00:00",
      "lat": 1.0,
      "lng": 1.0,
      "name": "승약국",
      "remain_stat": "plenty",
      "stock_at": "2020/07/02 18:05:00",
      "type": "01"
    },
    {
      "addr": "청년취업사관학교 영등포",
      "code": "12856941",
      "created_at": "2020/07/03 11:00:00",
      "lat": 2.0,
      "lng": 2.0,
      "name": "대지약국",
      "remain_stat": "break",
      "stock_at": "2020/07/03 10:45:00",
      "type": "01"
    },
    {
      "addr": "수원역",
      "code": "11819723",
      "created_at": "2020/07/03 11:00:00",
      "lat": 3.0,
      "lng": 3.0,
      "name": "청구약국",
      "remain_stat": "some",
      "stock_at": "2020/07/03 10:40:00",
      "type": "01"
    }
  ];

  @override
  Future<List<Store>> getStores(num lat, num lng) async {
    return _json.map((e) => Store.fromJson(e)).toList();
  }
}