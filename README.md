Simple portable lock-free FIFO
==============================

Overview
--------

SFIFO is a lock-free single-reader/single-writer first-in-
first-out buffer that relies on the most basic of all
synchronization principles: atomic reads and atomic writes
of integers. Due to its design, it doesn't need compare-
and-exchange or similar primitives, which avoids the need
for access to special CPU instructions or expensive system
calls.


Background
----------

This is one of the oldest code snippets of mine that I'm
still using, and since it's been used in Kobo Deluxe (a
rather widespread port of XKobo), it has been tested on a
wide range of operating systems and architectures.

I can't even remember what platform I wrote the first
version for, but I suspect it was DOS with Borland C++,
x86 Real Mode. It has also been used in Linux kernel space
with RT-Linux, and used to have support for reading from
and writing to user space buffers from kernel context, but
both that and support for 16 bit platforms has since been
removed due to lack of maintenance.
