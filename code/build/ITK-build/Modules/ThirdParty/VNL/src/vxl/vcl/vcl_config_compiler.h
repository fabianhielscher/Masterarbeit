#ifndef vcl_config_compiler_h_
#define vcl_config_compiler_h_

#include "vcl_compiler_detection.h"

//:
// \file
// This file either is or was generated from vcl_config_compiler.h.in

//----------------------------------------------------------------------
// syntax-like things.

/* The version of the CXX compiler used when VXL was built */
#define VXL_COMPILED_CXX_STANDARD_VERSION 201103L

/* Test external applications to ensure that compatible compiler C++ standard API are used
 * by assuming that compiler standards are backwards (but not forwards) compatible with each
 * other.  Strange behaviors may occur if external applications do not use the same compiler
 * and compiler language featues (i.e. compiler flags). */
#if VXL_COMPILED_CXX_STANDARD_VERSION > __cplusplus
  #warning "WARNING:  The current project is configured to use a C++ standard version older than the C++ standard used for this build of VXL"
#endif


//: VCL_HAS_LONG_LONG
// Set to 1 if "long long" is accepted by the compiler as a built-in type.
#define VCL_HAS_LONG_LONG 1

//: VCL_HAS_EXPORT
//
// True if the compiler supports the "export" keyword
//
#define VCL_HAS_EXPORT 1


//: VCL_HAS_EXPLICIT
//
// True if the compiler supports the "explicit" keyword
//
#define VCL_HAS_EXPLICIT 1


//: VCL_COMPLEX_POW_WORKS
//
// It appears several programmers have (independently)
// not realised their lack of knowledge of complex numbers.
// pow(complex(-1,0),0.5) should return (0,1) not (Nan,0), etc.
#define VCL_COMPLEX_POW_WORKS 1


//----------------------------------------------------------------------
// various template issues.

//: VCL_CAN_DO_PARTIAL_SPECIALIZATION
//
// True if the compiler supports partial specializations of templates. e.g.
// \code
// template <class T>
// class vector<T*> : public vector<void *> { .. inline methods .. };
// \endcode
//
#define VCL_CAN_DO_PARTIAL_SPECIALIZATION 1

//: VCL_TEMPLATE_MATCHES_TOO_OFTEN
//
// A function template is selected by overload resolution only if no
// non-template requires equal or better conversions.  Some compilers
// (eg MSVC 6.x and 7.0, Borland 5.5 and 5.6) select the template
// incorrectly in a case like this:
// \code
//    class A {};
//    template <class T> void f(T);
//    void f(const A&);
//    void g() { f(A()); } // should call non-template
// \endcode
//
// The work-around is to explicitly give the template a worse
// conversion than the non-templated overloads:
// \code
//    class A {};
//    template <class T> inline void f(T t) { f(t, 1); }
//    template <class T> void f(T t, long);
//    void f(const A&, int);
//    void g() { f(A()); } // will call non-template
// \endcode
// In this example, the inline one-argument template will always be
// called, which will call the real function with an "int" passed to
// the second argument.  The templated two-argument function has a
// "long" second argument while the others have "int".  Therefore, the
// template will be chosen only if no non-templates match.
//
// The VCL_TEMPLATE_MATCHES_TOO_OFTEN macro is set to 1
// if this work-around is required and 0 otherwise.
//#define VCL_TEMPLATE_MATCHES_TOO_OFTEN 1 /* need work-around */
//#define VCL_TEMPLATE_MATCHES_TOO_OFTEN 0 /* do not need it */
#define VCL_TEMPLATE_MATCHES_TOO_OFTEN 0


