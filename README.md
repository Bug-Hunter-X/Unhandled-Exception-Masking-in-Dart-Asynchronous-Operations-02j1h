# Unhandled Exception Masking in Dart Asynchronous Operations

This repository demonstrates a common error in Dart asynchronous programming where the `rethrow` statement, when used improperly in a `catch` block, can obscure the original exception's details, hindering debugging efforts.

The `bug.dart` file showcases the problematic code. The `bugSolution.dart` file provides a corrected version that facilitates proper exception handling and debugging.

## Problem

The `rethrow` statement in the `catch` block of the `fetchData` function, while designed to propagate the exception, doesn't preserve the original exception's stack trace and context. This makes it challenging to identify the root cause of the error in a larger application.