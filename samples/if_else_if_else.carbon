// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// RUN: %{explorer} %s 2>&1 | \
// RUN:   %{FileCheck} --match-full-lines --allow-unused-prefixes=false %s
// RUN: %{explorer} --parser_debug --trace_file=- %s 2>&1 | \
// RUN:   %{FileCheck} --match-full-lines --allow-unused-prefixes %s
// AUTOUPDATE: %{explorer} %s
// CHECK: result: 0

package ExplorerTest api;

fn Main() -> i32 {

  var test = 1 == 3
  var test: String = "Test";

  var multiLine: String = "Somthing is string";

  var multiLineSecond: String = """
  test multiline
  """

  var 

  // Raw simple string literal with literal `\n`, not a newline:
  var raw: String = #"line one\nstill line one"#;

  // Raw simple string literal with newline escape sequence:
  var raw_newline: String = #"line one\nline two"#;

  return 1;
}

// `Bar()` returns a tuple consisting of an
// `i32` value and 2-tuple of `f32` values.
fn Bar() -> (i32, (f32, f32));

fn Foo() -> i64 {
  // Pattern in `var` declaration:
  var (p: i64, _: auto) = Bar();
  return p;
}
