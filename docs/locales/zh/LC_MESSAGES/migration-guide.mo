��          T               �   $   �   j   �   �        �     	  2    M  R  $   �  j   �  �   0            2  2   See :ref:`api` for more information. This page provides migration support across pycsw versions over time to help with pycsw change management. ``pycsw.server.Csw.dispatch_wsgi()`` previously returned the response content as a string.  2.0.0 introduces a compatability break to additionally return the HTTP status code along with the response as a list pycsw 1.x to 2.0 Migration pycsw Migration Guide the default CSW version is now 3.0.0.  CSW clients need to explicitly specify ``version=2.0.2`` for CSW 2 behaviour.  Also, pycsw administrators can use a WSGI wrapper to the pycsw API to force ``version=2.0.2`` on init of ``pycsw.server.Csw`` from the server.  See :ref:`csw-support` for more information. Project-Id-Version: pycsw 2.1-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-12-05 21:56+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 See :ref:`api` for more information. This page provides migration support across pycsw versions over time to help with pycsw change management. ``pycsw.server.Csw.dispatch_wsgi()`` previously returned the response content as a string.  2.0.0 introduces a compatability break to additionally return the HTTP status code along with the response as a list pycsw 1.x to 2.0 Migration pycsw Migration Guide the default CSW version is now 3.0.0.  CSW clients need to explicitly specify ``version=2.0.2`` for CSW 2 behaviour.  Also, pycsw administrators can use a WSGI wrapper to the pycsw API to force ``version=2.0.2`` on init of ``pycsw.server.Csw`` from the server.  See :ref:`csw-support` for more information. 