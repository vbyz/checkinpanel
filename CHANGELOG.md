# Changelog


## 20211011-2-182 (2021-10-11)

### Feature

* :sparkles: : 新增 SF 轻小说. [Oreo]

### Fix

* :bug: : 修复 JS 配置文件路径变量读取错误. [Oreo]

* :bug: : 修复 SF 轻小说签到判断. [Oreo]

* :bug: : fix bark push. [night-raise]

  fix type errror.

* :bug: : fix bark push. [night-raise]

  修复由于 BARK 修改为 BARK_PUSH 引起的问题。

* :bug: : fix site.py. [night-raise]

  1. 修复了 学校pt 签到匹配的正则错误。
  2. 优化了 猫站pt 签到的日志输出。

### Docs

* :memo: : 完善 README. [Oreo]

### Code Style

* :art: : 修复联通营业厅和沃邮箱. [Oreo]

* :racehorse: : 增加 EUserv 验证码识别方案. [Oreo]

* :art: : 修改 Site 键名为 SITE，同时优化代码. [Oreo]

### Other

* :heavy_plus_sign: 增加依赖文件. [Oreo]


## 20211010-2-022 (2021-10-10)

### Feature

* :sparkles: : bark 推送增加参数. [night-raise]

  1. 增加若干可选参数
  2. 当内容为空的时候不推送。

### Fix

* :bug: : 修复 bark 推送变量配置错误. [Oreo]

### Code Style

* :zap: : 调整推送. [Oreo]

  1. 推送方式增加：iGot
  2. 推送变量修改：BARK -> BARK_PUSH 等
  3. 推送变量增加：+PUSH_PLUS_USER 等

### Other

* :page_facing_up: add MIT License. [Oreo]


## 20211008-2-010 (2021-10-07)

### Fix

* :bug: : 修复 bili 银币兑换错误. [Oreo]


## 20211006-2-100 (2021-10-06)

### Feature

* :sparkles: : 新增 smzdm 任务版 JS. [Oreo]


## 20211005-2-021 (2021-10-04)

### Feature

* :sparkles: : 新增通知方式：企业微信机器人. [Oreo]

  1. 新增
  2. 调整顺序及注释等

### Fix

* :bug: : 修复企业微信机器人通知环境变量读取问题. [Oreo]


## 20211003-2-001 (2021-10-03)

### Docs

* :memo: : 调整注释和排版. [Oreo]


## 20210928-2-020 (2021-09-28)

### Fix

* :fire: : rm kjwj. [Oreo]

### Code Style

* :art: : v2ex 代码结构. [night-raise]

  修复了 v2ex 结构，增加了 v2ex ck 获取的说明。


## 20210926-2-001 (2021-09-26)

### Fix

* :wrench: : add euserv config. [Oreo]

  EUserv 在未开启登录验证时有效


## 20210924-2-111 (2021-09-24)

### Feature

* :sparkles: : add site.py. [Oreo]

### Fix

* :bug: : fix ck_site. [night-raise]

  1. 优化了日志输出。
  2. 对于 session ，禁止了复用。

* :wrench: : fix heytap config. [Oreo]


## 20210923-2-210 (2021-09-23)

### Feature

* :sparkles: : add euserv.py & install dependencies cd. [Oreo]

  The script is temporarily disabled and will be fixed later.

* :tada: : init. [Oreo]

### Fix

* :bug: : fix api_ran_time. [night-raise]

  修复随机事件会随机自己的bug。

### Docs

* :speaker: : 增加关于项目历史变动的说明。 [night-raise]


