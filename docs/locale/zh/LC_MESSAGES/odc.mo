��          \               �   `   �   w   �   �  v     #     C  �   [  �   @     &  J   G  w   �    
     '
     C
  �   \
  �   +   At this point, pycsw is able to read from the Open Data Catalog repository using the Django ORM. ODC settings must ensure that ``REGISTRY_PYCSW['repository']['source']`` is set to``hypermap.search.pycsw_repository``. Open Data Catalog (https://github.com/azavea/Open-Data-Catalog/) is an open data catalog based on Django, Python and PostgreSQL. It was originally developed for OpenDataPhilly.org, a portal that provides access to open data sets, applications, and APIs related to the Philadelphia region. The Open Data Catalog is a generalized version of the original source code with a simple skin. It is intended to display information and links to publicly available data in an easily searchable format. The code also includes options for data owners to submit data for consideration and for registered public users to nominate a type of data they would like to see openly available to the public. Open Data Catalog Configuration Open Data Catalog Setup Open Data Catalog provides CSW functionality using pycsw out of the box (installing ODC will also install pycsw).  Settings are defined in https://github.com/azavea/Open-Data-Catalog/blob/master/OpenDataCatalog/settings.py#L165. pycsw supports binding to an existing Open Data Catalog repository for metadata query.  The binding is read-only (transactions are not in scope, as Open Data Catalog manages repository metadata changes in the application proper). Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-12-17 17:33+0800
PO-Revision-Date: 2016-06-07 16:00+0800
Last-Translator: 
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 在这一点上，pycsw可以用Django的ORM从数据目录库中读取。 ODC settings must ensure that ``REGISTRY_PYCSW['repository']['source']`` is set to``hypermap.search.pycsw_repository``. 开放数据目录（https://github.com/azavea/open-data-catalog/）是一种基于Django，Python和PostgreSQL的。它最初为opendataphilly.org（一个门户网站）提供开放的数据集，应用程序，并其API与费城地区相关。开放数据目录是一个通用的原始版本的源代码，其皮肤也很简易。它以显示信息为主，以检索便宜为主。该代码还包括数据所有者提交的数据代码，会指定一种数据类型供注册的公共用户参考，他们很乐意为公众公开信息。 开放性数据目录配置 开放数据目录设置 开放数据目录提供了CSW功能，pycsw无需设置，开箱即用（安装ODC需安装pycsw）。设置在https://github.com/azavea/Open-Data-Catalog/blob/master/OpenDataCatalog/settings.py#L165中。 pycsw绑定到用于元数据查询的现有公开数据目录库。此绑定是只读文件（交易不在范围内，Open Data Catalog在适当的应用程序中管理元数据库） 