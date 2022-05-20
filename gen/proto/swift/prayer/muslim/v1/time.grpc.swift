//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: prayer/muslim/v1/time.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `Prayer_Muslim_V1_PrayerTimeServiceClient`, then call methods of this protocol to make API calls.
internal protocol Prayer_Muslim_V1_PrayerTimeServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Prayer_Muslim_V1_PrayerTimeServiceClientInterceptorFactoryProtocol? { get }

  func getPrayerTime(
    _ request: Prayer_Muslim_V1_GetPrayerTimeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Prayer_Muslim_V1_GetPrayerTimeRequest, Prayer_Muslim_V1_GetPrayerTimeResponse>
}

extension Prayer_Muslim_V1_PrayerTimeServiceClientProtocol {
  internal var serviceName: String {
    return "prayer.muslim.v1.PrayerTimeService"
  }

  /// Unary call to GetPrayerTime
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPrayerTime.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func getPrayerTime(
    _ request: Prayer_Muslim_V1_GetPrayerTimeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Prayer_Muslim_V1_GetPrayerTimeRequest, Prayer_Muslim_V1_GetPrayerTimeResponse> {
    return self.makeUnaryCall(
      path: "/prayer.muslim.v1.PrayerTimeService/GetPrayerTime",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPrayerTimeInterceptors() ?? []
    )
  }
}

internal protocol Prayer_Muslim_V1_PrayerTimeServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getPrayerTime'.
  func makeGetPrayerTimeInterceptors() -> [ClientInterceptor<Prayer_Muslim_V1_GetPrayerTimeRequest, Prayer_Muslim_V1_GetPrayerTimeResponse>]
}

internal final class Prayer_Muslim_V1_PrayerTimeServiceClient: Prayer_Muslim_V1_PrayerTimeServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Prayer_Muslim_V1_PrayerTimeServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the prayer.muslim.v1.PrayerTimeService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Prayer_Muslim_V1_PrayerTimeServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Prayer_Muslim_V1_PrayerTimeServiceProvider: CallHandlerProvider {
  var interceptors: Prayer_Muslim_V1_PrayerTimeServiceServerInterceptorFactoryProtocol? { get }

  func getPrayerTime(request: Prayer_Muslim_V1_GetPrayerTimeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Prayer_Muslim_V1_GetPrayerTimeResponse>
}

extension Prayer_Muslim_V1_PrayerTimeServiceProvider {
  internal var serviceName: Substring { return "prayer.muslim.v1.PrayerTimeService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetPrayerTime":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Prayer_Muslim_V1_GetPrayerTimeRequest>(),
        responseSerializer: ProtobufSerializer<Prayer_Muslim_V1_GetPrayerTimeResponse>(),
        interceptors: self.interceptors?.makeGetPrayerTimeInterceptors() ?? [],
        userFunction: self.getPrayerTime(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Prayer_Muslim_V1_PrayerTimeServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getPrayerTime'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetPrayerTimeInterceptors() -> [ServerInterceptor<Prayer_Muslim_V1_GetPrayerTimeRequest, Prayer_Muslim_V1_GetPrayerTimeResponse>]
}
