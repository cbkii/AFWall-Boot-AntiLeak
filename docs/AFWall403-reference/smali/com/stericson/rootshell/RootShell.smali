.class public Lcom/stericson/rootshell/RootShell;
.super Ljava/lang/Object;
.source "RootShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/rootshell/RootShell$LogLevel;
    }
.end annotation


# static fields
.field public static debugMode:Z = false

.field public static defaultCommandTimeout:I = 0x4e20

.field public static handlerEnabled:Z = true

.field public static final version:Ljava/lang/String; = "RootShell v1.4"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeAll()V

    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeCustomShell()V

    return-void
.end method

.method public static closeShell(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 98
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeRootShell()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->closeShell()V

    :goto_0
    return-void
.end method

.method private static commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RootShell v1.4"

    .line 551
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/execution/Shell;->getCommandQueuePositionString(Lcom/stericson/rootshell/execution/Command;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RootShell v1.4"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " output from command."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    monitor-enter p1

    .line 556
    :try_start_0
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x7d0

    .line 557
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 560
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 562
    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isReading:Z

    if-nez v0, :cond_2

    const-string v0, "RootShell v1.4"

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is not executing and not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 568
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 570
    :cond_2
    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/stericson/rootshell/execution/Shell;->isReading:Z

    if-nez v0, :cond_3

    const-string v0, "RootShell v1.4"

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is executing but not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 573
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "RootShell v1.4"

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 578
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 579
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 562
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static exists(Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, "Exception: "

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "-d "

    goto :goto_0

    :cond_0
    const-string p1, " "

    :goto_0
    const-string v2, "ls "

    .line 126
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v2, Lcom/stericson/rootshell/RootShell$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Lcom/stericson/rootshell/RootShell$1;-><init>(IZ[Ljava/lang/String;Ljava/util/List;)V

    .line 140
    :try_start_0
    invoke-static {v4}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 141
    invoke-static {v4}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/stericson/rootshell/RootShell;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    .line 154
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 156
    new-instance v2, Lcom/stericson/rootshell/RootShell$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v4, v4, p1, v1}, Lcom/stericson/rootshell/RootShell$2;-><init>(IZ[Ljava/lang/String;Ljava/util/List;)V

    .line 167
    :try_start_1
    invoke-static {v5}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 168
    invoke-static {v5}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/stericson/rootshell/RootShell;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    :cond_4
    return v4

    :catch_0
    move-exception p0

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    return v4

    :catch_1
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    return v4
.end method

.method public static findBinary(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 213
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->getPath()Ljava/util/List;

    move-result-object p1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 220
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v7, v1

    .line 229
    new-instance v11, Lcom/stericson/rootshell/RootShell$3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stat "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v4, v12

    move-object v1, v11

    move-object v5, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/stericson/rootshell/RootShell$3;-><init>(IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 244
    invoke-static {v12}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    move-result-object v1

    .line 245
    invoke-static {v12}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/stericson/rootshell/RootShell;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 247
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 252
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v10

    if-nez v1, :cond_7

    goto :goto_0

    .line 255
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    :goto_0
    const-string v1, "Trying second method"

    .line 259
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was found here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 270
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    if-eqz p2, :cond_4

    goto :goto_2

    .line 277
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was NOT found here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_7
    :goto_2
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v8
.end method

.method public static findBinary(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-static {p0, v0, p1}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 299
    invoke-static {p0, p1}, Lcom/stericson/rootshell/RootShell;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PATH"

    .line 308
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, v0}, Lcom/stericson/rootshell/RootShell;->getShell(ZI)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZI)Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/stericson/rootshell/execution/Shell;->defaultContext:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/rootshell/RootShell;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 337
    invoke-static {p0, p1, p2, v0}, Lcom/stericson/rootshell/RootShell;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 322
    invoke-static {p1, p2, p3}, Lcom/stericson/rootshell/execution/Shell;->startRootShell(ILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/stericson/rootshell/execution/Shell;->startShell(I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/rootshell/exceptions/RootDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 348
    invoke-static {p0, v0, p1, v1}, Lcom/stericson/rootshell/RootShell;->getShell(ZILcom/stericson/rootshell/execution/Shell$ShellContext;I)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p0

    return-object p0
.end method

.method public static isAccessGiven()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 377
    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->isAccessGiven(II)Z

    move-result v0

    return v0
.end method

.method public static isAccessGiven(II)Z
    .locals 4

    .line 380
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "Checking for Root access"

    .line 384
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 386
    new-instance v0, Lcom/stericson/rootshell/RootShell$4;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, p1

    const/16 v3, 0x9e

    invoke-direct {v0, v3, p1, v2, p0}, Lcom/stericson/rootshell/RootShell$4;-><init>(IZ[Ljava/lang/String;Ljava/util/Set;)V

    .line 396
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 397
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/stericson/rootshell/RootShell;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 400
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid=0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Access Given"

    .line 404
    invoke-static {p0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return p1

    :catch_0
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static isBusyboxAvailable()Z
    .locals 2

    const-string v0, "busybox"

    const/4 v1, 0x1

    .line 421
    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRootAvailable()Z
    .locals 2

    const-string v0, "su"

    const/4 v1, 0x1

    .line 428
    invoke-static {v0, v1}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static islog()Z
    .locals 1

    sget-boolean v0, Lcom/stericson/rootshell/RootShell;->debugMode:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 444
    sget-object v1, Lcom/stericson/rootshell/RootShell$LogLevel;->DEBUG:Lcom/stericson/rootshell/RootShell$LogLevel;

    invoke-static {v0, p0, v1, v0}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 479
    invoke-static {v0, p0, p1, p2}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 461
    sget-object v0, Lcom/stericson/rootshell/RootShell$LogLevel;->DEBUG:Lcom/stericson/rootshell/RootShell$LogLevel;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/rootshell/RootShell;->log(Ljava/lang/String;Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Lcom/stericson/rootshell/RootShell$LogLevel;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_5

    const-string v0, ""

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/stericson/rootshell/RootShell;->debugMode:Z

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    const-string p0, "RootShell v1.4"

    .line 526
    :cond_0
    invoke-virtual {p2}, Lcom/stericson/rootshell/RootShell$LogLevel;->ordinal()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_3
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    :cond_4
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
