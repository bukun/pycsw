��    "      ,              <     =     M     O     Q     T     V     Y     [     ]  �   `        F        X  �   k  "   R  �   u  �   '  P   �          $     )     .     3     8     =     B     G     L     Q  
   V     a  O  r     �  S  �     	     ,	     .	     0	     3	     5	     8	     :	     <	  y   ?	     �	  T   �	     !
  �   :
  ,   &  �   S  �     J   �                                   $     )     .     3     8     =     D    Q     o   ...will return: 1 2 21 3 33 4 5 55 A default pycsw instance (with no ``repository.filters`` option) will always process CSW requests against the entire table.  So a CSW `GetRecords` filter like: Another example: Imagine a sample database table of records (subset below for brevity): Repository Filters Repository filters are a convenient way to subset your repository at the server level without the hassle of creating proper database views.  For large repositories, it may be better to subset at the database level for performance. Scenario: One Database, Many Views Suppose you wanted to deploy another pycsw instance which serves metadata from the same database, but only from a specific subset.  Here we set the ``repository.filter`` option: The ``repository.filter`` option accepts all core queryables set in the pycsw core model (see ``pycsw.config.StaticContext.md_core_model`` for the complete list). The same CSW `GetRecords` filter as per above then yields the following results: abstract bar1 bar2 bar3 bar5 bar6 foo1 foo2 foo3 foo5 foo6 identifier parentidentifier pycsw has the ability to perform server side repository / database filters as a means to mask all CSW requests to query against a specific subset of the metadata repository, thus providing the ability to deploy multiple pycsw instances pointing to the same database in different ways via the ``repository.filter`` configuration option. title Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-11-23 21:42+0800
PO-Revision-Date: 2016-06-08 15:16+0800
Last-Translator: 
Language: zh_CN
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 ...将返回： 1 2 21 3 33 4 5 55 若没有 ``repository.filters`` 选项，pycsw默认是始终处理整个表的CSW请求。CSW `GetRecords` 过滤如： 另一个例子： 想象一下，现在要记录数据库示例表（下面以子集做为简称）： 存储库中的筛选器 存储库中的筛选器是一种便捷方式，是为了创建子数据库，以免去创建适当数据库视图的服务器级别的步骤。 对于大型数据库而言，它可能比创建数据库级别的子集要更好一些。 场景 ︰ 一个数据库，很多种视角 假设你要部署其他pycsw应用实例，此实例来自同一个数据库的元数据，但它只能来自一个特定子集。在这里，我们设置了 ``repository.filter`` 选项： 该 ``repository.filter`` 选项功能是在pycsw核心模式中接收所有核心查询设置（见``pycsw.config.StaticContext.md_core_model`` 的完整列表）。 依上述所说，同一CSW `GetRecords` 过滤器将得到以下结果： 摘要 bar1 bar2 bar3 bar5 bar6 foo1 foo2 foo3 foo5 foo6 标识 母标识符 pycsw 有能力执行服务器端存储库或数据库筛选功能，以覆盖所有的CSW请求，目的是查询元数据存储库中的一个特定子集，从而需部署多个 pycsw 实例，通过 ``repository.filter`` 配置选项，以不同的方式指向同一个数据库。 标题 