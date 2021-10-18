# JNI JVM crasher
Deliberately crash a JVM using JNI

## Prerequisites
- A JDK (preferrably OpenJDK).
- Linux native toolchain (gcc)

## Usage

Produce a crash:

```
$ make crash JDK=/path/to/jdk/to/crash
```

Clean up from a previous build

```
$ make clean
```
