��    Q      �              ,  7   -  b   e  U   �  }        �  �   �  f   �  \     �   _  2   	  >   :	  L   y	  d   �	    +
  B   .  $   q  C   �     �     �  �  �     �  �  �      u  q   �  �     q   �  �   �  �   �     v  @   �     �  H   �  C     8   a  k  �  &        -     ;     X  i   k     �     �       E        Y      a  �   �  �   ?  Q     r   d  �   �  #   �  ,   �  �  �  T   u  �   �  �   �  @   F  @   �  �  �     Q  "   j  
   �  @   �  >   �  ~      T   �      �   c   �   �   \!  �   /"  )   �"     #  i   *#  W   �#  s   �#  g   `$  b   �$     +%  (   H%  P  q%  7   �&  I   �&  C   D'  k   �'     �'  �   (  d   �(  Y   0)  �   �)  0   *  =   J*  M   �*  f   �*  �   =+  4   ,  (   I,  O   r,     �,  	   �,  N  �,     (.  �  ;.     �/  g   �/  ~   @0  i   �0  �   )1  �   �1     t2  >   �2  	   �2  8   �2  >   
3  3   I3  !  }3  !   �4     �4     �4     �4  v   �4     t5     �5     �5  E   �5     �5     �5  �   6  �   �6  J   u7  c   �7  �   $8  "   �8  +   �8  Y  9  Q   y:  �   �:  �   �;  B   <  =   _<  M  �<     �=  !   >     )>  A   6>  4   x>  a   �>  E   ?  	   U?  N   _?  �   �?  �   |@  %   A     1A  |   PA  Y   �A  k   'B  Q   �B  P   �B     6C  (   VC   <test_function>[<suite_name>_<http_method>_<test_name>] A mandatory ``default.cfg`` file with the pycsw configuration that must be used by the test suite; A mandatory ``expected/`` directory containing the expected results for each request; A number of different test suites exist under ``tests/functionaltests/suites``. Each suite specifies the following structure: Adding New Tests An optional ``data/`` directory that contains ``.xml`` files with testing data that is to be loaded into the suite's database before running the tests. The presence of this directory and its contents have the following meaning for tests: An optional ``get/requests.txt`` file that holds request parameters used for making HTTP GET requests. An optional ``post/`` directory that holds ``.xml`` files used for making HTTP POST requests Compare the results of each request against a previously prepared expected result. If the test result matches the expected outcome the test passes, otherwise it fails. Comparing results with difflib instead of XML c14n Create a new configuration in ``tests/suites/foo/default.cfg`` Create a new directory under ``tests/functionaltests/suites`` (e.g. ``foo``) Create a new pycsw instance with a custom configuration and data repository for each suite of tests; Currently most of pycsw's tests are `functional tests`_. This means that each test case is based on the requirements mandated by the specifications of the various standards that pycsw implements. These tests focus on making sure that pycsw works as expected. Each line in the file must be formatted with the following scheme: Each test follows the same workflow: Each test has an identifier that is built using the following rule: Exiting fast For example: For testing multiple Python versions and configurations simultaneously you can use `tox`_. pycsw includes a `tox.ini` file with a suitable configuration. It can be used to run tests against multiple Python versions and also multiple database backends. When running `tox` you can send arguments to the `py.test` runner by using the invocation `tox <tox arguments> -- <py.test arguments>`. Examples: Functional test suites Functional tests are generated for each suite directory present under `tests/functionaltests/suites`. Test generation uses pytest's `pytest_generate_tests`_ function. This function is implemented in `tests/functionaltests/conftest.py`. It provides an automatic parametrization of the `tests/functionaltests/test_suites_functional:test_suites` function. This parametrization causes the generation of a test for each of the GET and POST requests defined in a suite's directory. Functional tests' implementation If ``data/`` directory is absent, the suite will use a database populated with test data from the ``CITE`` suite. If ``data/`` directory is present and contains files, they will be loaded into a new database for running the tests of the suite; If ``data/`` directory is present and does not contain any data files, a new empty database is used in the tests; If the test suite requires test data, create ``tests/suites/foo/data`` and store XML files there. These will be inserted in the test catalogue at test runtime In addition to pycsw's own tests, all public releases are also tested via the OGC `Compliance & Interoperability Testing & Evaluation Initiative`_ (CITE). The pycsw `wiki`_ documents CITE testing procedures and status. Linting with flake8 Markers can be specified by using the ``-m <marker_name>`` flag. OGC CITE Perform a series of GET and POST requests to the running pycsw instance; Populate HTTP GET requests in ``tests/suites/foo/get/requests.txt`` Populate HTTP POST requests in ``tests/suites/foo/post`` Pycsw uses `pytest`_ for managing its automated tests. There are a number of test suites that perform mostly functional testing. These tests ensure that pycsw is compliant with the various supported standards. There is also a growing set of unit tests. These focus on smaller scope testing, in order to verify that individual bits of code are working as expected. Running specific suites and test cases Running tests Saving test results for disk Seeing more output Since pycsw uses `pytest`_, tests are run with the ``py.test`` runner. A basic test run can be made with: Specifying a timeout for tests Test coverage Test identifiers TestGetCapabilities,service=CSW&version=2.0.2&request=GetCapabilities Testing Testing multiple Python versions Tests can be run locally as part of the development cycle. They are also run on pycsw's `Travis`_ continuous integration server against all pushes and pull requests to the code repository. The `--timeout <seconds>` option can be used to specify that if a test takes more than `<seconds>` to run it is considered to have failed. Seconds can be a float, so it is possibe to specify sub-second timeouts The ``--capture=no`` flag - Messages sent to stdout by a test are not suppressed; The ``--exitfirst`` (or ``-x``) flag can be used to stop the test runner immediately as soon as a test case fails. The ``--pycsw-loglevel`` flag - Sets the log level of the pycsw instance under test. Set this value to ``debug`` in order to see all debug messages sent by pycsw while processing a request. The ``--verbose`` (or ``-v``) flag; The ``-m`` and ``-k`` flags can be combined. The functional tests compare results with their expected values by using [XML canonicalisation - XML c14n](https://www.w3.org/TR/xml-c14n/). Alternatively, you can call py.test with the ``--functional-prefer-diffs`` flag. This will enable comparison based on Python's ``difflib``. Comparison is made on a line-by-line basis and in case of failure, a unified diff will be printed to standard output. The new test suite database will be created automatically and used as part of tests. The result of each functional test can be saved to disk by using the ``--functional-save-results-directory`` option. Each result file is named after the test identifier it has when running with pytest. The usual implementation of unit tests is to import the function/method under test, run it with a set of known arguments and assert that the result matches the expected outcome. Then navigate to ``http://host/path/to/pycsw/tests/index.html``. There are three main ways to get more output from running tests: This command will run all tests and report on the number of successes, failures and also the time it took to run them. The `py.test` command accepts several additional parameters that can be used in order to customize the execution of tests. Look into `pytest's invocation documentation`_ for a more complete description. You can also get a description of the available parameters by running: To add a new test suite: To add tests to an existing suite: Unit tests Unit tests are defined in `pycsw/tests/unittests/<module_name>`. Use pytest or tox as described above in order to run the tests Use the `--cov pycsw` flag in order to see information on code coverage. It is possible to get output in a variety of formats. Use the `--flake8` flag to also check if the code complies with Python's style guide Web Testing When tests are run, the *test_id* is used for naming each test and for finding the expected result. You can also use the ``-k <name_expression>`` flag to select which tests to run. Since each test's name includes the suite name, http method and an identifier for the test, it is easy to run only certain tests. You can also use the pycsw tests via your web browser to perform sample requests against your pycsw install.  The tests are is located in ``tests/``.  To generate the HTML page: ``functional``- run onyl functional tests ``unit`` - run only inut tests for HTTP GET tests, add tests (one per line) to ``tests/functionaltests/suites/<suite>/get/requests.txt`` for HTTP POST tests, add XML documents to ``tests/functionaltests/suites/<suite>/post`` py.test allows tagging tests with markers. These can be used to selectively run some tests. pycsw uses two markers: pycsw also features unit tests. These deal with testing the expected behaviour of individual functions. pycsw's unit tests are marked with the `unit` marker. This makes it easy to run them in isolation: test_id,request_query_string test_suites[default_post_GetRecords-end] Project-Id-Version: pycsw 2.0-dev
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-12-03 22:09+0800
PO-Revision-Date: 2018-12-05 11:33+0800
Last-Translator: 
Language: zh
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 <test_function>[<suite_name>_<http_method>_<test_name>] 必须由测试套件使用的具有pycsw配置的强制``default.cfg``;  包含每个请求的预期结果的强制性 ``expected/`` 目录; 在 ``tests/functionaltests/suites`` 下存在许多不同的测试套件。每个套件指定以下结构: 添加新测试 一个可选的 ``data/`` 目录，包含``.xml`` 文件，其中包含要在运行测试之前加载到套件数据库中的测试数据。该目录及其内容的存在对测试具有以下意义: 一个可选的 ``get/requests.txt`` 文件，其中保存用于生成HTTP GET请求的请求参数. 一个可选的``post/`` 目录，它包含用于制作HTTP POST请求的 ``.xml`` 文件 将每个请求的结果与预先准备的预期结果进行比较。如果测试结果与预期结果一致，则测试通过，否则失败. 将结果与difflib而不是XML c14n进行比较 在 ``tests/suites/foo/default.cfg`` 创建一个新的配置 在 ``tests/functionaltests/suites`` （如 ``foo`` )下创建一个新目录 为每个测试套件创建一个新的pycsw实例，该实例具有自定义配置和数据存储库; 目前大多数pycsw的测试都是 `functional tests`_。这意味着每个测试用例都基于pycsw实现的各种标准的规范所规定的需求。这些测试的重点是确保 pycsw按预期的那样工作. 文件中的每一行必须用以下方案格式化: 每个测试遵循相同的工作流程: 每个测试都有一个标识符，该标识符是使用以下规则构建的: 快速退出 例如： 为了同时测试多个Python版本和配置，可以使用 `tox`_. pycsw包含一个具有适当配置的 `tox.ini` 文件它可以用于对多个Python版本和多个数据库后端进行测试。在运行 `tox` 时，可以通过调用`tox <tox arguments> -- <py.test arguments>` 向 `py.test` 运行程序发送参数。实例： 功能测试套件 对 `tests/functionaltests/suites` 下出现的每个套件目录生成功能测试。测试生成使用pytest's `pytest_generate_tests`_ 功能。这个功能在 `tests/functionaltests/conftest.py` 中实现。它提供了 `tests/functionaltests/test_suites_functional:test_suites` 功能的自动参数化。此参数化导致为套件目录中定义的每个GET和POST请求生成测试. 功能测试的实现 如果 ``data/`` 目录不存在，套件将使用填充有 ``CITE`` 套件的测试数据的数据库. 如果 ``data/`` 目录存在并且包含文件，它们将被加载到一个新的数据库中，用于运行套件的测试; 如果存在 ``data/`` 目录并且不包含任何数据文件，则在测试中使用新的空数据库; 如果需要测试组件的测试数据，创建 ``tests/suites/foo/data``，以存储XML文件。这会在运行时插入到测试目录 除了pycsw自己的测试，所有的公共版本也通过OGC的 `遵从性和互操作性测试与评估计划`_ (CITE)进行测试。pycsw `wiki`_ 文档CITE 引用了测试过程和状态. Linting with flake8 标记可以通过使用 ``-m <marker_name>`` 标志来指定. OGC引用 对运行的pycsw 实例执行一系列GET和POST请求; 在 ``tests/suites/foo/get/requests.txt`` 填写HTTP GET请求 在 ``tests/suites/foo/post`` 填写HTTP POST请求 Pycsw使用 `pytest`_ 管理它的自动化测试。有许多测试套件主要执行功能测试。这些测试确保pycsw符合各种受支持的标准。还有一组不断增长的单元测试。这些测试集中在较小的范围内，以便验证各个代码位是否按预期工作. 运行特定套件和测试用例 运行测试 节省磁盘测试结果 看到更多的输出 由于pycsw使用 `pytest`_，所以测试是用 ``py.test`` runner运行的。一个基本的测试运行可以用： 指定测试超时 测试覆盖率 测试标识符 TestGetCapabilities,service=CSW&version=2.0.2&request=GetCapabilities 测试 测试多个Python版本 测试可以作为开发周期的一部分在本地运行。它们还运行在pycsw的 `Travis`_ continuous integration服务器上，用于处理所有对代码存储库的推拉请求. `--timeout <seconds>` 选项可用于指定如果测试运行时间超过 `<seconds>`，则认为它已经失败。秒可以是一个浮点，所以可以指定次秒超时 测试发送到stdout的 ``--capture=no``  flag - Messages不会被抑制; ``--exitfirst`` (or ``-x`` ) 标志可用于在测试用例失败时立即停止测试运行程序. ``--pycsw-loglevel`` 标志 - 设置被测试的pycsw实例的日志级别。将此值设置为``debug`` ，以便查看pycsw在处理请求时发送的所有调试消息. ``--verbose`` (or ``-v`` ) 标志; ``-m`` and ``-k`` 标志可以组合起来. 功能测试使用 [XML canonicalisation - XML c14n](https://www.w3.org/TR/xml-c14n/)将结果与期望值进行比较。或者，也可以调用py, 使用 ``--functional-prefer-diffs`` 标志进行测试。这将支持基于 Python's ``difflib`` 的比较。在逐行比较的基础上，如果失败,将把统一的差异打印到标准输出. 新的测试套件数据库将自动创建，并且会成为测试的一部分。 通过使用 ``--functional-save-results-directory`` 选项，可以将每个功能测试的结果保存到磁盘上。每个结果文件都是根据使用pytest运行时的测试标识符命名的. 单元测试的通常实现是导入被测试的功能/方法，用一组已知的参数运行它，并断言结果与预期结果匹配. 然后导航到 ``http://host/path/to/pycsw/tests/index.html`` 。 从运行测试中获得更多输出的主要方法有三种: 这个命令将运行所有测试，并报告成功、失败次数以及运行它们所花费的时间。 `py.test` 命令接受几个额外的参数，这些参数可用于自定义测试的执行。查看 `pytest's invocation documentation`_，以获得更完整的描述。您还可以通过运行来获得可用参数的描述： 添加新的测试套件： 在现有套件中添加测试： 单元测试 Unit tests are defined in  `pycsw/tests/unittests/<module_name>`. 使用如上所述的pytest或者 tox来运行测试 使用 `--cov pycsw` 标志来查看代码覆盖率的信息。可以以各种格式获得输出. 使用 `--flake8` 标志也检查代码是否符合Python风格指南 Web测试 当测试运行时， *test_id* 用于命名每个测试并寻找预期结果. 您还可以使用 ``-k <name_expression>`` 标志来选择要运行哪些测试。由于每个测试的名称都包含套件名称、http方法和测试的标识符，因此仅运行某些测试很容易. 您还可以通过Web浏览器使用pycsw测试，来执行你的pycsw安装样例申请。这些测试在``tests/`` 中。生成HTML页面： ``functional``- 只运行功能测试 ``unit`` - 只运行inut测试 对于HTTP GET测试，在 ``tests/functionaltests/suites/<suite>/get/requests.txt`` 中添加测试（每行的第一项） 对于HTTP POST测试，在 ``tests/functionaltests/suites/<suite>/post`` 添加XML文档 py.test允许标记测试。这些可以用来选择性地运行一些测试。 pycsw 使用两个标记： pycsw还具有单元测试。这些用于处理测试单个功能的预期行为. pycsw的单元测试用 `unit` 来标记。这使得它们很容易单独运行: test_id,request_query_字符串 test_suites[default_post_GetRecords-end] 