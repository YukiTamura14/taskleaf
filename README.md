# taskleaf
|users||
|---|---|
|name|string|
|email|string|
|password_digest|string|

|tasks||
|---|---|
|user_id|integer|
|title|string|
|content|string|
|status|integer|
|priority|integer|
|deadline|datetime|

|labels||
|---|---|
|name|string|

|task_labels||
|---|---|
|task_id|integer|
|label_id|integer|
