.class public Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;
.super Landroid/os/AsyncTask;
.source "LogNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/LogNetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final PING_CMD:Ljava/lang/String; = "%s ping -w 1 -W %d %s"


# instance fields
.field context:Landroid/content/Context;

.field onFinishRequest:Ldev/ukanth/ufirewall/util/LogNetUtil$OnFinishRequest;

.field output_result:Ljava/lang/String;

.field progress:Lcom/afollestad/materialdialogs/MaterialDialog;

.field start_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->output_result:Ljava/lang/String;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    return-void
.end method

.method private normal_ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logPingTimeout()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    .line 164
    sget v3, Ldev/ukanth/ufirewall/R$string;->reachable_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->finish_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :catch_0
    move-exception v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception(04): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AFWall-LogNetUtil"

    invoke-static {v3, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 168
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->finish_time()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Currently IP(%s) is not Reachable, timeout: %d ms"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private parse(Ljava/lang/Process;)Ljava/lang/String;
    .locals 2

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 203
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception(05): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall-LogNetUtil"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    .line 214
    sget v0, Ldev/ukanth/ufirewall/R$string;->output_is_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parse(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    .line 195
    sget v0, Ldev/ukanth/ufirewall/R$string;->output_is_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private su_busyboox_ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 178
    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/Api;->getBusyBoxPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logPingTimeout()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s ping -w 1 -W %d %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute CMD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall-LogNetUtil"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "su"

    invoke-static {v1, p1, v0, v2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->parse(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    .line 183
    sget v0, Ldev/ukanth/ufirewall/R$string;->network_connection_not_available:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, [Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->doInBackground([Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;)Ljava/lang/String;
    .locals 11

    const-string v0, "AFWall-LogNetUtil"

    const-string v1, "CMD exit code: "

    const-string v2, "Execute CMD: "

    const-string v3, "Exception(00): "

    const-string v4, "Exception(02): "

    const-string v5, "Exception(01): "

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->start_time:J

    const/4 v6, 0x0

    .line 70
    :try_start_0
    aget-object v7, p1, v6

    iget-object v7, v7, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->type:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    invoke-virtual {v7}, Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;->ordinal()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    if-eq v7, v9, :cond_0

    goto/16 :goto_1

    .line 105
    :cond_0
    :try_start_1
    aget-object v1, p1, v6

    iget-object v1, v1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "<Unable to resolve host>"
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_0
    move-exception v1

    .line 113
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Currently can not resolve Host for IP(%s), timeout: %d ms"

    new-array v2, v8, [Ljava/lang/Object;

    .line 114
    aget-object p1, p1, v6

    iget-object p1, p1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    aput-object p1, v2, v6

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->finish_time()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object p1

    :cond_2
    :try_start_3
    const-string v4, "%s ping -w 1 -W %d %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v7, v6

    .line 80
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logPingTimeout()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    aget-object v9, p1, v6

    iget-object v9, v9, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 88
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->parse(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_3
    aget-object v1, p1, v6

    iget-object v1, v1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->su_busyboox_ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 93
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    aget-object v1, p1, v6

    iget-object v1, v1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->su_busyboox_ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_0
    return-object p1

    :catch_2
    move-exception v1

    .line 98
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    aget-object p1, p1, v6

    iget-object p1, p1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->normal_ping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception(03): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    .line 120
    sget v0, Ldev/ukanth/ufirewall/R$string;->error_or_unknown_category:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method finish_time()J
    .locals 4

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->start_time:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AFWall-LogNetUtil"

    .line 126
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->onFinishRequest:Ldev/ukanth/ufirewall/util/LogNetUtil$OnFinishRequest;

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v1, p1}, Ldev/ukanth/ufirewall/util/LogNetUtil$OnFinishRequest;->then(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 134
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 140
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->output_result:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->result:I

    .line 148
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 149
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->copy_text:I

    .line 150
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;-><init>(Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void

    :goto_2
    iput-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 144
    throw p1
.end method

.method protected onPreExecute()V
    .locals 3

    .line 56
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 58
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->searching:I

    .line 59
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->looking_for_data:I

    .line 60
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressIndeterminateStyle(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->progress:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public setOnFinishRequest(Ldev/ukanth/ufirewall/util/LogNetUtil$OnFinishRequest;)Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->onFinishRequest:Ldev/ukanth/ufirewall/util/LogNetUtil$OnFinishRequest;

    return-object p0
.end method
