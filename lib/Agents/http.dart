import 'package:creader/Agents/AgentFather.dart';

class AgentHttp extends AgentFather {
  String url;
  String userAgent;
  String referer;
  String method;
  String body;
  String encode;

  AgentHttp({
    this.url,
    this.userAgent,
    this.referer,
    this.method,
    this.body,
    this.encode,
  });

  String invoke() {
    return "";
  }
}