//: VCL_HAS_SLICED_DESTRUCTOR_BUG
//
// Consider this example code that creates a temporary in the call to f:
// \code
//  struct A { A(); A(const A&); ~A(); };
//  struct B: public A { B(); B(const B& b); ~B(); };
//  struct C { operator B(); };
//  void f(A);
//  void g(C c) { f(c); } // fails to call ~B() on 2nd temporary B
// \endcode
// Compilers will call c.operator B() to implement the conversion
// necessary to call f(c).  Some compilers will then create a
// temporary A by copy-constructing the temporary B to bind the
// argument of f.  Others will create a second temporary B by
// copy-constructing the first temporary B and bind the A-portion of
// the object to the argument of f.  Some compilers (at least Intel
// C++ 7.0 and 7.1) will create a second temporary B but forget to
// call ~B() when destroying it.  This can cause resource leaks.
//
// The VCL_HAS_SLICED_DESTRUCTOR_BUG is set to 1 if this bug exists in
// the compiler and 0 otherwise.
//#define VCL_HAS_SLICED_DESTRUCTOR_BUG 1 /* bug exists */
//#define VCL_HAS_SLICED_DESTRUCTOR_BUG 0 /* bug does not exist */
#define VCL_HAS_SLICED_DESTRUCTOR_BUG 0


//: VCL_HAS_WORKING_STRINGSTREAM
//
// True if a fully functional std::stringstream is found.
#define VCL_HAS_WORKING_STRINGSTREAM 1


//: VCL_NULL_TMPL_ARGS
//
// Define to <> for compilers that require them in friend template function
// declarations (i.e., VC C++.NET 2003).

//#define VCL_NULL_TMPL_ARGS /* <> */
//#define VCL_NULL_TMPL_ARGS <>
#define VCL_NULL_TMPL_ARGS <>


//----------------------------------------------------------------------
// template instantiation

//: VCL_ALLOWS_INLINE_INSTANTIATION
//
// True if the compiler allows explicit instantiation of inline
// function templates. The native SGI CC 7.2.1 does not.
#define VCL_ALLOWS_INLINE_INSTANTIATION 1


//: VCL_NEEDS_INLINE_INSTANTIATION
//
// True if the compiler needs explicit instantiation of inline
// function templates. gcc 2.7.2 (with -fno-implicit-templates) does.
#define VCL_NEEDS_INLINE_INSTANTIATION 0


//: VCL_DO_NOT_INSTANTIATE(text, ret)
//
// If a method is defined on some template, but makes no sense for some
// instances of that template, the compiler should not complain unless the
// method is actually used.  For example
// \code
//     template <class T>
//     class T {
//       int bad_method() {
//         return T::f();  // Requires T to have static method f
//       }
//     };
// \endcode
//
// The language allows you to use a T<int> even though int::f() is garbage,
// *providing* you never call T.bad_method().
//
// Most compilers don't implement that yet, so the solution is to provide a
// dummy specialization of T::bad_method that returns something mundane and
// stops the standard bad_method from being generated.  For this, use:
// \code
//     VCL_DO_NOT_INSTANTIATE(int T::bad_method(), some_return_value)
// \endcode
// if the function is void, use VCL_VOID_RETURN as the return value

//#define VCL_DO_NOT_INSTANTIATE(text, ret) text { return ret; }
//#define VCL_DO_NOT_INSTANTIATE(text, ret) template <> text { return ret; }
//#define VCL_DO_NOT_INSTANTIATE(text, ret) /* no need -- magic compiler */
//FIXME #define VCL_DO_NOT_INSTANTIATE(text, ret) 
#define VCL_DO_NOT_INSTANTIATE(text, ret) \
template <> text { return ret; }

//----------------------------------------------------------------------
// overload resolution problems.

//: VCL_OVERLOAD_CAST
//
// Some compilers (gcc 2.7.2.3) often won't perform
// certain implicit casts. E.g. casting a templated derived class to a
// templated base class (see above), or even realizing that
// "template void foo(float const * const *, float * const *, int, int)"
// can be called with parameters of type "(float **, float **, int, int)".
//
//   To fix the code, it is tempting to add an explicit cast and get on
// with things, but that would throw away the checking performed by more
// helpful compilers. Use VCL_OVERLOAD_CAST instead.

//#define VCL_OVERLOAD_CAST(T, x) ((T)(x))
//#define VCL_OVERLOAD_CAST(T, x) (x)
#define VCL_OVERLOAD_CAST(T, x) ((T)(x))


//----------------------------------------------------------------------
// stuff


//: VCL_NO_STATIC_DATA_MEMBERS
//
// True if compiler does not support static data members in template classes.
//
#define VCL_NO_STATIC_DATA_MEMBERS 0


