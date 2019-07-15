.class public Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;
.super Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;
.source "DefaultAlarmHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "memolog-AlarmHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/AbstractMemoHandler;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private isValidIntent(Lnluparser/scheme/AlarmIntent;)Z
    .locals 4
    .param p1, "intent"    # Lnluparser/scheme/AlarmIntent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 83
    const-string v2, "MONTH"

    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "YEAR"

    .line 84
    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "cn.yunzhisheng.alarm"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "intent"    # Lnluparser/scheme/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid",
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 43
    move-object v0, p1

    check-cast v0, Lnluparser/scheme/AlarmIntent;

    .line 44
    .local v0, "alarmIntent":Lnluparser/scheme/AlarmIntent;
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 45
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->checkMemoCount(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/unisound/vui/handler/session/memo/R$string;->tts_alarm_count_max:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    :goto_0
    return-object v4

    .line 49
    :cond_0
    const-string v4, "countDown"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->checkMemoCount(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/unisound/vui/handler/session/memo/R$string;->tts_count_down_count_max:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->isValidIntent(Lnluparser/scheme/AlarmIntent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    const-string v4, ""

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getType()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 60
    invoke-static {v0}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->generateCountdownMemo(Lnluparser/scheme/AlarmIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    move-result-object v3

    .line 69
    .local v3, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_3
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v4, v3}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->addMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    .line 70
    invoke-virtual {v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isAlarm()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_alarm_set_result_ok:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v3}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->getMemoTimeNlu(Landroid/content/Context;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 62
    .end local v3    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_4
    invoke-static {v0}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->generateAlarmMemo(Lnluparser/scheme/AlarmIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    move-result-object v3

    .line 63
    .restart local v3    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    if-nez v3, :cond_3

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5HH\u70b9mm\u5206"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "dateStr":Ljava/lang/String;
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_memo_set_result_outofdate_exception:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 73
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "dateStr":Ljava/lang/String;
    :cond_5
    sget v4, Lcom/unisound/vui/handler/session/memo/R$string;->tts_count_down_set_result_ok:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->setPriority(I)V

    .line 31
    return-void
.end method

.method protected recoveryHandlerPriority()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->setPriority(I)V

    .line 95
    return-void
.end method
