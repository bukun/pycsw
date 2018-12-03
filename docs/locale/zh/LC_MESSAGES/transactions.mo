��    5      �              l  <   m  ;   �  h   �  U   O     �     �  s   �  �   *  a   �  �   $     �     �  
   �  	   �     �  	   �     �     �               (     6     P     d     s     �     �  0   �     �  �   �     �  �   �  W  A	  O   �
     �
  &   �
  $     $   <  (   a  (   �  "   �  "   �     �          7  #   V  $   z     �  "  �  ]   �  �  2             /   %  3   U  `   �  5   �           ,  c   1  �   �  D   +  h   p     �     �     �  	   �     �     �               '     5     C     Q     k          �  	   �     �  8   �     �  �   �     }  �   �  +    :   @     {  &   �  $   �  $   �  (   �  (     "   E  "   h     �     �     �  #   �  $        1  �   C  b   -  �  �     F   **Delete**: deletes can be made against a ``csw:Constraint`` **Insert**: full XML documents can be inserted as per CSW-T **Update**: updates can be made as full record updates or record properties against a ``csw:Constraint`` Additional metadata models are supported by enabling the appropriate :ref:`profiles`. Dublin Core FGDC For CSW-T deployments, it is strongly advised that this directory reside in an area that is not accessible by HTTP. For ``csw:ResponseHandler`` values using the ``mailto:`` protocol, you must have ``server.smtp_host`` set in your :ref:`configuration <configuration>`. For transactions and harvesting, pycsw supports the following metadata resource types by default: For transactions to be functional when using SQLite3, the SQLite3 database file (**and its parent directory**) must be fully writable.  For example: GM03 Harvest Harvesting ISO 19139 ISO GMI Namespace OGC Web Services OGC:CSW 2.0.2 OGC:SOS 1.0.0 OGC:SOS 2.0.0 OGC:WCS 1.0.0 OGC:WFS 1.0.0/1.1.0/2.0.0 OGC:WMS 1.1.1/1.3.0 OGC:WMTS 1.0.0 OGC:WPS 1.0.0 Resource Type Supported Resource Types The :ref:`tests` contain CSW-T request examples. Transaction Transaction operation results can be sent by email (via ``mailto:``) or ftp (via ``ftp://``) if the Transaction request specifies ``csw:ResponseHandler``. Transactions When harvesting OGC web services, requests can provide the base URL of the service as part of the Harvest request.  pycsw will construct a ``GetCapabilities`` request dynamically. When harvesting other CSW servers, pycsw pages through the entire CSW in default increments of 10.  This value can be modified via the ``manager.csw_harvest_pagesize`` :ref:`configuration <configuration>` option.  It is strongly advised to use the ``csw:ResponseHandler`` parameter for harvesting large CSW catalogues to prevent HTTP timeouts. Your server must be able to make outgoing HTTP requests for this functionality. `WAF`_ ``http://www.interlis.ch/INTERLIS2.3`` ``http://www.isotc211.org/2005/gmd`` ``http://www.isotc211.org/2005/gmi`` ``http://www.opengis.net/cat/csw/2.0.2`` ``http://www.opengis.net/cat/csw/csdgm`` ``http://www.opengis.net/sos/1.0`` ``http://www.opengis.net/sos/2.0`` ``http://www.opengis.net/wcs`` ``http://www.opengis.net/wfs`` ``http://www.opengis.net/wms`` ``http://www.opengis.net/wmts/1.0`` ``http://www.opengis.net/wps/1.0.0`` ``urn:geoss:urn`` pycsw has the ability to process CSW Harvest and Transaction requests (CSW-T).  Transactions are disabled by default; to enable, ``manager.transactions`` must be set to ``true``.  Access to transactional functionality is limited to IP addresses which must be set in ``manager.allowed_ips``. pycsw supports 3 modes of the ``Transaction`` operation (``Insert``, ``Update``, ``Delete``): pycsw supports the CSW-T ``Harvest`` operation.  Records which are harvested require to setup a cronjob to periodically refresh records in the local repository.  A sample cronjob is available in ``etc/harvest-all.cron`` which points to ``pycsw-admin.py`` (you must specify the correct path to your configuration).  Harvest operation results can be sent by email (via ``mailto:``) or ftp (via ``ftp://``) if the Harvest request specifies ``csw:ResponseHandler``. yes Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-17 17:33+0800
PO-Revision-Date: 2016-06-08 16:20+0800
Last-Translator: 
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 删除：针对``CSW：Constraint``进行删除 **Insert**：完整的XML文档可以用CSW-T插入 **Update**：针对``CSW：Constraint``，可做到完整记录的更新与记录属性的更新 其它元数据模型，请参考 :ref:`profiles` 。 Dublin Core FGDC 对于CSW-T部署，强烈建议在此目录驻留一定区域，此区域是HTTP访问不到的。 对于使用 ``mailto:`` 协议的 ``csw:ResponseHandler`` 值，你必须在你的 :ref:`configuration <configuration>` 设定 ``server.smtp_host``  对于交易和获限，pycsw默认支持以下元数据源类型： 当使用sqlite3时，sqlite3的数据库文件（及其母目录）一定得完整可写的。例如： GM03 获取 获取 ISO 19139 ISO GMI 空间名称 OGC Web服务 OGC:CSW 2.0.2 OGC:SOS 1.0.0 OGC:SOS 2.0.0 OGC:WCS 1.0.0 OGC:WFS 1.0.0/1.1.0/2.0.0 OGC:WMS 1.1.1/1.3.0 OGC:WMTS 1.0.0 OGC:WPS 1.0.0 源类型 支持的源类型 参考： :ref:`tests` ，包含有CSW-T 请求示例。 订单 若交易请求指定于``csw:ResponseHandler``，可通过email ( ``mailto:``) 或ftp（``FTP：//``）发送交易操作的结果 订单 当获取OGC Web服务时，可以请求提供服务的基本URL作为获取的一部分。 pycsw将动态地创建``GetCapabilities``请求。 当获取其它CSW服务器时，pycsw页面就默认在10这个值上。可以在 ``manager.csw_harvest_pagesize`` 程序中将此值修改，请参照 :ref:`configuration <configuration>` 选项。强烈建议使用 ``CSW：ResponseHandler`` 参数为收获大的CSW目录，以防止HTTP超时。 你的服务器必须能够使此功能传出HTTP请求。 `WAF`_ ``http://www.interlis.ch/INTERLIS2.3`` ``http://www.isotc211.org/2005/gmd`` ``http://www.isotc211.org/2005/gmi`` ``http://www.opengis.net/cat/csw/2.0.2`` ``http://www.opengis.net/cat/csw/csdgm`` ``http://www.opengis.net/sos/1.0`` ``http://www.opengis.net/sos/2.0`` ``http://www.opengis.net/wcs`` ``http://www.opengis.net/wfs`` ``http://www.opengis.net/wms`` ``http://www.opengis.net/wmts/1.0`` ``http://www.opengis.net/wps/1.0.0`` ``urn:geoss:urn`` pycsw可获取CSW和交易请求（CSW-T）。交易在默认情况下是禁用的；``manager.transactions``必须设置为值``是``。进入交易后，功能仅可以设置IP地址，IP地址必须在``manager.allowed_ips``中。 pycsw支持 ``Transaction`` 操作（ ``Insert`` ， ``Update`` ， ``Delete`` ）的3种模式： pycsw支持CSW-T ``Harvest`` 操作。获取的记录需要设置一个cronjob来定期刷新本地数据库记录。在 ``etc/harvest-all.cron`` 中，样本cronjob是可以利用到的，此样本cronjob指向 ``pycsw-admin.py`` （必须指定一个配置的正确路径）。如果获取请求指定为 ``CSW：ResponseHandler`` ，其获取的结果会由电子邮件（通过 ``mailto`` ）或是ftp（通过``FTP://`` ）发送， 是 