//: VCL_HAS_TEMPLATE_SYMBOLS
//
// True if the compiler mangles function template instances differently
// from non-templated functions with the same name and signature.
// This is correct behaviour.
//
#define VCL_HAS_TEMPLATE_SYMBOLS 1


//----------------------------------------------------------------------
// default template arguments

//: VCL_DEFAULT_TMPL_ARG(arg)
//
// It is wrong to provide a default for a template parameter in two
// declarations in the same scope (14.1.12), e.g.
// \code
//   template <class S, class T = int> class X;
//   template <class S, class T = int> class X { /* ... */ };
// \endcode
// is wrong.
// However, some older compilers insist on seeing the default argument
// again when defining a class body or instantiating.
// To satisfy them, use this macro as follows :
// \code
//   template <class S, class T VCL_DEFAULT_TMPL_ARG(= int)> X { /* ... */ };
//   template X<double VCL_DEFAULT_TMPL_ARG(, int)>;
// \endcode
//
// It's possible we need two macros, one for redeclaration and
// one for instantiation.

//#define VCL_DEFAULT_TMPL_ARG(arg) /* no need */
//#define VCL_DEFAULT_TMPL_ARG(arg) arg
#define VCL_DEFAULT_TMPL_ARG(arg) 

//
#define VCL_CAN_DO_COMPLETE_DEFAULT_TYPE_PARAMETER 1
#define VCL_CAN_DO_TEMPLATE_DEFAULT_TYPE_PARAMETER 1

//#define VCL_DFL_TYPE_PARAM_STLDECL(A,a) A = a
//#define VCL_DFL_TYPE_PARAM_STLDECL(A,a) A /* = a */
//#define VCL_DFL_TYPE_PARAM_STLDECL(A,a) __DFL_TYPE_PARAM(A,a)
//FIXME #define VCL_DFL_TYPE_PARAM_STLDECL(A,a) 
//
//#define VCL_DFL_TMPL_PARAM_STLDECL(A,a) A = a
//#define VCL_DFL_TMPL_PARAM_STLDECL(A,a) A /* = a */
//#define VCL_DFL_TMPL_PARAM_STLDECL(A,a) __STL_DFL_TMPL_PARAM(A,a)
//FIXME #define VCL_DFL_TMPL_PARAM_STLDECL(A,a) 


// VCL_DFL_TMPL_ARG(class)
// Similarly, when instantiating a templated class with a default
// template argument, some compilers don't like the redeclaration of
// that argument, while others insist on it.
// In such cases, specify the default argument as follows:
// \code
//   template class vector <int VCL_DFL_TMPL_ARG(default_iterator) >;
// \endcode
// (Note the missing comma after int: it is inside the macro.)

//#define VCL_DFL_TMPL_ARG(classname) , classname
//#define VCL_DFL_TMPL_ARG(classname) /* , classname */
//#define VCL_DFL_TMPL_ARG(classname) __DFL_TMPL_ARG(classname)
//FIXME #define VCL_DFL_TMPL_ARG(classname) 


//----------------------------------------------------------------------
// exception and namespace issues


//: VCL_HAS_EXCEPTIONS
// Set to true if the compiler supports the use of exceptions.
#define VCL_HAS_EXCEPTIONS 1


//: VCL_HAS_NAMESPACES
// Set to true if the compiler supports the use of namespaces.
#define VCL_HAS_NAMESPACES 1


//: VCL_ALLOWS_NAMESPACE_STD
// Set to true if the compiler allows namespace std:: for the standard library.
#define VCL_ALLOWS_NAMESPACE_STD 1


//: VCL_NEEDS_NAMESPACE_STD
// Set to true if the compiler needs namespace std:: for the standard library.
#define VCL_NEEDS_NAMESPACE_STD 1

//----------------------------------------------------------------------
// signedness of char

//: VCL_CHAR_IS_SIGNED
// Set to true if the type "char" is signed.
#define VCL_CHAR_IS_SIGNED 1

//----------------------------------------------------------------------
// architecture macros removed -- they're not in the C++ standard

#endif // vcl_config_compiler_h_
