library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/default_api.dart';

part 'model/annotate_image_request.dart';
part 'model/annotate_image_request1.dart';
part 'model/annotate_image_response.dart';
part 'model/annotate_image_response1.dart';
part 'model/batch_annotate_images_response.dart';
part 'model/batch_annotate_images_response1.dart';
part 'model/feature.dart';
part 'model/feature1.dart';
part 'model/grouped_result.dart';
part 'model/grouped_result1.dart';
part 'model/image.dart';
part 'model/image1.dart';
part 'model/image_context.dart';
part 'model/image_context1.dart';
part 'model/image_source.dart';
part 'model/image_source1.dart';
part 'model/inline_object.dart';
part 'model/key_value.dart';
part 'model/key_value1.dart';
part 'model/object_annotation.dart';
part 'model/object_annotation1.dart';
part 'model/product.dart';
part 'model/product1.dart';
part 'model/product_search_params.dart';
part 'model/product_search_params1.dart';
part 'model/product_search_resullts.dart';
part 'model/product_search_resullts1.dart';
part 'model/product_search_result.dart';
part 'model/product_search_result1.dart';


ApiClient defaultApiClient = ApiClient();
