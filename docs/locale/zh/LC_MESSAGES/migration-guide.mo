��          T               �   $   �   j   �   �        �     	  2    S  R  -   �  3   �  �        �     �  (  �   See :ref:`api` for more information. This page provides migration support across pycsw versions over time to help with pycsw change management. ``pycsw.server.Csw.dispatch_wsgi()`` previously returned the response content as a string.  2.0.0 introduces a compatability break to additionally return the HTTP status code along with the response as a list pycsw 1.x to 2.0 Migration pycsw Migration Guide the default CSW version is now 3.0.0.  CSW clients need to explicitly specify ``version=2.0.2`` for CSW 2 behaviour.  Also, pycsw administrators can use a WSGI wrapper to the pycsw API to force ``version=2.0.2`` on init of ``pycsw.server.Csw`` from the server.  See :ref:`csw-support` for more information. Project-Id-Version: pycsw 2.1-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-21 21:02+0800
PO-Revision-Date: 2018-12-05 10:31+0800
Last-Translator: 
Language: zh_CN
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 查看 :ref:`api` 来获取更多的信息。 这个页面提供了pycsw跨版本管理的支持. ``pycsw.server.Csw.dispatch_wsgi()`` 以前将响应内容作为字符串返回。2.0.0引入了兼容性中断，以附加地将HTTP状态代码和响应作为列表返回 pycsw 1.x到2.0的迁移 pycsw迁移向导 缺省的CSW版本是 3.0.0。 CSW 客户端需要显式地声明 ```version=2.0.2`` 来使用 CSW 2的行为。另外，pycsw管理器可能通过在服务器端通过 ``pycsw.server.Csw`` 初始化来使用强制的 pycsw ``version=2.0.2``。 查看 :ref:`csw-support` 来获取更多的信息. 