Traceback (most recent call last):
  File "/data/data/com.termux/files/home/File-Sharing-Bot/main.py", line 3, in <module>
    Bot().run()
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pyrogram/methods/utilities/run.py", line 80, in run
    run(self.start())
  File "/data/data/com.termux/files/usr/lib/python3.12/asyncio/base_events.py", line 686, in run_until_complete
    return future.result()
           ^^^^^^^^^^^^^^^
  File "/data/data/com.termux/files/home/File-Sharing-Bot/bot.py", line 39, in start
    await super().start()
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pyrogram/methods/utilities/start.py", line 74, in start
    await self.initialize()
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pyrogram/methods/auth/initialize.py", line 46, in initialize
    self.load_plugins()
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pyrogram/client.py", line 689, in load_plugins
    module = import_module(module_path)
             ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/data/data/com.termux/files/usr/lib/python3.12/importlib/__init__.py", line 90, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1387, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1360, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1331, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 935, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 999, in exec_module
  File "<frozen importlib._bootstrap>", line 488, in _call_with_frames_removed
  File "/data/data/com.termux/files/home/File-Sharing-Bot/plugins/start.py", line 13, in <module>
    from database.database import add_user, del_user, full_userbase, present_user
  File "/data/data/com.termux/files/home/File-Sharing-Bot/database/database.py", line 6, in <module>
    dbclient = pymongo.MongoClient(DB_URI)
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pymongo/synchronous/mongo_client.py", line 797, in __init__
    seeds.update(uri_parser.split_hosts(entity, port))
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/data/data/com.termux/files/usr/lib/python3.12/site-packages/pymongo/uri_parser.py", line 392, in split_hosts
    raise ConfigurationError("Empty host (or extra comma in host list).")
pymongo.errors.ConfigurationError: Empty host (or extra comma in host list).
~/File-Sharing-Bot $
