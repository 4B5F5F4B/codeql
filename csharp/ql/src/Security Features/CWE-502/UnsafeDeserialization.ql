/**
 * @name Unsafe deserializer
 * @description Calling an unsafe deserializer with data controlled by an attacker
 *              can lead to denial of service and other security problems.
 * @kind problem
 * @id cs/unsafe-deserialization
 * @problem.severity warning
 * @precision low
 * @tags security
 *       external/cwe/cwe-502
 */

import csharp
import semmle.code.csharp.security.dataflow.UnsafeDeserialization::UnsafeDeserialization

from Call deserializeCall, DataFlow::Node sink
where
  deserializeCall.getAnArgument() = sink.asExpr() and
  (
    sink instanceof InstanceMethodSink and
    not exists(
      SafeConstructorTrackingConfig safeConstructorTracking, DataFlow::PathNode safeTypeUsage
    |
      safeConstructorTracking.hasFlowPath(_, safeTypeUsage) and
      safeTypeUsage.getNode().asExpr().getParent() = deserializeCall
    )
    or
    sink instanceof ConstructorOrStaticMethodSink and
    deserializeCall.getAnArgument() = sink.asExpr()
  )
select deserializeCall,
  "Unsafe deserializer is used. Make sure the value being deserialized comes from a trusted source."
