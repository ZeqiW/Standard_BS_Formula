# Standard_BS_Formula

This Matlab File is aimed at solving standard BS formula using Numerical Analysis(Backward-Euler's Method and Crank-Nicolson Method).

I use Vanilla Put Option as an example, and set the boundary value to satisfy both European/American Put Option condition. For American Condition, I introduce an additional method called projected back substitution, which compares the value between the formula value and the intrinsic value at each time iteration step.

In this file,
fdm_am_put_be.m is the main function solving American Put Option using Backward-Euler.
fdm_am_put_cn.m is the main function solving American Put Option using Crank-Nicolson.
fdm_eu_put_be.m is the main function solving European Put Option using Backward-Euler.
fdm_eu_put_cn.m is the main function solving European Put Option using Crank-Nicolson.
Other .m files are used in these main function.
