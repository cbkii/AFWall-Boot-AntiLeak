.class public Leu/chainfire/libsuperuser/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Shell$Pool;,
        Leu/chainfire/libsuperuser/Shell$PoolWrapper;,
        Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;,
        Leu/chainfire/libsuperuser/Shell$Threaded;,
        Leu/chainfire/libsuperuser/Shell$Interactive;,
        Leu/chainfire/libsuperuser/Shell$SyncCommands;,
        Leu/chainfire/libsuperuser/Shell$DeprecatedSyncCommands;,
        Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;,
        Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;,
        Leu/chainfire/libsuperuser/Shell$Builder;,
        Leu/chainfire/libsuperuser/Shell$Command;,
        Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;,
        Leu/chainfire/libsuperuser/Shell$OnCommandInputStream;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;,
        Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListenerUnbuffered;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;,
        Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;,
        Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;,
        Leu/chainfire/libsuperuser/Shell$OnResult;,
        Leu/chainfire/libsuperuser/Shell$SU;,
        Leu/chainfire/libsuperuser/Shell$SH;,
        Leu/chainfire/libsuperuser/Shell$ShellDiedException;,
        Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;,
        Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;
    }
.end annotation


# static fields
.field protected static availableTestCommands:[Ljava/lang/String; = null

.field private static volatile redirectDeprecated:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "echo -BOC-"

    const-string v1, "id"

    .line 278
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    return v0
.end method

.method public static isRedirectDeprecated()Z
    .locals 1

    sget-boolean v0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    return v0
.end method

.method protected static parseAvailableResult(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 297
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "uid="

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eqz p1, :cond_2

    const-string p0, "uid=0"

    .line 300
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    const-string v3, "-BOC-"

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, v0, p2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 173
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application attempted to run a shell command from the main thread"

    .line 180
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 181
    new-instance v1, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    invoke-direct {v1, v0}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-boolean v5, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    if-eqz v5, :cond_2

    .line 186
    invoke-static/range {p0 .. p0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 189
    :cond_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const-string v9, "[%s%%] START"

    invoke-static {v5, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v2, :cond_5

    .line 196
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 198
    array-length v10, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x0

    :goto_1
    const-string v12, "="

    if-ge v11, v10, :cond_4

    :try_start_1
    aget-object v13, v2, v11

    .line 199
    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_3

    .line 200
    invoke-virtual {v13, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 204
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 205
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 213
    :cond_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 214
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    new-instance v10, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v11, v12, v5}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 217
    new-instance v11, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v3, :cond_6

    move-object v3, v5

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-direct {v11, v12, v13, v3}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    .line 221
    invoke-virtual {v10}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 222
    invoke-virtual {v11}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 224
    :try_start_2
    array-length v3, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v12, 0x0

    :goto_4
    const-string v13, "UTF-8"

    if-ge v12, v3, :cond_7

    :try_start_3
    aget-object v14, v0, v12

    .line 225
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "[%s+] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    const/16 v16, 0x1

    aput-object v14, v6, v16

    invoke-static {v15, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 227
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const-string v0, "exit\n"

    .line 229
    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 230
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    .line 232
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EPIPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Stream closed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    .line 240
    :cond_8
    throw v0

    .line 246
    :cond_9
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 254
    :try_start_5
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 258
    :catch_1
    :try_start_6
    invoke-virtual {v10}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 259
    invoke-virtual {v11}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 260
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 263
    invoke-static/range {p0 .. p0}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v2, 0xff

    if-ne v0, v2, :cond_a

    const/4 v5, 0x0

    :cond_a
    move-object v7, v5

    goto :goto_6

    :catch_2
    const/4 v7, 0x0

    .line 274
    :goto_6
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    const-string v1, "[%s%%] END"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    return-object v7
.end method

.method public static setRedirectDeprecated(Z)V
    .locals 0

    sput-boolean p0, Leu/chainfire/libsuperuser/Shell;->redirectDeprecated:Z

    return-void
.end method
