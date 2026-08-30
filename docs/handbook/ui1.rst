********************
The Original Self UI
********************

    Last updated 29 August 2026

Before Self used the current `morphic` user interface (also known as `UI2`) it used another, nameless, user interface framework which has been retrospectively dubbed `ui1`. ui1 applied cartoon-animation techniques to the programming environment (Bay-Wei Chang and David Ungar, "Animation: From Cartoons to the User Interface," UIST '93).

---------------
Starting the UI
---------------

On macOS, ui1 runs natively on Quartz (32-bit true colour). X11 is not required::

  ui open

That is the same verb as ``desktop open`` (ui2). Both default to Quartz on macOS and to X11 on Linux/BSD.

To force a backend or display::

  ui openOnQuartz                 "macOS only"
  ui openOnX11                    "$DISPLAY, or :0"
  ui openOnDisplay: 'host:0'      "a specific X display"

``ui start`` is a compatibility alias for ``ui open``; ``ui startOnQuartz``, ``ui startOnX11``, and ``ui startOnDisplay:`` likewise alias the ``open*`` selectors.

A second ui1 window: ``ui copy open``.

The tutorial ``ui demo`` is unchanged.

-----------------
X11 (optional)
-----------------

Classic 8-bit ui1 still runs under X11 (``ui openOnX11``). On macOS that needs XQuartz; see the "Running the UI under X11" section of the repository ``readme.md``. 8-bit colour is required only for that X11 path, not for Quartz.

--------------------
Preparing a snapshot
--------------------

The first step in using UI1 is to build a new World including it. Assuming you are in the `objects` directory in the Self source tree, and that the Self vm is in your path, do::

  Self -f worldBuilder.self

and when it asks you::

  Load UI1? (y/N)
  >

answer `y`. (This tree's ``all2.self`` already loads UI1.) When the World has built, save it at the prompt by doing::

  save
  quitNoSave

This will save a snapshot of the world in the file '``Snapshot.snap``'.
