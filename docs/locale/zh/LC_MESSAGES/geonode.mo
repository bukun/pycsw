��          T               �   �  �      ~     �  J   �  (  �  �     P  �  �  9     �       ;       Q  �   l	   GeoNode (http://geonode.org/) is a platform for the management and publication of geospatial data. It brings together mature and stable open-source software projects under a consistent and easy-to-use interface allowing users, with little training, to quickly and easily share data and create interactive maps. GeoNode provides a cost-effective and scalable tool for developing information management systems.  GeoNode uses CSW as a cataloguing mechanism to query and present geospatial metadata. GeoNode Configuration GeoNode Setup The GeoNode plugin is managed outside of pycsw within the GeoNode project. pycsw is enabled and configured by default in GeoNode, so there are no additional steps required once GeoNode is setup.  See the ``CATALOGUE`` and ``PYCSW`` `settings.py entries`_ at http://docs.geonode.org/en/latest/developers/reference/django-apps.html#id1 for customizing pycsw within GeoNode. pycsw supports binding to an existing GeoNode repository for metadata query.  The binding is read-only (transactions are not in scope, as GeoNode manages repository metadata changes in the application proper). Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-17 17:33+0800
PO-Revision-Date: 2018-12-04 10:30+0800
Last-Translator: 
Language: zh
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 GeoNode（http://geonode.org/）是地理空间数据管理和发布的平台。它是成熟且稳定的开源软件项目，具有一致性和易掌握性，只要稍加指导，就可以快速且轻松地分享数据，并能创建交互式地图。 GeoNode是一种工具，为开发信息管理系统提供了节约成本且可伸缩等功能。GeoNode使用的是CSW，此CSW可查询编目，还可以显示当前的地理空间元数据。  GeoNode配置 GeoNode设置 GeoNode插件不是由 GeoNode 项目中的 pycsw 管理。 在GeoNode中，pycsw 的启用和配置都是默认的，所以GeoNode的安装程序不需要额外步骤的。若想定制GeoNode-pycsw，请参见http://docs.geonode.org/en/latest/developers/reference/django-apps.html#id1中``CATALOGUE``和```PYCSW``  `settings.py entries`_ 。 pycsw绑定到现有GeoNode库，此库用于元数据查询。此绑定是只读文件（交易不在范围内，GeoNode在适当的应用程序中管理库元数据）。 