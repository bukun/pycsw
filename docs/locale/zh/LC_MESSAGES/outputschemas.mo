��          �               �   e   �   R   S  N   �     �          �     �     �     �  d   �  U   .  �   �  S  c  V   �  P     O   _     �  �   �     N     a     h     o  Q   v  O   �  �      Add the name of the file to ``__init__.py:__all__``.  The new outputschema is now supported in pycsw. All outputschemas must be placed in the ``pycsw/plugins/outputschemas`` directory. Create a file in ``pycsw/plugins/outputschemas``, which defines the following: Implementing a new outputschema New outputschemas must add examples to the :ref:`tests` interface, which must provide example requests specific to the profile. Output Schema Plugins Overview Requirements Testing ``XPATH_MAPPINGS``: dict of pycsw core queryables mapped to the equivalent XPath of the outputschema ``write_record``: function which returns a record as an ``lxml.etree.Element`` object pycsw allows for extending the implementation of output schemas to the core standard.  outputschemas allow for a client to request metadata in a specific format (ISO, Dublin Core, FGDC, NASA DIF Atom and GM03 are default). Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-12-05 20:36+0800
PO-Revision-Date: 2016-06-08 13:51+0800
Last-Translator: 
Language: zh_CN
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 将文件名添加到 ``__init__.py:__all__`` 。 新的输出架构就在 pycsw中。 所有输出架构必须都放在 `pycsw/plugins/outputschemas` ） 目录中。 创建文件 ``pycsw/plugins/outputschemas`` ，其中定义了以下内容 ︰ 实施新的输出架构 新的输出架构必须添加到示例: :ref:`tests` 接口，此 '测试' 接口须提供特定于该配置文件的示例请求。 输出模式插件 视图 要求 测试  ``XPATH_MAPPINGS`` : pycsw 核心查询目录映射到输出空间的等效XPath ``write_record`` : 返回记录为 ``lxml.etree.Element`` 对象记录的功能 pycsw 使输出架构达到核心标准。输出架构允许客户端请求特定格式的元数据 （ISO, Dublin Core, FGDC, NASA DIF Atom、GM03是默认设置）。 