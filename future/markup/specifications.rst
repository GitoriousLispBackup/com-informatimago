.. comment -*- mode:rst; mode:auto-fill; coding: utf-8; -*-

.. comment -*- mode:rst; mode:auto-fill; coding: utf-8; -*-

.. comment
    This file is a prefix for Medicalis rst documents.
    It defines headers and common notations.


.. comment
     (multiple-value-bind (se mi ho da mo ye dow) (get-decoded-time)
      (format t ".. \|GENERATION-DATE| replace:: ~
        ~[Sunday~;Monday~;Tuesday~;Wednesday~;Thirsday~;Friday~;Saturday~], ~
        ~[January~;February~;March~;April~;May~;June~;July~;August~;September~;October~;November~;December~] ~
        ~D~[st~;nd~;rd~:;th~], ~D" (1+ dow) (1- mo) da (1+  (mod da 10)) ye))


..  (MULTIPLE-VALUE-BIND (SE MI HO DA MO YE DOW) (GET-DECODED-TIME)
     (FORMAT T
      ".. \|GENERATION-DATE| replace:: ~4,'0D-~2,'0D-~2,'0D ~
                     ~2,'0D:~2,'0D:~2,'0D"
      YE MO DA HO MI SE))

.. |GENERATION-DATE| replace:: 2010-07-26 13:39:04
      


..  (SETF (EXT:GETENV "MDI_ALTERNATIVE") "Middleware Device Interface")


..  (SETF (EXT:GETENV "MDI_ALTERNATIVE") "Medical Device Interface")


..  (FORMAT T ".. \|MDI_ALTERNATIVE| replace:\: ~A~%"
     (IF (EXT:GETENV "MDI_ALTERNATIVE") (EXT:GETENV "MDI_ALTERNATIVE")
      "Moving Data Integrator"))

.. |MDI_ALTERNATIVE| replace:: Medical Device Interface




.. comment
    .. |NOTE|    image:: note.png
    .. |RETURNS| image:: returns.png
    .. |RARROW|  image:: right-arrow.png
    .. |WARNING| image:: warning.png
    .. |PROBLEM| image:: problem.png

    .. |NOTE|    replace:: NOTE:
    .. |RETURNS| replace:: RETURNS:
    .. |RARROW|  replace:: -->
    .. |WARNING| replace:: WARNING:
    .. |PROBLEM| replace:: PROBLEM:

    .. |NOTE|    replace:: \u261E .. ☞
    .. |RETURNS| replace:: \u279E .. ⏎
    .. |RARROW|  replace:: \u279E .. ➞
    .. |WARNING| replace:: \u26A0 .. ⚠
    .. |PROBLEM| replace:: \u2623 .. ☣ = biohazard_sign

    .. |NOTE|       replace:: ☞
    .. |RETURNS|    replace:: ⏎
    .. |RARROW|     replace:: ➞
    .. |WARNING|    replace:: ☛
    .. |FIXME|      replace:: ✍



.. comment
    .. |WARNING|    image:: resources/warning.png
        :height: 64 px
        :alt:   WARNING


.. comment
    .. |FIXME|      image:: resources/fixme.png
        :height: 32 px
        :alt:    FIXME


.. |RETURNS|    replace::  ➞
.. |RARROW|     replace::  ➞
.. |FIXME|      replace::  FIXME:
.. |TBW|        replace::  FIXME: TBW






.. |MEDICALIS|  replace:: Medicalis S.L.
.. |SARA|       replace:: ``SARA™``
.. |PDMS|       replace:: ``PDMS``

.. |MDI|        replace:: ``M.D.I™``
.. |MDI_NAME|   replace:: ``M.D.I™``
.. |MDI_TITLE|  replace:: Software Requirement Specifications of the M.D.I
.. |MDI_HEADER| replace:: Specifications of the M.D.I



.. role:: header_left
.. role:: header
.. role:: header_right




.. header::

    |HEADER|  --  |MEDICALIS|


.. footer::

    |GENERATION-DATE| -- Page ###Page###




.. comment emacs:
    (dolist (m '(buffer
                 configurer
                 dispatcher
                 http-monitor
                 imcp
                 message-logger
                 normalizer
                 protocol-generator
                 receiver
                 sender
                 snmp-monitor
                 tagger
                 upgrader))
      (insert (format ".. %-30s replace:: ``%s``\n" (format "|%s|" (string-upcase m)) (string-upcase m)))
      (insert (format ".. %-30s replace:: ``%s``\n" (format "|%s_NAME|" (string-upcase m)) (string-downcase m)))
      (insert (format ".. %-30s replace:: \n" (format "|%s_TITLE|" (string-upcase m))))
      (insert (format ".. %-30s replace:: \n" (format "|%s_HEADER|" (string-upcase m))))
      (insert "\n"))

.. comment Modules:

.. |BUFFER|                       replace:: ``BUFFER``
.. |BUFFER_NAME|                  replace:: ``buffer``
.. |BUFFER_TITLE|                 replace:: |MDI| Buffer Database Module
.. |BUFFER_HEADER|                replace:: |MDI| Buffer Database Module

.. |CONFIGURER|                   replace:: ``CONFIGURER``
.. |CONFIGURER_NAME|              replace:: ``configurer``
.. |CONFIGURER_TITLE|             replace:: |MDI| Configuration Module
.. |CONFIGURER_HEADER|            replace:: |MDI| Configuration Module

.. |DISPATCHER|                   replace:: ``DISPATCHER``
.. |DISPATCHER_NAME|              replace:: ``dispatcher``
.. |DISPATCHER_TITLE|             replace:: |MDI| Dispatch Module
.. |DISPATCHER_HEADER|            replace:: |MDI| Dispatch Module

.. |HTTP_MONITOR|                 replace:: ``HTTP-MONITOR``
.. |HTTP_MONITOR_NAME|            replace:: ``http-monitor``
.. |HTTP_MONITOR_TITLE|           replace:: |MDI| HTTP Monitor Module
.. |HTTP_MONITOR_HEADER|          replace:: |MDI| HTTP Monitor Module

.. |IMCP|                         replace:: ``IMCP``
.. |IMCP_NAME|                    replace:: ``imcp``
.. |IMCP_TITLE|                   replace:: |MDI| Inter Module Communication Protocol Specifications
.. |IMCP_HEADER|                  replace:: |MDI| IMCP Specifications

.. |MESSAGE_LOGGER|               replace:: ``MESSAGE-LOGGER``
.. |MESSAGE_LOGGER_NAME|          replace:: ``message-logger``
.. |MESSAGE_LOGGER_TITLE|         replace:: |MDI| Message Log Module
.. |MESSAGE_LOGGER_HEADER|        replace:: |MDI| Message Log Module

.. |NORMALIZER|                   replace:: ``NORMALIZER``
.. |NORMALIZER_NAME|              replace:: ``normalizer``
.. |NORMALIZER_TITLE|             replace:: |MDI| Normalization Module
.. |NORMALIZER_HEADER|            replace:: |MDI| Normalization Module

.. |PROTOCOL_GENERATOR|           replace:: ``PROTOCOL-GENERATOR``
.. |PROTOCOL_GENERATOR_NAME|      replace:: ``protocol-generator``
.. |PROTOCOL_GENERATOR_TITLE|     replace:: |MDI| Protocol Generator Module
.. |PROTOCOL_GENERATOR_HEADER|    replace:: |MDI| Protocol Generator Module

.. |RECEIVER|                     replace:: ``RECEIVER``
.. |RECEIVER_NAME|                replace:: ``receiver``
.. |RECEIVER_TITLE|               replace:: |MDI| Receiver Modules
.. |RECEIVER_HEADER|              replace:: |MDI| Receiver Modules

.. |SENDER|                       replace:: ``SENDER``
.. |SENDER_NAME|                  replace:: ``sender``
.. |SENDER_TITLE|                 replace:: |MDI| Sender Modules
.. |SENDER_HEADER|                replace:: |MDI| Sender Modules

.. |SNMP_MONITOR|                 replace:: ``SNMP-MONITOR``
.. |SNMP_MONITOR_NAME|            replace:: ``snmp-monitor``
.. |SNMP_MONITOR_TITLE|           replace:: |MDI| SNMP Monitor Module
.. |SNMP_MONITOR_HEADER|          replace:: |MDI| SNMP Monitor Module

.. |TAGGER|                       replace:: ``TAGGER``
.. |TAGGER_NAME|                  replace:: ``tagger``
.. |TAGGER_TITLE|                 replace:: |MDI| Context Tag Management Module
.. |TAGGER_HEADER|                replace:: |MDI| Context Tag Management Module

.. |UPGRADER|                     replace:: ``UPGRADER``
.. |UPGRADER_NAME|                replace:: ``upgrader``
.. |UPGRADER_TITLE|               replace:: |MDI| Software Management Module
.. |UPGRADER_HEADER|              replace:: |MDI| Software Management Module









.. comment
   Local Variables:
   mode: rst
   mode: auto-fill
   coding: utf-8
   End:

.. |TITLE|  replace:: |MDI_TITLE|
.. |HEADER| replace:: |MDI_HEADER|

.. comment 
    reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/
    rst2pdf:          http://rst2pdf.googlecode.com/svn/trunk/doc/manual.txt
    I use rst2pdf because it's simplier and more reliable that sphinx. 


.. comment

    #########
    DOC TITLE
    #########
    
    CHAPTER
    #######
    
    Section
    =======
    
    Subsection
    ----------
    
    Subsubsection
    ^^^^^^^^^^^^^
    
    Subsubsubsection
    ................


############################################################
Software Requirement Specifications of the M.D.I
############################################################


|MEDICALIS|



Introduction
############################################################


:authors: Pascal Bourguignon
:contact: pascal.bourguignon@medicalis.es
:version: 0.3.3
:copyright: 2010 Medicalis S.L.


Versions
============================================================

+----------+-----------------------------------+---------------------------------------+---------+
|   Date   | Author                            | Notes                                 | Version |
+----------+-----------------------------------+---------------------------------------+---------+
| 20100510 | Pascal J. Bourguignon             | Initial version                       | 0.1     |
|          | <pascal.bourguignon@medicalis.es> |                                       |         |
+----------+-----------------------------------+---------------------------------------+---------+
| 20100513 | Pascal J. Bourguignon             | First draft, coarse requirements      | 0.2     |
|          |                                   | descriptions.                         |         |
+----------+-----------------------------------+---------------------------------------+---------+
| 20100519 | Pascal J. Bourguignon             | Corrections from Alberto Sole's       | 0.3.1   |
|          |                                   | comments.                             |         |
+----------+-----------------------------------+---------------------------------------+---------+
| 20100524 | Pascal J. Bourguignon             | Integrated Lloreda's requirements     | 0.3.2   |
+----------+-----------------------------------+---------------------------------------+---------+
| 20100708 | Pascal J. Bourguignon             | Corrected Normalization Module        | 0.3.3   |
+----------+-----------------------------------+---------------------------------------+---------+
|          |                                   |                                       | 0.3.4   |
+----------+-----------------------------------+---------------------------------------+---------+
|          |                                   |                                       |         |
+----------+-----------------------------------+---------------------------------------+---------+
|   Date   | Author                            | Notes                                 | Version |
+----------+-----------------------------------+---------------------------------------+---------+


Table of Contents
============================================================

.. sectnum::

.. contents::



.. raw:: pdf

   PageBreak



Purpose
============================================================


This document establishes the specifications of the |MDI|, or
``|MDI_ALTERNATIVE|`` software system.

The purpose of this system is to collect real-time data from various
sources, normalize them (in format and time), and forward them to
processing or storing systems, ensuring that no data is lost in case
of communication problem.

Data is collected from external devices that may change (be unplugged,
replaced and plugged in) over time, so a mechanism to install input
modules dynamically is specified.




Document conventions
============================================================

The following convention are used in this document:


|FIXME|
    indicates something to correct in this document.

|FIXME| TBW
    indicates a section remaining to be written.

.. attention::  is something you must pay attention to.

.. caution::    is something you must take caution to.

.. warning::    is a warning.

.. danger::     is something dangerous.

.. error::      is an error.


.. important::  is something important.

.. note::       is a note.

.. hint::       is a hint.

.. tip::        is a tip.




Intended audience
============================================================

This document will be used by the following actors:

    - the customers, who will validate the specfications.
    - the analysts, who will design the specified software system.
    - the quality assurance engineers, who will write the validation tests of the system.
    - the documentation writer, who will write the user manuals.



Additional information
============================================================

|FIXME| TBW


Contact information
============================================================

Medicalis S.L.
   - http://www.medicalis.es/
   - mailto:info@medicalis.es

Requirement Analyst
   Pascal J. Bourguignon mailto:pascal.bourguignon@medicalis.es



References
============================================================

|FIXME| TBW


The documentation of medical devices is found on smb://medicalis_pdc/repositorio-1/tecnica/medicalis/proyectos/MDI/documentacion/Manuales_de_Dispositivos_Medicos/.

- Respirador_Viasys/Consolidated VOXP Specification.pdf
- Monitor_Picco2/PiCCO2_Manual_RS232_INTERFACE_R01_19062008.pdf
- Incuvadora_NaturalCare/NATURAL CARE USO 2004.pdf
- Sistema_Ventilado_SERVO/SERVOi_SERVREFMAN_ComputerInterfaceEmulatorReferenceManual_EN_All.pdf
- Analizador_Sangre_Portati_iStat/CDS Specification.pdf
- Analizador_Sangre_Portati_iStat/Service Manual i-stat Abril 2005.pdf
- Analizador_Sangre_Portati_iStat/INTER32-SPC-011.pdf
- Analizador_Sangre_Portati_iStat/1_INTER32-SPC-ASTM.pdf
- Analizador_Sangre_Portati_iStat/INTER32-SPC-010.pdf
- Analizador_Sangre_Portati_iStat/INTER32-SPC-HL7.pdf
- Analizador_Sangre_Portati_iStat/manual uso i-stat extenso español.pdf
- Ventilador_UCI_Raphael/rap_color_ops_man_s.pdf
- Ventilador_UCI_Raphael/raphael.pdf
- Monitor_Philips_VueLink/VueLink Open Interface Developer's Guide.pdf
- Monitor_Beneview/Mindray PDS Protocol Programmer's Guide.pdf
- Monitor_Beneview/Patient Data Share Solution Guide.pdf
- Monitor_Beneview/Beneview.pdf
- Bomba_Alaris_Gateway/XMLSchema.txt
- Bomba_Alaris_Gateway/1000PB01670 AGW DG.pdf
- Bomba_Alaris_Gateway/1000PB01633 AGW XSLT DG.pdf
- Ventilaror_AVEA/AVEA VELA Interface Development Status1.xls
- Ventilaror_AVEA/068_AVEA_Communication_Protocol.pdf
- Ventilaror_AVEA/Avea Vela communication connectivity 9.29.06.pdf
- Respirador_drager/intensive care devices.pdf
- Respirador_drager/medibus drager.pdf
- Respirador_Horus/Protocolo Horus.pdf
- A-2000_Bispectral/A-2000-COMprotokoll 1.05.pdf
- Avant_9600_Pulsioximetro/9600 Spanish manual.pdf
- Avant_9600_Pulsioximetro/9600 Technical Service Manual.pdf
- Ventilador_Nellcor_840/MANUAL 840 17106.pdf
- Hemofiltrado_Fresenius/TI 1042 e (Communication Protocol mDL) V1.07.pdf
- Siemes_Ventilador_Servo300/SV300300A_SERVREFMAN_ComputerInterfacefFirmware2XReferenceManual_SERVO_300.pdf
- Gasometro_Radio_Meter/PROTOCOLO Series7xx_8xx_Radiance.pdf
- Ecografo_Siemens_Acuson/CV70_conformance_statement_ext.pdf
- Ventilador_Hamilton_Medical/Hamilton RS232 Protocol.pdf

.. - PACS/07_12pu.pdf
.. - PACS/07_17pu.pdf
.. - PACS/07_07pu.pdf
.. - PACS/07_14pu.pdf
.. - PACS/books.doc
.. - PACS/07_15pu.pdf
.. - PACS/07_08pu.pdf
.. - PACS/07_11pu.pdf
.. - PACS/07_04pu.pdf
.. - PACS/07_06pu.pdf
.. - PACS/CookBook.pdf
.. - PACS/07README.pdf
.. - PACS/07_05pu.pdf
.. - PACS/07_10pu.pdf
.. - PACS/07_16pu.pdf
.. - PACS/07_01pu.pdf
.. - PACS/07_02pu.pdf
.. - PACS/07_18pu.pdf
.. - PACS/07_03pu.pdf
.. - PACS/DICOMinaNutShell.pdf
.. - PACS/books.pdf


http://www.w3.org/  for the HTML, XML, etc standards.

HL7

http://www.rfc-editor.org/  RFCs.

Linux & libraries documentation.



.. raw:: pdf

   PageBreak

Overall Description
############################################################

Product perspective
============================================================

The general application of the |MDI| is to collect real-time data,
tag it, normalize it (format and time), and difuse it to processing or
storage units.  The data is saved in persistent storage to ensure delayed
delivery in case of network problem.

The first application of the |MDI| is to integrate medical data from
various medical devices, to normalize them, and to forward them to the
|PDMS| database (like |SARA|).

The |MDI| will be composed of various modules that can be set up in
diverse configurations, depending on the deployment needs.

.. figure:: modules/modules.png
    :align: center
    :alt: A diagram of the |MDI| modules.
    :figwidth: 80 %

    The |MDI| modules.



.. raw:: pdf

   PageBreak

In the medical application, it is envisionned a deployment on two
kinds of platforms:

1. ``MDI-C``, a mobile unit, close to the patients and the medical
   devices, that will collect the raw data.

.. figure:: modules/mdi-c.png
    :align: center
    :alt: A diagram of the |MDI| modules in the ``MDI-C`` configuration.
    :figwidth: 80 %

    The |MDI| modules in the ``MDI-C`` configuration.


.. note:: The ``MDI-P`` is a physical module used to identify the
          external device instance.  It may also contain a scanner to
          input user tags (such as the Patient-ID).  These data will
          be available thru a specific wrapping protocol, available to
          the ``MDI-C`` over the serial or USB ports.


.. raw:: pdf

   PageBreak

2. ``MDI-B``, a centralized unit, collecting the data from the ``MDI-C``
   mobile units, and dispatching to the |PDMS| system.

.. figure:: modules/mdi-b.png
    :align: center
    :alt: A diagram of the |MDI| modules in the ``MDI-B`` configuration.
    :figwidth: 80 %

    The |MDI| modules in the ``MDI-B`` configuration.



There may also be two kinds of deployment:

- a centralized deployment, where several ``MDI-C`` send their data to
  a central ``MDI-B`` box, where the data is stored in a ``MDI-DB``
  and exploited.  The users must then connect to this centralized
  ``MDI-B`` server to get the data.

- a grid deployment, where the various ``MDI-C`` store the data
  locally (each with its own ``MDI-DB`` module).  In this deployment, a
  ``MDI-Grid`` module is integrated to each ``MDI-C`` to manage the
  grid (discovery of the ``MDI-C`` in the grid, distribution of
  directories).  The users may then connect directly to any ``MDI-C``
  in the grid and find where the data they want is, and they may
  connect directly to the ``MDI-C`` containing the data (or the
  ``MDI-Grid`` module may forward their request to the right ``MDI-C``.



Product functions
============================================================

The |MDI| will have the following functions:

- automatic identification of the device plugged in and
  configuration of the input module. `REQ-2001`_

- collecting data from various devices, using the device specific
  protocols and medium (serial lines RS-232, RS-422; ethernet RJ-45;
  analogical inputs). `REQ-2002`_

- storage of the raw data in a message log, for audit. `REQ-2003`_

- tagging of the data with context information (eg. Patient-ID,
  network timestamp, location, mobile device, entity (hospital,
  house), ...). `REQ-2004`_

- normalization of the data (format, scales, time synchronization). `REQ-2005`_

- storage of the data in a persistent buffer database, to protect
  against network failures. `REQ-2006`_

- storage of the data in a centralized database for exploitation. `REQ-2007`_

- forwarding of the data (either real-time, or from the persistent
  buffer), to various external systems, including local web servers or
  other processes. `REQ-2008`_

- monitoring of the system via standard protocol (SNMP, HTML). `REQ-2009`_

- configuration of the system (physical configuration (components, IP
  addresses, etc) `REQ-2010`_, and application configuration (dictionaries, rule
  sets, etc) `REQ-2011`_,  and management of software upgrades `REQ-2012`_.

- the data streams may be monitored for special conditions (eg. out of
  range data) and signal real-time alarms. `REQ-2013`_

- collect usage and failure statistics of the various devices
  (external devices and components of the |MDI|).



User classes and characteristics
============================================================

|FIXME| TBW


Medical Environment
------------------------------------------------------------

In the medical environment, the following user classes are expected.


For the ``MDI-C``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- `operator` (ie. a nurse).  The basic actions an operator will have on
  the system are:

     - start up, shut down, restart the ``MDI-C``,
     - plug and unplug medical devices to the ``MDI-C``,
     - plug and unplug the network interface (eg. just moving the
       trail where the ``MDI-C`` is  embedded from one Wifi AP to
       another, thru a Wifi shadow area).
     - assign context tags such as Patient-ID to the data streams.

- `watcher` (ie. a nurse or a doctor).  The watcher may:

     - monitor the data streams (dashboard).
     - be the target of alarms.

  While the watchers may connect directly to the ``MDI-C``, or
  subscribe to alarms directly for a ``MDI-C``, they will normally do
  that from the centralized ``MDI-B``.



- `administrator` (ie. a computer or network technician).  The
  administrator may:

      - configure the ``MDI-C``,
      - administrate its modules (eg. clean-up of databases,
        observation of logs, install upgrades).


For the ``MDI-B``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- `operator` (ie. a nurse).  The operator may configure data streams in
  the |MDI| system, for example:

     - configure the contextual information (eg. Patient-ID) on the
       data stream of a specific ``MDI-C`` in the grid.

     - report an out-of-service medical device.
 
  These actions, on the ``MDI-B`` operator interface are propagated to
  the relevant ``MDI-C``.


- `watcher` (ie. a nurse or a doctor).  The watcher may:

     - monitor the data streams (eg. via the dashboard module).
     - be the target of alarms (eg. via SMS, email, etc).


- `administrator` (ie. a computer or network technician).  The
  administrator may:

      - configure the ``MDI-B``,
      - administrate its modules (eg. clean-up of databases,
        observation of logs, install upgrades).


- other kinds of "users" will be computer systems connecting to the
  ``MDI-B`` to fetch the data.



Operating environment
============================================================

This describes the physical environment where the component will be
deployed.


Medical Environment
------------------------------------------------------------

In the medical environment, the operating environment will be as
follow:


For the ``MDI-C``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

- Operating room environment. 
- Intensive care room environment.
- Any bed in a hospital, maternity, etc.
- In telemedecine, near the patient.
- In mobile modules (emergency departments or mobile units, specialities).

There are physical and safety constraints specific to these
environments, which will impact the hardware.



For the ``MDI-B``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A server-room environment.






User environment
============================================================

|FIXME| TBW

The users will interact with the |MDI| system either at the hardware
level (an operator pluging in a device), or indirectly, thru
client/server applications such as HTML browsers or specific
monitoring applications, or even indirectly thru applications using
the PDMS. 

Therefore the user environment is indeterminate, and may cover the
whole range of available environments implementing a standard HTML
browser or for which a specific application may be developed.



Design/implementation constraints
============================================================

|FIXME| TBW


Assumptions and dependencies
============================================================

|FIXME| TBW






.. raw:: pdf

   PageBreak

External Interface Requirements
############################################################

User interfaces
============================================================


ReCoM: Remote Control of MDI
------------------------------------------------------------

This will be a  a tablet computer with an application to control the
``MDI-C`` (configuration and dashboard).

Some technical mean (eg. bluetooth, GPS) may be actived to detect
automatically the closest ``MDI-C`` box (or boxes), to have the ReCoM
connect automatically to it, or provide the list of close ``MDI-C``
boxes.


.. comment
    .. note::  Since we have a VGA interface on the ``MDI-C`` platform, we
               could also provide a console application as user
               interface.  However it would probably not be any
               improvement over using a local web browser. So the optional
               local console application will be a web browser.


The user interface for Configuration
------------------------------------------------------------

The configuration of the |MDI| system can be done in three ways:

1. A configuration and monitoring command language will be defined and
   a command shell will be provided to configure and monitor the
   system.  This configuration language will be used to load the
   initial configuration from a configuration file.  The command shell
   will be available from a terminal (local console, remote via ssh).
   `REQ-2015`_

2. The configuration and monitoring command language will be exported
   as a web service, to be used by remote configuration application
   (This is a API that can be used to develop remote configuration
   user interfaces, like in the ReCOM).
   `REQ-2016`_

3. A configuration web application will present a web based
   configuration interface and will communicate with the configuration
   module to change the current configuration (save it to the initial
   configuration file), and to monitor the status of the modules.  The
   users will be able to configure the system using their web browser
   thru the network.
   `REQ-2017`_

4. A SNMP monitoring and configuration module will be provided.  The
   users will be able to use standard SNMP clients to monitor and
   configure the system.
   `REQ-2018`_


User interface for Data Stream exploitation (DashBoard)
------------------------------------------------------------

The user interface to exploit the data streams  will be implemented by
the dash board component.  `REQ-2019`_

This component, programmed in WinDev/WebDev `REQ-2020`_,
will be generated as various modules including:

1. a web application module that may be configured in a ``MDI-C`` (in
   a grid configuration), or in a ``MDI-B`` (in a centralized
   configuration). 

2. various components (.Net, Java, etc) that may be integrated in
   external applications.


This will be a 'pull' module, that will get the data from the MDI-DB
Database module, and display it.  

.. note:: this means that in the grid configuration, 
          a `MDI-DB Module`_ must be configured in the
          ``MDI-C``, for the local data streams.



Hardware interfaces
============================================================

The hardware interfaces will depend on the deployment platforms.

For the ``MDI-C`` units we will have:

- several serial ports, 

- one or two ethernet interfaces, 

- USB ports, 

- possibly analogical to digital conversion interfaces.  

- possibly a VGA display for user interface (eg. for administrative 
  tasks such as configuration and maintenance).

- possibly a bluetooth interface.


The ``MDI-B`` units will have:

- an ethernet interface, 

- possibly a VGA display for user interface (eg. for administrative 
  tasks such as configuration and maintenance).

Hardware interfaces will be used by specific modules upon specific
configuration, thru the Linux OS.


The ``MDI-P`` connector
------------------------------------------------------------

The ``MDI-P`` is a hardware module providing the ``MDI-C`` with
extended hardware interfaces, including:

- HUB 8 ports ethernet,
- Wifi interface,
- optionnaly a 3G interface,
- a barcode reader (to enter context information (tags) such as
  Device-ID or Patient-ID).

The `Input Modules`_  will have to read the context information
provided by the ``MDI-P`` barcode reader and attach it to the data
flow they process. `REQ-2021`_


Software interfaces
============================================================

|FIXME| TBW

The software interfaces will depend on the modules configured.

Internal Interfaces
------------------------------------------------------------

Internally, the modules will communicate thru IPC.  

We could use local IPC (eg. memory sharing, message queues), but
unless the performance constraints requires it, it will be preferable
to use TCP/IP sockets so that the modules may be more easily
configured and eg. distributed in a cluster. `REQ-2022`_


External Interfaces
------------------------------------------------------------

The external software interfaces will be based on TCP/IP client/server
communications, using protocols (and possibly using standard formats
such as Sexps, XML, etc).  The exact specification of these software
interfaces will be given in the specification of each concerned module.


.. comment

    Externaly, the software interfaces will include API 
    standard protocols such as HTTP (HTML, XML, etc), or specific library
    interfaces such as databases access protocols.

    The protocols for application data exchange

    The modules providing application data to the clients may use
    protocols such as:

    - specific client/server protocols for custom modules,
    - HL7,
    - XML,
    - Web Services.


Communication protocols and interfaces
============================================================

The protocol for Time Management: NTP
------------------------------------------------------------

The underlying LINUX OS must have its time synchronized via NTP.  The
|MDI| will get sub-second real time (wall clock) from the kernel, to
synchronize the real-time data streams. `REQ-2023`_


The protocol for technical System Monitoring (SNMP)
------------------------------------------------------------



SNMP monitoring `REQ-2009`_ will be activated on two parts:

- the Linux OS, to monitor its configuration (eg. network addresses),
  and its resource usage (disk space, memory space, processes).
  `REQ-2024`_
 
- the |MDI| system, to monitor its configuration (configured modules),
  and the state of the running modules (with statistics about message
  frequencies, database usage).
  `REQ-2025`_



The protocols for File Transfer
------------------------------------------------------------

Software distribution and upgrade will require the use of file
transfer protocols.  The ``MDI-C`` modules should be able to boot
either from the network, or from their internal hard disk.  When a new
version of the software (OS software, or |MDI| software) is available
(from a centralized |MDI| software upgrade server), it may be
downloaded and installed, either automatically or upon operator
intervention. 

We may consider FTP, TFTP, BOOTP, but SCP or SFTP (based on SSH) is
preferable.

`REQ-2026`_


The protocols for the User Interface External Modules
------------------------------------------------------------

.. comment

    The User interface modules (either administration user interface, or
    end-user data stream interfaces) will be implemented with the HTTP, and
    using HTML, XML and other standards.

The protocols used for the User Interface External Modules
(components) will be specified in the specification of the
`Configuration Management`_ module and of the `MDI-DB Module`_,


The protocols for Application Data Exchange
------------------------------------------------------------

The modules providing application data to the clients may use
protocols such as:

- specific client/server protocols for custom modules,
- HL7,
- XML,
- Web Services.


The protocol for the dataflow from ``MDI-C`` to ``MDI-B``
------------------------------------------------------------

|FIXME| TBW
 
The ``MDI-C`` to ``MDI-B`` communication protocol is to be specified.

This will be a specific client/server protocol.

It may be similar to the internal communication protocol used between
the modules on a single component, with the difference that it will
have to be able to run over TCP/IP and implement the following
security features.

Security:  it must be encrypted, to avoid eavedropping.  The
components must be authenticated (both ends) to avoid evil data
feeding and good data disclosure.

`REQ-2027`_



.. raw:: pdf

   PageBreak

System Features (Functional Capabilities)
############################################################

|FIXME| TBW

Informal feature specifications
============================================================

|FIXME| These feature specifications will have to be reformated into formal
requirements.


Operating System Configuration Management
------------------------------------------------------------

|FIXME| How are the IP addresses managed?  Notice that the network may
be unplugged/replugged in different places (either Ethernet or Wifi)
and therefore it is possible that different IP addresses be assigned.
We may consider using the MAC addresses to identify the ``MDI-C``
boxes.

.. comment 

    Notice also that in the case of using virtual machines, we may use
    several IP addresses per MDI box.  (Or we can also use iptables to
    dispatch ports to internal virtual net IP addresses).


|FIXME| Configuration of the hostname =?= identification of the
``MDI-C``.  It would be better to set the identification of a |MDI|
system in the initial configuration file, so that we can run several
|MDI| systems on the same host (which may be interesting for
virtualization and for testing and debugging).


A ``MDI-C`` box may be reset at any time.  It must then reboot as
fast as possible.

On a ``MDI-C``, there's also `reinitialize/rebuild` button that will
reset the box, and that requires on reboot, a re-installation of the
|MDI| system. |FIXME| decribe the reset state.


Configuration Management
------------------------------------------------------------


The _`Configuration Module` will load a configuration file at launch time
and launch and configure the configured modules.

1. The configuration module will provide a command shell.

   A configuration language must be designed, in which initial
   configuration files may be written, and that can be used by a
   command shell to change or monitor the configuration dynamically.


2. A web service configuration module will present a web configuration
   interface and will communicate with the configuration module to
   change the configuration, and to monitor the status of the modules.


3. We may also provide a way to configure and monitor the modules thru
   SNMP.  The monitoring might be done directly from the modules
   themselves.  The configuration may be done by the configuration
   module presenting a SNMP interface.  Any SNMP monitoring and
   configuration too can then be used as user interface.



The configuration elements include:

- the modules that must be launched,

- the hardware ports that must be monitored for automatic probing and
  launch of the input modules,

- the connections between the modules: 

    - to what other module should a given module sends its processed
      data (it may be an internal module, or an external host/port
      connection).

    - to what internal port should  a given module listen for incoming
      data.

    - authentication  keys to  be used  when  establishing connections
      between modules.

    - optionnaly, the encryption keys used to encrypt/decrypt the data
      (or part of the data).

- the module-specific parameters.  Eg. for the Raw Message Log module,
  we could have the purge time, after which the old messages are
  automatically erased.

- the current configuration may be saved to a file, or to the
  initialization file.


The monitoring involves:

- getting current configuration,

- getting information about the running modules and their actual state.


|FIXME| TBW


Data Stream Context Tagging Management
------------------------------------------------------------

Input modules must tag the data they receive with context data including:

- the identification of the input module,

- the identification of the input port,

- the identification of the protocol and version,

- the identification and model of the external device (will be used
  eg. for the monitoring of the usage of the device in the Device
  Control Dashboard),

- the time stamp (with a subsecond resolution).

- for each data element which as a unit, the unit should be attached
  to the raw value.  

In addition user specified context tags may be configured to be
attached to data coming from this port or external device, such as 
Patient-ID, location, (GPS for mobile devices), entity (hospital,
house) in the case of medical applications.

.. note:: since the Input Modules may change dynamically, the user
    tags can be configured for the whole ``MDI-C``, or for specific ports,
    or for specific external devices (identified by their serial number or
    by a ``MDI-P``).


The user interface  to configure the `Data Stream  Context Tagging` is
part  of  the configuration  user  interface  (therefore  part of  the
configuration  language, part of  the configuration  web API  and user
interface, and part of SNMP).


|FIXME| TBW


Raw Message Log Management
------------------------------------------------------------

A database will be used to store the raw messages as they arrive.

The Input Module may be configured to log raw messages or not.  In
particular, Input Modules receiving their data not directly from an
external device may not be logged (eg. a ``MDI-B`` receiving data from
200 ``MDI-C`` boxes wouldn't log these messages, but a ``MDI-C``
receiving data from two external devices would).


The Raw Message Log Database Module will store the raw messages in a
persistent database.

The Raw Message Log Database Module may purge automatically raw
messages older than a configured time.

The Raw Message Log Database Module may purge automatically raw
messages older than a configured time.

The Raw Message Log Database Module  will use an ODBC or Gateway layer
to access the database so that any database may be configured.

The Raw Message data will be accessed directly from the database for
audit or debugging purposes.

The Raw Message Log Database Module will provide monitoring
informations (statistics about the Raw Message database).


The user interface to configure the  Raw Message Log Module is part of
the configuration user interface  (therefore part of the configuration
language, part  of the  configuration web API  or user  interface, and
part of SNMP).



|FIXME| TBW


Software Upgrade Management
------------------------------------------------------------


|FIXME| TBW

Some notes:

- software upgrade distribution go thru a centralized server for a
  given deployment (ie. one server, possibly running on  the
  ``MDI-B``, gets the software upgrades, and serves them to the
  various components of the |MDI| system (eg. the ``MDI-B`` and the
  various ``MDI-C``).

- software upgrade management deals with upgrades of:

    1. the linux distribution (based on the distribution upgrading
       system).  Less frequent.

    2. the |MDI| system software.  Medium frequency.

    3. the distribution of new protocol definition files.  More frequent.

- the |MDI| system may be configured to fetch and/or install upgrades
  automatically, or upon administrator command.

- |MDI| system must be controled by a licensing mechanism, using
  activation keys thru the Internet, and linked to the serial number
  (identification) of the ``MDI-C`` and ``MDI-B`` boxes.


- there should be a rollback feature, to fall back to some previous
  version if the upgrade doesn't work well.  The administrator may
  also choose to mask some version (which doesn't work for them) or
  version range.  

- the available modules and  versions may depend on the license option.

- The Software Upgrade Management Module must take into account also
  custom modules that may not be upgraded at the same time as the
  |MDI| system software.  These custom modules should not be
  overriden, and the initial configuration files mentionning them
  should be preserved or may need manual handling.


SNMP Monitoring Module
------------------------------------------------------------

SNMP monitoring of the Linux OS will be activated.

Each |MDI| module will provide its monitoring information thru SNMP.


|FIXME| TBW


Web Monitoring Module
------------------------------------------------------------

This module will allow monitoring  the internal workings of the |MDI|
system thru a web API or interface.  

The `Web Monitoring Module` will allow monitoring either the local |MDI|
system, or the whole `grid` of |MDI| systems (showing then a global
status of each ``MDI-C`` box.

For the local |MDI| system monitoring, the configured modules will be
displayed, with a global status light (green, yellow, red) for each
module, and depending on the kind of module various other indicators.
Eg. the size of the queues, the number of processed message per
second, etc.

Alerts will be issued when problems occur.


|FIXME| TBW



Input Modules
------------------------------------------------------------

The _`input modules` must implement the communication protocols with the
external devices, and receive the data messages.

.. note:: Depending on the communication protocol, this may require
          synchronous or asynchronous communication, and polling
          (request/response) or passively receiving the data stream.


These messages must be logged in raw form along with a timestamp and
other tags (interface identification, module identification, protocol
identification, timestamp, user tag (eg. patient-id)).

The input module must then convert the format of the data from the
device specific format to the common internal format.

The common internal format may also wrap the original data into a
BLOB, in particular in the cases where the external device provides
the data message in a standard format (eg XML, HL7, EDI), and this
data needs to be forwarded as-is to the downstream services. 

.. note:: there are various modes of data:

    - digital samples,
    - digital waveforms (serie of samples),
    - analogical input.
    - image,
    - video,
    - sound,
    - DICOM files.

The common internal format must encompass all these modes of data.


To decrease the risk of errors, the data will be tagged at the earlier
stage with its unit, when relevant.  Further processing of the data
will then be able to check the unit and ensure unit consistency when
converting or scaling the data.


See also: 
    - `MDI-C Input Module`_, 
    - `Serial Port Input Module`_, 
    - `USB Input Module`_, 
    - `Ethernet Port Input Module`_,
    - `Analogical-Digital Input Module`_.


Serial Port Input Module
------------------------------------------------------------

|FIXME| TBW


USB Input Module
------------------------------------------------------------

|FIXME| TBW


Ethernet Port Input Module
------------------------------------------------------------

|FIXME| TBW

.. note:: There are external devices that don't use TCP/IP over
          Ethernet, but proprietary protocols. 

.. comment
    X10



Analogical-Digital Input Module
------------------------------------------------------------

|FIXME| TBW




Configuration of Input Modules
------------------------------------------------------------

The activation of the input modules should be done automatically.  A
listening module will watch out for hardware connection, and upon
connection of a new device will probe it and identify it.  This may
happen with the help of the ``MDI-P`` hardware module, which would
read the identification of the external device instance from a
code-bar.

The probing of the external device should be done with the help of
procedures specific to each protocol and protocol version.


If the external device is identified then the corresponding Input
Module is activated, as well as the context rules (configuring the
normalization in the `Normalization Module`, and the context tagging
in the `Input Module`).  

Otherwise, new protocols may be searched from the central catalog
(``MDI-B``) and installed.  

If there is no way to identify the external device, a message should
be logged, and sent to some management module or console.


We must try first the last protocol used on the same interface (case
where the same device is unhooked and rehooked more or less
immediately).



Protocol Generation
------------------------------------------------------------

The code implementing the protocols shall be generated dynamically and
automatically, from a protocol definition file.

The protocol definition files are managed by the 'Catalog Management
Module'_.

The protocol definition file must be a high-level description of the
protocol.  A protocol generator module will take this description, and
generate the code specific to this protocol including:

- a probing function to check whether an external device talks this
  protocol.

- all the I/O and state machines needed to communicate with the
  external device.

- the protocol module will forward each data message in raw form to
  the input module it is embedded in.

- the protocol module must signal any change it can detect in the
  physical interface (eg. when an external device is
  unhooked). |FIXME|  That might be done rather by the Input Module
  since it's it that manages the interface.



There will  also be a library of predefined protocols, for protocols
available as libraries or already implemented.


The protocol modules either generated dynamicall or predefined, will
dynamically pluggable in external Input Modules.  The external Input
Modules are specialized to drive a given interface.  The protocol plug
ins may be specific to a given interface, or may be able to work over
various interfaces, in which case they may be used by the
corresponding Input Modules: 

- `Serial Port Input Module`_
- `USB Input Module`_
- `Ethernet Port Input Module`_
- `Analogical-Digital Input Module`_




Catalog Management Module
------------------------------------------------------------

The protocol definition files are managed by a catalog manager.  These
files are used to generate input modules dynamically.  The input
modules are kept in a cache by the catalog manager.  

New protocol definitions (and new versions of the software) are
searched and installed at boot-time.

New protocol definitions may also be searched and installed upon
hooking an unknown external device (cf `Configuration of Input Modules`_).

See also: `Software Upgrade Management`_.




Normalization Module
------------------------------------------------------------

The data coming from the input modules must be normalized (unit
conversions), and synchronized (time shifting).


Unit conversion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The external device collects and reports a measurement in a given
unit.  Various devices of different makes may collect and report the
same measure, in different but homogeneous units, eg. `km/h` vs. `m/s`.

In either case, in the given user environement (eg. a given hospital),
the users expect to see the measurements in their own units, still
homogeneous, eg. `mile/h`, `m/s` or perhaps `mm/ms`.  Notice in the
last two cases, the same numerical value would be displayed (no unit
conversion is needed), but the names of the unit are different.


.. note::

   Some units may seem dimensionnally reductible (eg. µg/kg/min sounds
   like 1e-9/min, but it's actually µg of product / kg of patient mass
   / minute, so the µg and kg are not of the same dimension.


.. note::

   The string displayed for the users may not respect the
   S.I. standard for unit (eg. `µg/Kg/min` instead of `µg/kg/min`).



For some devices, the measurement reported may not be identified per
se, but need to be labelled by the user.  Eg. the device reports
measurements from sonde #1 and sonde #2, and sonde #1 may map to one
measure, and sonde #2 maps to another measure.  The users will
configure to what measure each sonde corresponds.

Finally the users may also configure the set of measures they're
interested in, the others being dropped out (not inserted in the
database).


All these configuration elements are stored in the `MDI-DB Database`_,
and should be retrieved from it by the `Normalization Module`.


.. comment
    Unit conversions may occur depending on the model of external device.
    (Each model of external device may have it's own default normalization
    parameters).

    In addition a conversions specific to an identified external device
    may be configured.

    |FIXME| Isn't the time tagging done by the Input Module enough?  What
    more time shifting is needed?


Time Shifting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The external device may introduce some delay between collection and
report of the data.  Therefore the time tag assigned to a measure by
the `Input Modules`_ may not correspond to the actual time of
measurement.  The users may configure a time offset specific to each
device and measure, so that the data is labelled with a time
synchronized between various devices and measurements.

All This configuration element is stored in the `MDI-DB Database`_,
and should be retrieved from it by the `Normalization Module`.



Real Time Alarm Management Module
------------------------------------------------------------

The `Real Time Alarm Management Module` will receive the data flows
from the `Normalization Module`_, and will check that the data is
within configured ranges.  

When an alarm occurs, the `Real Time Alarm Management Module` will
send messages to the configured destinations, which may include:

- entries in database,
- alarm messages to the `Output Modules`,
- email messages sent to configured addresses,
- SMS messages sent thru a GSM/G3 interface,
- execution of a configured program.


An alarm may be active for a certain time.  

A configuration parameter will indicate whether a message must be sent
periodically during the alarm, and whether a message must be sent when
the alarm becomes inactive.


For a given data flow, there may be several alarms configured with
different sets of bounds. (eg. we may have alarms configured by
default for a given device, and alarms configured for a specific
patient).

For out-of-bound data alarms, configuration parameters will indicate
after what delay with the data still out of bound the alarm is
considered active, and conversely, for active to inactive transitions.

|FIXME| See degenerate cases, such as "high frequency" oscillating
signals, or flat signals.  We may need to detect alarms on bounds on
the derivate of the signals.  Flat <=> derivate < bound.



Data Stream Management Module
------------------------------------------------------------

The Data Stream Management Module will receive the data from the
`Normalization Module`_, and will dispatch it to the `Buffer Database
Module`_ and to the 'push' `Output Modules`_.  

Moreover, it case of network or other failure, the Data Stream
Management Module will resend the data that have been kept in the
Buffer Database to the 'push' Output Modules that weren't able to send
it in real-time.


|FIXME| It might be that the Output Modules better know what data they
could or could not send and what data they should send after
recovering connectivity.   So it may be the Output Module who requests
the resending specifying the time range to resend.

|FIXME| This is a design question:

    The `Data Stream Management Module` receives a data packet.  It
    forwards it to the current push output modules and it forwards it
    to the buffer database module.

    The pull output modules will always asks the buffer data module
    for the available range, and for specific ranges of data.

    Some push output modules deal only with real-time data, so in case
    of failure and recovery, will resume by sending only the new data.

    The other push output modules deal with both the real-time data,
    and but will also need to retransmit the missing data.  They will
    therefore behave as a pull module to collect the ranges of data it
    must resend.

OR:
 
    The `Data Stream Management Module` gets acknowledges of reception
    from the output modules and knows what output modules needs
    historical data, so that when it gets NAK, it can retry sending
    the backlog of data.   One advantage of letting the `Data Stream
    Management Module` manage the restransmissions is that it can more
    easily manage the priority between the output modules, and the
    priority and throttling of resent data. It can also more easily
    tag the data in the `Buffer Database Module`_ for deletion, when
    it has been successfully transmitted to all.



Buffer Database Module
------------------------------------------------------------

A database will be used to store the processed data message as they
are sent out, so that they can be resent in case of failure, or for
the benefit of the 'pull' `Output Modules`_.

The `Buffer Database Module`_ will store the processed data messages in a
persistent *local* database.

The `Buffer Database Module`_ may purge automatically processed data
messages older than a configured time.

The `Buffer Database Module`_ will use an ODBC or Gateway layer to access the
database so that any database may be configured.

Modules requiring processed data from the `Buffer Database` must go thru
the `Buffer Database Module`_ to access the data, so that the data is
sent thru the same channels as when sent normally. 
.. comment    Should we specify it or is it a design decision?


Resending data can be done in differed real-time (the data is resent
at the real frequency), or it can be resent as fast as possible (to
catch-up).  The choice will depend on the Output Module, and on the
priority and usage of the data.

The `Buffer Database Module`_ will provide monitoring
informations (statistics about the `Buffer Database`).


MDI-DB Module
------------------------------------------------------------
_`MDI-DB Database`

A database will be used to store the archived data messages, so that
they can be further processed and retreived. 

The `MDI-DB Module`_ will store the archived data in a persitent
database.  It may be a local database, or a remote database on a
dedicated database server.

The `MDI-DB Module`_ will use an ODBC or Gateway layer to access the
database so that any database may be configured.

Modules requiring processed data from the `MDI-DB` database must go thru
the `MDI-DB Module`_ to access the data, since this is the public
interface to the database.

The `MDI-DB Module`_ will provide monitoring informations (statistics
about the MDI-DB).



Output Modules
------------------------------------------------------------

There will be various output modules, of two classes:

1. Some modules will receive 'passively' the data from the configured
   internal modules, and will forward it to their configured external
   system.  These are `push` modules.

2. Other modules will listen for incoming connections from external
   systems, may possibly authenticate them, and will then upon
   request, obtain the data from the `Buffer Database Module`_ or then
   ``MDI-DB`` Module, to be transmited to the external system.  These
   are `pull` modules.



|FIXME| TBW


Web Data Output Module
------------------------------------------------------------

This module is a 'pull' modules that displays the selected data streams
on a web page. 

This module may work from the `Buffer Database Module`_ or from the
`MDI-DB Module`_.

The data streams to display may be selected by ``MDI-C`` identifier, by
external device identifier, or by context tags.

It is also possible to select the time to be displayed from (or time
range), so that we can display (in real-time, or accelerated, or
slowed down) data from a specific date and time, or the latest
available.



Webservice Data Output Module
------------------------------------------------------------

This module is a 'pull' modules that selects the data from selected
data streams and outputs it in an XML structure.

This module may work from the `Buffer Database Module`_ or from the
`MDI-DB Module`_.  It can also be used as an `Exportation Module`.

The data streams to output may be selected by ``MDI-C`` identifier, by
external device identifier, or by context tags.

It is also possible to select the time range to be output, in absolute
date, or in time relative to present.




PDMS Database Output Module
------------------------------------------------------------

This is a 'push' output module that sends the data to the |PDMS|
database, either external or the `MDI-DB Module`_.


MDI-B Output Module
------------------------------------------------------------

This is a 'push' output module that sends the data to the ``MDI-B``
thru the `MDI-C Input Module`_.


MDI-C Input Module
------------------------------------------------------------

This is an input module that receives the data from the `MDI-B Output
Module`_.



Processing Modules
------------------------------------------------------------

These modules implement specific algorithms to process the data in the
database (implementing moving averages, integrations, sums, etc).  

Processing Modules may be configured to process the new data that is
stored into the `MDI-DB Module`.

When a new Processing Module is activated, it may reprocess the
existing data, updating the database.



Exportation Modules
------------------------------------------------------------

These are Output Modules specifically designed to extract data from the
``MDI-DB Module`` and to output it in specific formats.


Dashboard Module
------------------------------------------------------------

The Dashboard output modules may access as well the `MDI-DB Module` as
the `Buffer Database Module`, to get access to historic or reprocessed
data instead of real-time data.


MDI-Grid Module
------------------------------------------------------------

The ``MDI-Grid Module`` shall automatically discover the other |MDI|
components in the network, and provide an API to report them.

The ``MDI-Grid Module`` must provide an API to find out where a given
resource is located.  A resource may be distributed over several
components.   For example, a request may ask for the data tagged with
a certain user tag (eg. Patient-ID), and the ``MDI-Grid Module`` would
return the list of `MDI-C` components where that data is stored.


.. comment
     or the  ``MDI-Grid`` module may forward their request to the right ``MDI-C``.




.. raw:: pdf

   PageBreak


Feature specifications
============================================================

|FIXME| We should filter out feature requirements here.

.. comment

    (dolist (feature (sort (mapcar (function namestring)
                                  (directory "req-*.txt"))
                          (function string<=)))
       (format t "~&.. include:: ~A~%" (namestring
    (rstpre:process-source feature))))



..  (WITH-OPEN-FILE (REQS "requirements.data" :EXTERNAL-FORMAT CHARSET:UTF-8)
     (LOOP :FOR REQ = (READ REQS NIL :EOF) :UNTIL (EQ REQ :EOF) :DO
      (DESTRUCTURING-BIND
       (&KEY ID VERSION CATEGORY PRIORITY STATE OWNER COMPLEXITY ORIGIN PARENT
        CHILDREN USE-CASES TITLE DESCRIPTION &ALLOW-OTHER-KEYS)
       REQ
       (FORMAT T
        "~@
            ~@
            Requirement ~4,'0D -- ~A~@
            ~V,,,'-A~@
            ~@
            .. _REQ-~4,'0D:~@
            ~@
            ~A
            ~@
            *Description:*~@
            ~@
            ~A~@
            ~@
            "
        ID TITLE (LENGTH (FORMAT NIL "Requirement ~4,'0D -- ~A" ID TITLE)) "" ID
        (GENERATE-TABLE 'NIL
         (LIST (LIST "ID" (FORMAT NIL "~50A" ID))
          (LIST "Title" (FORMAT NIL "~50A" TITLE))
          (LIST "Version" (FORMAT NIL "~50A" VERSION))
          (LIST "Category" (FORMAT NIL "~:[~;~:*~:@(~50A~)~]" CATEGORY))
          (LIST "Priority" (FORMAT NIL "~:[~;~:*~:@(~50A~)~]" PRIORITY))
          (LIST "State" (FORMAT NIL "~:[~;~:*~:@(~50A~)~]" STATE))
          (LIST "Complexity" (FORMAT NIL "~:[~;~:*~:@(~50A~)~]" COMPLEXITY))
          (LIST "Owner" (FORMAT NIL "~:[~;~:*~:(~50A~)~]" OWNER))
          (LIST "Origin" (FORMAT NIL "~:[~;~:*~:(~50A~)~]" ORIGIN))
          (LIST "Parent" (FORMAT NIL "~:[~;~:*~:(~50A~)~]" PARENT))
          (LIST "Use case" (FORMAT NIL "~:[~;~:*~:(~50A~)~]" USE-CASES))))
        DESCRIPTION))))



Requirement 0000 -- Standard and open platform
----------------------------------------------

.. _REQ-0000:

+------------+----------------------------------------------------+
| ID         | 0                                                  |
+------------+----------------------------------------------------+
| Title      | Standard and open platform                         |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The |MDI| system must be deployed on a standard and open platform,
that is, on a Linux system.





Requirement 1001 -- SYSTEM - Drivers for the MDI-C hardware
-----------------------------------------------------------

.. _REQ-1001:

+------------+----------------------------------------------------+
| ID         | 1001                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Drivers for the MDI-C hardware            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel configuration must include the drivers needed for the MDI-C hardware.

Complexity of this requirement is LOW, unless no Linux driver exist for some hardware,
in which case developing such a driver would be of HIGH complexity (relatively).





Requirement 1002 -- SYSTEM - Minimal Memory Use
-----------------------------------------------

.. _REQ-1002:

+------------+----------------------------------------------------+
| ID         | 1002                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Minimal Memory Use                        |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | PERFORMANCE-REQUIREMENT                            |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | PROPOSED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



To avoid wasting resources, the kernel must be configured without unneeded features.





Requirement 1003 -- SYSTEM - Multithreading Scheduler
-----------------------------------------------------

.. _REQ-1003:

+------------+----------------------------------------------------+
| ID         | 1003                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Multithreading Scheduler                  |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel scheduler must be choosen careful to match the application requirements,
in terms of real-time and multi-threading.





Requirement 1004 -- SYSTEM - Remote configuration
-------------------------------------------------

.. _REQ-1004:

+------------+----------------------------------------------------+
| ID         | 1004                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Remote configuration                      |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | FEATURE                                            |
+------------+----------------------------------------------------+
| Priority   | HIGH                                               |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The system must provide a remote administration shell (thru ssh).

Priority is high because it is a feature that will be useful for debugging.





Requirement 1005 -- SYSTEM - Monitoring of the system
-----------------------------------------------------

.. _REQ-1005:

+------------+----------------------------------------------------+
| ID         | 1005                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Monitoring of the system                  |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | FEATURE                                            |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The system must include a way to monitor its various components:

- CPU load,
- memory use,
- disk usage,
- disk status (S.M.A.R.T),
- processes,
- temperature,
- network usage,
- etc.





Requirement 1006 -- SYSTEM - PCMCIA support
-------------------------------------------

.. _REQ-1006:

+------------+----------------------------------------------------+
| ID         | 1006                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - PCMCIA support                            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The system must support PCMCIA cards, when this interface is available on the ``MDI-C``.

Notice that PCMCIA cards are removable devices, therefore the kernel
must configure the required drivers loading them dynamically.  (The
user may change a PCMCIA card on the run).

The `automatic identification of the device plugged in and
configuration of the input module` feature must extend down to the
installation and loading of the kernel module needed to drive the
PCMCIA card.

Priority is LOW, because we have a lot of serial device and ethernet
devices to implement first.





Requirement 1007 -- SYSTEM - 3G Communication Network Support
-------------------------------------------------------------

.. _REQ-1007:

+------------+----------------------------------------------------+
| ID         | 1007                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - 3G Communication Network Support          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | FEATURE                                            |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel must be configured to support 3G Wireless Communication
Network hardware and protocols.

Priority is LOW because we should make it work with TCP/IP on Ethernet
and Wifi first.





Requirement 1008 -- SYSTEM - Serial Line Support
------------------------------------------------

.. _REQ-1008:

+------------+----------------------------------------------------+
| ID         | 1008                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Serial Line Support                       |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | HIGH                                               |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel must be configured to support serial line hardware
(RS-232-C, RS-422, etc).





Requirement 1009 -- SYSTEM - Analogical/Digital Conversion
----------------------------------------------------------

.. _REQ-1009:

+------------+----------------------------------------------------+
| ID         | 1009                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Analogical/Digital Conversion             |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel must be configured to support Analogical/Digital conversion hardware.
Drivers for these hardware and SDK are required.





Requirement 1010 -- SYSTEM - USB Device Support
-----------------------------------------------

.. _REQ-1010:

+------------+----------------------------------------------------+
| ID         | 1010                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - USB Device Support                        |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel must be configured to support USB Devices.

Notice that USB cards are removable ("unpluggable") devices,
therefore  the kernel must configure the required drivers loading them
dynamically.  (The user may change a USB device on the run).

The `automatic identification of the device plugged in and
configuration of the input module` feature must extend down to the
installation and loading of the kernel module needed to drive the
USB device.





Requirement 1011 -- SYSTEM - Video Capture Support
--------------------------------------------------

.. _REQ-1011:

+------------+----------------------------------------------------+
| ID         | 1011                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Video Capture Support                     |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | PROPOSED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The kernel must be configured to support Video Capture and Digitizer Devices.





Requirement 1012 -- SYSTEM - Management of required libraries
-------------------------------------------------------------

.. _REQ-1012:

+------------+----------------------------------------------------+
| ID         | 1012                                               |
+------------+----------------------------------------------------+
| Title      | SYSTEM - Management of required libraries          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | PROPOSED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



There must be a systematic way to manage the system components,
including libraries, required by the |MDI| system.





Requirement 1037 -- Handling of failures
----------------------------------------

.. _REQ-1037:

+------------+----------------------------------------------------+
| ID         | 1037                                               |
+------------+----------------------------------------------------+
| Title      | Handling of failures                               |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | FEATURE                                            |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | PROPOSED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The |MDI| system shall handle all error cases and failures graciously.

It must be designed to catch all error cases, and to detect external
and internal failures,  and implement conservatory and recovery measures.





Requirement 2001 -- Automatic Identification of Devices
-------------------------------------------------------

.. _REQ-2001:

+------------+----------------------------------------------------+
| ID         | 2001                                               |
+------------+----------------------------------------------------+
| Title      | Automatic Identification of Devices                |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Automatic identification of the device plugged in and
configuration of the input module.





Requirement 2002 -- Collect Data from Various Devices
-----------------------------------------------------

.. _REQ-2002:

+------------+----------------------------------------------------+
| ID         | 2002                                               |
+------------+----------------------------------------------------+
| Title      | Collect Data from Various Devices                  |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Collecting data from various devices, using the device specific
protocols and medium (serial lines RS-232, RS-422; ethernet RJ-45;
analogical inputs). 





Requirement 2003 -- Store Raw Data in a Message Log
---------------------------------------------------

.. _REQ-2003:

+------------+----------------------------------------------------+
| ID         | 2003                                               |
+------------+----------------------------------------------------+
| Title      | Store Raw Data in a Message Log                    |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Storage of the raw data in a message log, for audit. 





Requirement 2004 -- Tag of the data with context information
------------------------------------------------------------

.. _REQ-2004:

+------------+----------------------------------------------------+
| ID         | 2004                                               |
+------------+----------------------------------------------------+
| Title      | Tag of the data with context information           |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Tag of the data with context information (eg. Patient-ID,
network timestamp, location, mobile device, entity (hospital,
house)).





Requirement 2005 -- Normalization of the data
---------------------------------------------

.. _REQ-2005:

+------------+----------------------------------------------------+
| ID         | 2005                                               |
+------------+----------------------------------------------------+
| Title      | Normalization of the data                          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Normalization of the data (format, scales, time synchronization).





Requirement 2006 -- Protect the captured data against network failures
----------------------------------------------------------------------

.. _REQ-2006:

+------------+----------------------------------------------------+
| ID         | 2006                                               |
+------------+----------------------------------------------------+
| Title      | Protect the captured data against network failures |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Store the data in a persistent buffer database, to protect it
against network failures.





Requirement 2007 -- Store of the data in a centralized database for exploitation
--------------------------------------------------------------------------------

.. _REQ-2007:

+------------+--------------------------------------------------------------+
| ID         | 2007                                                         |
+------------+--------------------------------------------------------------+
| Title      | Store of the data in a centralized database for exploitation |
+------------+--------------------------------------------------------------+
| Version    | 1                                                            |
+------------+--------------------------------------------------------------+
| Category   | USER-REQUIREMENT                                             |
+------------+--------------------------------------------------------------+
| Priority   | NORMAL                                                       |
+------------+--------------------------------------------------------------+
| State      | APPROVED                                                     |
+------------+--------------------------------------------------------------+
| Complexity | MEDIUM                                                       |
+------------+--------------------------------------------------------------+
| Owner      | Medicalis                                                    |
+------------+--------------------------------------------------------------+
| Origin     |                                                              |
+------------+--------------------------------------------------------------+
| Parent     |                                                              |
+------------+--------------------------------------------------------------+
| Use case   |                                                              |
+------------+--------------------------------------------------------------+

        
*Description:*



Store of the data in a centralized database for exploitation.





Requirement 2008 -- Forward of the data to external systems
-----------------------------------------------------------

.. _REQ-2008:

+------------+----------------------------------------------------+
| ID         | 2008                                               |
+------------+----------------------------------------------------+
| Title      | Forward of the data to external systems            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Forward of the data (either real-time, or from the persistent
buffer), to various external systems, including local web servers or
other processes.





Requirement 2009 -- Monitor of the system via standard protocol
---------------------------------------------------------------

.. _REQ-2009:

+------------+----------------------------------------------------+
| ID         | 2009                                               |
+------------+----------------------------------------------------+
| Title      | Monitor of the system via standard protocol        |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Monitor of the system via standard protocol (SNMP, HTML).





Requirement 2010 -- Configure the system
----------------------------------------

.. _REQ-2010:

+------------+----------------------------------------------------+
| ID         | 2010                                               |
+------------+----------------------------------------------------+
| Title      | Configure the system                               |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Configure of the system (physical configuration (components, IP
addresses, etc).





Requirement 2011 -- Configure the application
---------------------------------------------

.. _REQ-2011:

+------------+----------------------------------------------------+
| ID         | 2011                                               |
+------------+----------------------------------------------------+
| Title      | Configure the application                          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Configure the application (activation of components, dictionaries,
rule sets, etc).





Requirement 2012 -- Manage software upgrades
--------------------------------------------

.. _REQ-2012:

+------------+----------------------------------------------------+
| ID         | 2012                                               |
+------------+----------------------------------------------------+
| Title      | Manage software upgrades                           |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Manage software upgrades.





Requirement 2013 -- Real-time Alarms on Data Conditions
-------------------------------------------------------

.. _REQ-2013:

+------------+----------------------------------------------------+
| ID         | 2013                                               |
+------------+----------------------------------------------------+
| Title      | Real-time Alarms on Data Conditions                |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The data streams may be monitored for special conditions (eg. out of
range data) and signal real-time alarms.





Requirement 2014 -- Collect Device Usage and Failure Statistics
---------------------------------------------------------------

.. _REQ-2014:

+------------+----------------------------------------------------+
| ID         | 2014                                               |
+------------+----------------------------------------------------+
| Title      | Collect Device Usage and Failure Statistics        |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



Collect usage and failure statistics of the various devices
(external devices and components of the |MDI|).





Requirement 2015 -- Configuration Command Language and Shell
------------------------------------------------------------

.. _REQ-2015:

+------------+----------------------------------------------------+
| ID         | 2015                                               |
+------------+----------------------------------------------------+
| Title      | Configuration Command Language and Shell           |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2011                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



A configuration and monitoring command language will be defined and a
command shell will be provided to configure and monitor the system.
This configuration language will be used to load the initial
configuration from a configuration file.  The command shell will be
available from a terminal (local console, remote via ssh).





Requirement 2016 -- Configuration Web Service
---------------------------------------------

.. _REQ-2016:

+------------+----------------------------------------------------+
| ID         | 2016                                               |
+------------+----------------------------------------------------+
| Title      | Configuration Web Service                          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2011                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The configuration and monitoring command language will be exported as
a web service, to be used by remote configuration application (This is
a API that can be used to develop remote configuration user
interfaces, like in the ReCOM).  





Requirement 2017 -- Configuration Web Application
-------------------------------------------------

.. _REQ-2017:

+------------+----------------------------------------------------+
| ID         | 2017                                               |
+------------+----------------------------------------------------+
| Title      | Configuration Web Application                      |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2011                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



A configuration web application will present a web based configuration
interface and will communicate with the configuration module to change
the current configuration (save it to the initial configuration file),
and to monitor the status of the modules.  The users will be able to
configure the system using their web browser thru the network.





Requirement 2018 -- Configuration Thru SNMP
-------------------------------------------

.. _REQ-2018:

+------------+----------------------------------------------------+
| ID         | 2018                                               |
+------------+----------------------------------------------------+
| Title      | Configuration Thru SNMP                            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | HIGH                                               |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2011                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



A SNMP monitoring and configuration module will be provided.  The
users will be able to use standard SNMP clients to monitor and
configure the system.





Requirement 2019 -- DashBoard
-----------------------------

.. _REQ-2019:

+------------+----------------------------------------------------+
| ID         | 2019                                               |
+------------+----------------------------------------------------+
| Title      | DashBoard                                          |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | USER-REQUIREMENT                                   |
+------------+----------------------------------------------------+
| Priority   | MEDIUM                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | HIGH                                               |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2011                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The dash board component will provide  user interfaces to exploit the
data streams.

This will be a 'pull' module, that will get the data from the MDI-DB
Database module, and display it.  

.. note:: this means that in the grid configuration, 
          a `MDI-DB Module`_ must be configured in the
          ``MDI-C``, for the local data streams.





Requirement 2020 -- DashBoard Implementation Environment
--------------------------------------------------------

.. _REQ-2020:

+------------+----------------------------------------------------+
| ID         | 2020                                               |
+------------+----------------------------------------------------+
| Title      | DashBoard Implementation Environment               |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | MEDIUM                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2019                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The dash board component will be programmed in WinDev/WebDev
and will be generated as various modules including:

1. a web application module that may be configured in a ``MDI-C`` (in
   a grid configuration), or in a ``MDI-B`` (in a centralized
   configuration). 

2. various components (.Net, Java, etc) that may be integrated in
   external applications.





Requirement 2021 -- Context Information provided by the MDI-P barcode reader
----------------------------------------------------------------------------

.. _REQ-2021:

+------------+----------------------------------------------------------+
| ID         | 2021                                                     |
+------------+----------------------------------------------------------+
| Title      | Context Information provided by the MDI-P barcode reader |
+------------+----------------------------------------------------------+
| Version    | 1                                                        |
+------------+----------------------------------------------------------+
| Category   | FEATURE                                                  |
+------------+----------------------------------------------------------+
| Priority   | LOW                                                      |
+------------+----------------------------------------------------------+
| State      | APPROVED                                                 |
+------------+----------------------------------------------------------+
| Complexity | MEDIUM                                                   |
+------------+----------------------------------------------------------+
| Owner      | Medicalis                                                |
+------------+----------------------------------------------------------+
| Origin     |                                                          |
+------------+----------------------------------------------------------+
| Parent     |                                                          |
+------------+----------------------------------------------------------+
| Use case   |                                                          |
+------------+----------------------------------------------------------+

        
*Description:*



The `Input Modules`_  will have to read the context information
provided by the ``MDI-P`` barcode reader and attach it to the data
flow they process. 

.. warning::

    There will be a single ``MDI-P`` box with a single barcode reader
    connected to a ``MDI-C``, and therefore it must be identified to
    which device the barcode read is meant for.  

The proposed heuristic is that the barcodes read "just" after having
plugged in a new device correspond to it.  (Ie. expect barcodes for a
few minutes after a device is plugged-in).

Another solution would be to have a display (LEDs, or LED screen) on
the ``MDI-P``, along with a selector button, so that the `Input Modules`_ 
may send the list of devices connected, to the ``MDI-P`` and
the selector button can be used to select the device about which the
barcode is read.





Requirement 2022 -- Inter Module Communication Protocol
-------------------------------------------------------

.. _REQ-2022:

+------------+----------------------------------------------------+
| ID         | 2022                                               |
+------------+----------------------------------------------------+
| Title      | Inter Module Communication Protocol                |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | HIGH                                               |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The `IMCP` will allow the modules to communicate thru some kind of IPC.

We could use local IPC (eg. memory sharing, message queues), but
unless the performance constraints requires it, it will be preferable
to use TCP/IP sockets so that the modules may be more easily
configured and eg. distributed in a cluster.






Requirement 2023 -- OS Configured with NTP for Time Synchronization
-------------------------------------------------------------------

.. _REQ-2023:

+------------+----------------------------------------------------+
| ID         | 2023                                               |
+------------+----------------------------------------------------+
| Title      | OS Configured with NTP for Time Synchronization    |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The OS must be configured to use NTP to synchronize its clock. 

The |MDI| will get sub-second real time (wall clock) from the kernel,
to synchronize the real-time data streams.





Requirement 2024 -- OS Monitoring with SNMP
-------------------------------------------

.. _REQ-2024:

+------------+----------------------------------------------------+
| ID         | 2024                                               |
+------------+----------------------------------------------------+
| Title      | OS Monitoring with SNMP                            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2009                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The OS must be configured with SNMP to monitor its configuration
(eg. network addresses) and resource usage (disk space, memory space,
processes).





Requirement 2025 -- |MDI| System Monitoring with SNMP
-----------------------------------------------------

.. _REQ-2025:

+------------+----------------------------------------------------+
| ID         | 2025                                               |
+------------+----------------------------------------------------+
| Title      | |MDI| System Monitoring with SNMP                  |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | LOW                                                |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | HIGH                                               |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2009                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The |MDI| system must its configuration (configured modules),
and the state of the running modules (with statistics about message
frequencies, database usage) thru SNMP.





Requirement 2026 -- OS File Transfer Server
-------------------------------------------

.. _REQ-2026:

+------------+----------------------------------------------------+
| ID         | 2026                                               |
+------------+----------------------------------------------------+
| Title      | OS File Transfer Server                            |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | NORMAL                                             |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The OS must be configured with a file transfer server, to be able to
receive software updates.

Software distribution and upgrade will require the use of file
transfer protocols.  The ``MDI-C`` modules should be able to boot
either from the network, or from their internal hard disk.  When a new
version of the software (OS software, or |MDI| software) is available
(from a centralized |MDI| software upgrade server), it may be
downloaded and installed, either automatically or upon operator
intervention. 

We may consider FTP, TFTP, BOOTP, but SCP or SFTP (based on SSH) is
preferable.





Requirement 2027 -- MDI-C to MDI-B Inter Module Communication Protocol
----------------------------------------------------------------------

.. _REQ-2027:

+------------+----------------------------------------------------+
| ID         | 2027                                               |
+------------+----------------------------------------------------+
| Title      | MDI-C to MDI-B Inter Module Communication Protocol |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | HIGH                                               |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | LOW                                                |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     | 2022                                               |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*



The ``MDI-C`` to ``MDI-B`` communication protocol is to be specified.

This will be a specific client/server protocol.

It may be similar to the internal communication protocol used between
the modules on a single component, with the difference that it will
have to be able to run over TCP/IP and implement the following
security features.

Security:  it must be encrypted, to avoid eavedropping.  The
components must be authenticated (both ends) to avoid evil data
feeding and good data disclore.






Requirement 2028 -- Configuration Management
--------------------------------------------

.. _REQ-2028:

+------------+----------------------------------------------------+
| ID         | 2028                                               |
+------------+----------------------------------------------------+
| Title      | Configuration Management                           |
+------------+----------------------------------------------------+
| Version    | 1                                                  |
+------------+----------------------------------------------------+
| Category   | SOFTWARE-REQUIREMENT                               |
+------------+----------------------------------------------------+
| Priority   | HIGH                                               |
+------------+----------------------------------------------------+
| State      | APPROVED                                           |
+------------+----------------------------------------------------+
| Complexity | MEDIUM                                             |
+------------+----------------------------------------------------+
| Owner      | Medicalis                                          |
+------------+----------------------------------------------------+
| Origin     |                                                    |
+------------+----------------------------------------------------+
| Parent     |                                                    |
+------------+----------------------------------------------------+
| Use case   |                                                    |
+------------+----------------------------------------------------+

        
*Description:*












.. raw:: pdf

   PageBreak


Other Nonfunctional Requirements
############################################################

Performance requirements
============================================================

|FIXME| TBW

Safety requirements
============================================================

|FIXME| TBW

Since the purpose of the |MDI| system is to collect and forward
critical data (ie. medical data, or other industrial process
telemetric data), its safety requirement include:

- the data may not be corrupted,

- the data should not be lost,

- in  case of  failure, the  |MDI|  system must  try to  automatically
  recover (intents to reconnect in case of network failure, intents to
  probe again in case of device communication failure).


Reliability requirements
============================================================

|FIXME| TBW

The software component of the |MDI| must have as few bugs as possible,
and must be able to recover automatically from bugs.  The recovery
delay in case of failure should be as low as possible (less than 2
seconds).

It is intented to run 24/24 365/365, therefore special care must be
taken eg. with respect to memory management (avoiding memory leaks).


Security requirements
============================================================

|FIXME| TBW

The data processed may have to be protected.  Therefore it must be
possible to encrypt the data so that it's readable only by authorized
agents.

Of course, the |MDI| software should avoid being pray to evil
components so all input must be validated and controled to avoid bugs
such as buffer overflows.

Access to the |MDI| system must be subject to authentication (in
particular for the `adminitrator` role which may change the
configuration).


Software quality attributes
============================================================

|FIXME| TBW


The |MDI| system should have an automatic installation procedure.

The |MDI| system must run on various standard linux distributions.

The |MDI| system must document its dependencies.

The |MDI| system must be documented (developer documentation and user documentation).

The |MDI| system must be provided with regression tests (both at the
module level and for global configurations).



Steve Yegge's Law, Corrolary and Features:

The |MDI| system must be able to run without a need for rebooting
(apart from kernel upgrade).

The |MDI| system must be  able to be reconfigured and upgraded without
rebooting.

The |MDI| system must have a command shell.  (There is the Linux
command shell, but for configuration and monitoring, the |MDI|
software may provide its own commands or command shell. 

The |MDI| system should provide hooks to allow adding "plug-ins" or
additionnal modules.  This means that it should define internal
interfaces and provide APIs to implement these modules.

The |MDI| system should provide an extension language and a plug-in system.

The |MDI| system must provide monitoring and introspection features.





Constraints and Limitations
============================================================

|FIXME| TBW

``MDI-C``
------------------------------------------------------------

The processing and transmission of the data must be done in 'soft'
real-time, with a latency of no more than 3 seconds.  (The medical
devices may already have from 1 to 5 seconds of latency depending on
the protocol).

A ``MDI-C`` configuration may have:

- up to 4 serial ports,
- possibly one or two analogical-to-digital (multichannel) inputs,
- USB devices,
- ethernet medical devices.
- bluetooth
- as part of the `MDI-P` box, a router with:
    - HUB Ethernet 8 port,
    - Wifi
    - 3G

The maximum number of USB device sand ethernet medical devices will
have to be determined and specified, but the maximum should be on the
order of 10.


``MDI-B``
------------------------------------------------------------

A ``MDI-B`` configuration may sport a great number of ``MDI-C`` inputs
(depending on available input network bandwidth) and a great number of
output of various classes (web services, databases, http servers,
etc), for which it is also expected the limiting factor to be the
output network bandwidth.

In any case, it must be able to handle:

- at least 1024 input modules (``MDI-C`` and ethernet medical devices), 
- at least 1024 output modules of the web service or http server kind,
- at least   16 output modules of the database kind.



Hardware platforms
------------------------------------------------------------

The minimum hardware configuration, ie. ``MDI-C`` will be:

- Processor: Intel Core 2 Duo, 1.6 GHz
- RAM:         1 GB
- Hard disk: 100 GB 


The configurations for the ``MDI-B`` will be server-level, and adapted
to the specific deployment situations.



Project documentation
============================================================

|FIXME| TBW


User documentation
============================================================

|FIXME| TBW



.. raw:: pdf

   PageBreak

Other Requirements
############################################################

Appendix A: Terminology/Glossary/Definitions list
============================================================

|FIXME| TBW

.. comment
    Appendix B: To be determined
    ============================================================

    FIXME TBW



.. comment

    http://www.techwr-l.com/techwhirl/magazine/writing/softwarerequirementspecs.html
    http://en.wikiversity.org/wiki/Technical_writing_specification
    http://www.cmcrossroads.com/bradapp/docs/sdd.html


    FURPS+
    = FURPS
       Functionality               - Functional requirements
       Usability                   \
       Reliability                 |
       Performance                 |
       Supportability              |
     +                             | Non-functional requirements
       Design constraints          |
       Implementation constraints  |
       Interface constraints       |
       Physical constraints        /



.. comment
   Local Variables:
   mode: rst
   mode: auto-fill
   coding: utf-8
   End:
