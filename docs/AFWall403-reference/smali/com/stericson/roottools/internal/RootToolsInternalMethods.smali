.class public final Lcom/stericson/roottools/internal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RootTools v4.4"

    .line 1308
    invoke-virtual {p1, p2}, Lcom/stericson/rootshell/execution/Shell;->getCommandQueuePositionString(Lcom/stericson/rootshell/execution/Command;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RootTools v4.4"

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/stericson/rootshell/execution/Command;->totalOutputProcessed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/stericson/rootshell/execution/Command;->totalOutput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " output from command."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    monitor-enter p2

    .line 1313
    :try_start_0
    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x7d0

    .line 1314
    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1317
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1319
    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iget-boolean v0, p1, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/stericson/rootshell/execution/Shell;->isReading:Z

    if-nez v0, :cond_2

    const-string v0, "RootTools v4.4"

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is not executing and not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1327
    :cond_2
    iget-boolean v0, p1, Lcom/stericson/rootshell/execution/Shell;->isExecuting:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/stericson/rootshell/execution/Shell;->isReading:Z

    if-nez v0, :cond_3

    const-string v0, "RootTools v4.4"

    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is executing but not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "RootTools v4.4"

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for a command to be executed in a shell that is not reading! \n\n Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/stericson/rootshell/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1319
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public static getInstance()V
    .locals 1

    .line 62
    new-instance v0, Lcom/stericson/roottools/internal/RootToolsInternalMethods;

    invoke-direct {v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;-><init>()V

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->setRim(Lcom/stericson/roottools/internal/RootToolsInternalMethods;)V

    return-void
.end method


# virtual methods
.method public checkUtil(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    .line 277
    invoke-static {p1, v0}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 280
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getPermissions()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 288
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getPermissions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getPermissions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v5, "755"

    .line 293
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "777"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "775"

    .line 294
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/stericson/roottools/RootTools;->utilPath:Ljava/lang/String;

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "busybox"

    const-string v4, "cp"

    const-string v5, "chmod "

    const-string v6, "busybox cp -fp "

    const-string v7, "busybox cp -f "

    const-string v8, "cat "

    const-string v9, "cp -fp "

    const-string v10, "cp -f "

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz p3, :cond_0

    :try_start_0
    const-string v14, "RW"

    .line 183
    invoke-static {v2, v14}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 187
    :cond_0
    :goto_0
    invoke-virtual {v1, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, " "

    if-eqz v14, :cond_3

    :try_start_1
    const-string v3, "cp command is available!"

    .line 188
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 191
    new-instance v3, Lcom/stericson/rootshell/execution/Command;

    new-array v4, v13, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-direct {v3, v11, v11, v4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :try_start_2
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 193
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 196
    invoke-virtual {v3}, Lcom/stericson/rootshell/execution/Command;->getExitCode()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_2

    goto :goto_1

    .line 199
    :cond_1
    :try_start_3
    new-instance v3, Lcom/stericson/rootshell/execution/Command;

    new-array v4, v13, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-direct {v3, v11, v11, v4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 200
    :try_start_4
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 201
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 204
    invoke-virtual {v3}, Lcom/stericson/rootshell/execution/Command;->getExitCode()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v12, v3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v12, v3

    goto/16 :goto_7

    .line 208
    :cond_3
    :try_start_5
    invoke-virtual {v1, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v4, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "busybox cp command is available!"

    .line 209
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    .line 212
    new-instance v3, Lcom/stericson/rootshell/execution/Command;

    new-array v4, v13, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-direct {v3, v11, v11, v4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 213
    :try_start_6
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 214
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 217
    :cond_4
    :try_start_7
    new-instance v3, Lcom/stericson/rootshell/execution/Command;

    new-array v4, v13, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-direct {v3, v11, v11, v4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 218
    :try_start_8
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 219
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_3
    move-object v12, v3

    goto :goto_5

    :cond_5
    :try_start_9
    const-string v3, "cat"

    .line 224
    invoke-virtual {v1, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "cp is not available, use cat!"

    .line 225
    invoke-static {v3}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 230
    invoke-virtual/range {p0 .. p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;

    move-result-object v3

    .line 231
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getPermissions()I

    move-result v3

    goto :goto_4

    :cond_6
    const/4 v3, -0x1

    .line 235
    :goto_4
    new-instance v4, Lcom/stericson/rootshell/execution/Command;

    new-array v6, v13, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-direct {v4, v11, v11, v6}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 236
    :try_start_a
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 237
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    if-eqz p4, :cond_7

    .line 241
    new-instance v12, Lcom/stericson/rootshell/execution/Command;

    new-array v0, v13, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v11

    invoke-direct {v12, v11, v11, v0}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 242
    :try_start_b
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 243
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {v1, v0, v12}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    goto :goto_5

    :cond_7
    move-object v12, v4

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz p3, :cond_9

    const-string v3, "RO"

    .line 253
    invoke-static {v2, v3}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_8

    .line 256
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_9
    :goto_8
    if-eqz v12, :cond_b

    .line 262
    invoke-virtual {v12}, Lcom/stericson/rootshell/execution/Command;->getExitCode()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v11, 0x1

    :cond_a
    move v0, v11

    :cond_b
    return v0
.end method

.method public deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 8

    const-string v0, "busybox"

    const-string v1, "rm"

    const-string v2, "busybox rm -rf "

    const-string v3, "rm -r "

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v5, "RW"

    .line 319
    invoke-static {p1, v5}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-string v5, "toolbox"

    .line 322
    invoke-virtual {p0, v1, v5}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "target not exist or unable to delete file"

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    :try_start_1
    const-string v0, "rm command is available!"

    .line 323
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/stericson/rootshell/execution/Command;

    new-array v1, v7, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v4, v4, v1}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 327
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 329
    invoke-virtual {v0}, Lcom/stericson/rootshell/execution/Command;->getExitCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-static {v6}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {p0, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "busybox rm command is available!"

    .line 335
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/stericson/rootshell/execution/Command;

    new-array v1, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v4, v4, v1}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 339
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 341
    invoke-virtual {v0}, Lcom/stericson/rootshell/execution/Command;->getExitCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-static {v6}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    :goto_1
    const/4 v7, 0x0

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "RO"

    .line 350
    invoke-static {p1, p2}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v4, v7

    goto :goto_3

    .line 353
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v4
.end method

.method public fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "/system"

    :try_start_0
    const-string v1, "rw"

    .line 372
    invoke-static {v0, v1}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 374
    invoke-static {p1, v1}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 376
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 377
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    new-instance v5, Lcom/stericson/rootshell/execution/Command;

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " rm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-direct {v5, v4, v4, v6}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 379
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 380
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    goto :goto_0

    .line 384
    :cond_0
    new-instance v2, Lcom/stericson/rootshell/execution/Command;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ln -s "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " /system/bin/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " chmod 0755 /system/bin/"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-direct {v2, v4, v4, v3}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 385
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 386
    invoke-static {v1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    :cond_1
    const-string p1, "ro"

    .line 390
    invoke-static {v0, p1}, Lcom/stericson/roottools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public fixUtils([Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 409
    invoke-virtual {p0, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "busybox"

    .line 410
    invoke-virtual {p0, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    invoke-virtual {p0, v3, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    sget-object v4, Lcom/stericson/roottools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "toolbox"

    .line 415
    invoke-virtual {p0, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    invoke-virtual {p0, v3, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    sget-object v4, Lcom/stericson/roottools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "/"

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 445
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v7, Lcom/stericson/roottools/internal/RootToolsInternalMethods$1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "busybox --list"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$1;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 461
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 462
    invoke-static {v0}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 464
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 467
    new-instance v7, Lcom/stericson/roottools/internal/RootToolsInternalMethods$2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$2;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 480
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 481
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    :cond_1
    return-object v6

    .line 442
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Path is null, please specifiy a path"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "busybox"

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    .line 494
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_0
    :try_start_0
    new-instance v9, Lcom/stericson/roottools/internal/RootToolsInternalMethods$3;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v5, v11

    move-object v1, v9

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$3;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "Getting BusyBox Version without root"

    .line 523
    invoke-static {v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 524
    invoke-static {v11}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v9}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 526
    invoke-direct {p0, v1, v9}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 528
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 530
    new-instance v9, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;

    const/4 v3, 0x4

    const/4 v4, 0x0

    new-array v5, v10, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v11

    move-object v1, v9

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$4;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "Getting BusyBox Version with root"

    .line 553
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 554
    invoke-static {v10}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    .line 556
    invoke-virtual {p1, v9}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 557
    invoke-direct {p0, p1, v9}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Returning found version: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const-string p1, "BusyBox was not found, more information MAY be available with Debugging on."

    .line 561
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return-object v8
.end method

.method public getConvertedSpace(Ljava/lang/String;)J
    .locals 5

    .line 576
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 577
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 578
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 579
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 p1, 0x6d

    if-eq v2, p1, :cond_2

    const/16 p1, 0x4d

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x67

    if-eq v2, p1, :cond_1

    const/16 p1, 0x47

    if-ne v2, p1, :cond_4

    :cond_1
    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    goto :goto_2

    :cond_2
    :goto_1
    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    goto :goto_2

    .line 587
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 589
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;
    .locals 8

    const-string v0, "toolbox ls -l "

    const-string v1, "/system/bin/failsafe/toolbox ls -l "

    const-string v2, "busybox ls -l "

    const-string v3, "ls -l "

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking permissions for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 658
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was found."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 662
    :try_start_0
    new-instance v4, Lcom/stericson/roottools/internal/RootToolsInternalMethods$6;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v6, v0

    invoke-direct {v4, p0, v3, v7, v6}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$6;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    .line 702
    invoke-static {v3}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 703
    invoke-static {v3}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 705
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->permissions:Lcom/stericson/roottools/containers/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 708
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    :cond_0
    return-object v5
.end method

.method public getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/data/local/ls -i "

    .line 604
    :try_start_0
    new-instance v1, Lcom/stericson/roottools/internal/RootToolsInternalMethods$5;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 p1, 0x5

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$5;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 618
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 620
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->inode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    invoke-virtual {p0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 770
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 771
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/roottools/containers/Mount;

    .line 773
    invoke-virtual {v1}, Lcom/stericson/roottools/containers/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    .line 775
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 776
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {v1}, Lcom/stericson/roottools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 783
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    :cond_2
    invoke-virtual {v1}, Lcom/stericson/roottools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1}, Lcom/stericson/roottools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 789
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 791
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public getMounts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 729
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 730
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    .line 732
    new-instance v1, Lcom/stericson/roottools/internal/RootToolsInternalMethods$7;

    const-string v2, "cat /proc/mounts"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$7;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 753
    invoke-direct {p0, v0, v1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 756
    :cond_1
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPermissions(Ljava/lang/String;)Lcom/stericson/roottools/containers/Permissions;
    .locals 6

    const-string v0, " "

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    aget-object p1, p1, v0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x64

    if-eq v1, v4, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_3

    :cond_1
    const/4 v4, 0x2

    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x77

    if-ne v3, v4, :cond_3

    .line 76
    :cond_2
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/stericson/roottools/containers/Permissions;

    invoke-direct {v3}, Lcom/stericson/roottools/containers/Permissions;-><init>()V

    .line 80
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/stericson/roottools/containers/Permissions;->setType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/stericson/roottools/containers/Permissions;->setUserPermissions(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/stericson/roottools/containers/Permissions;->setGroupPermissions(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/stericson/roottools/containers/Permissions;->setOtherPermissions(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->parseSpecialPermissions(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3}, Lcom/stericson/roottools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/stericson/roottools/containers/Permissions;->setPermissions(I)V

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpace(Ljava/lang/String;)J
    .locals 7

    const-string v0, "df "

    .line 804
    sput-object p1, Lcom/stericson/roottools/internal/InternalVariables;->getSpaceFor:Ljava/lang/String;

    const-string v1, "Looking for Space"

    .line 806
    invoke-static {v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 808
    :try_start_0
    new-instance v3, Lcom/stericson/roottools/internal/RootToolsInternalMethods$8;

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x6

    invoke-direct {v3, p0, p1, v2, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$8;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    .line 821
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 822
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 827
    :goto_0
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->space:[Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, "First Method"

    .line 828
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 830
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->space:[Ljava/lang/String;

    array-length v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v5, p1, v3

    .line 832
    invoke-static {v5}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 835
    invoke-virtual {p0, v5}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v6, "used,"

    .line 836
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "Second Method"

    .line 844
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 846
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->space:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    .line 850
    :goto_2
    sget-object v0, Lcom/stericson/roottools/internal/InternalVariables;->space:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    aget-object v4, v0, v2

    .line 852
    invoke-static {v4}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    if-ne v3, p1, :cond_4

    .line 856
    invoke-virtual {p0, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const-string p1, "Returning -1, space could not be determined."

    .line 862
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    const-string v1, "ls -l "

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Looking for Symlink for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 878
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 880
    new-instance v9, Lcom/stericson/roottools/internal/RootToolsInternalMethods$9;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v7, v1

    move-object v3, v9

    move-object v4, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$9;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    .line 893
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 894
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v9}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 896
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 897
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v3

    aget-object v2, p1, v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Symlink found."

    .line 898
    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 902
    array-length v2, p1

    sub-int/2addr v2, v10

    aget-object v2, p1, v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v10

    aget-object v2, p1, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 904
    array-length v2, p1

    sub-int/2addr v2, v10

    aget-object v2, p1, v2

    invoke-static {v2, v10}, Lcom/stericson/rootshell/RootShell;->findBinary(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 905
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    sub-int/2addr v1, v10

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 910
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v10

    aget-object p1, p1, v1

    goto :goto_0

    .line 913
    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v10

    aget-object p1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 919
    sget-boolean v1, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v1, :cond_2

    .line 920
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string p1, "Symlink not found"

    .line 924
    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "find"

    .line 941
    invoke-virtual {p0, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/roottools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    .line 947
    new-instance v0, Lcom/stericson/roottools/internal/RootToolsInternalMethods$10;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -type l -exec ls -l {} \\;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$10;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 964
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 966
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 967
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    return-object p1

    .line 969
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 942
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public getWorkingToolbox()Ljava/lang/String;
    .locals 2

    const-string v0, "busybox"

    .line 981
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolbox"

    .line 983
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public hasEnoughSpaceOnSdCard(J)Z
    .locals 7

    const-string v0, "Checking SDcard size and that it is mounted as RW"

    .line 1000
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1005
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1006
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 1014
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    mul-long v5, v5, v3

    cmp-long v0, p1, v5

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const-string v0, "Box contains "

    const-string v1, "Box does not contain "

    const/4 v2, 0x0

    .line 1028
    sput-boolean v2, Lcom/stericson/roottools/internal/InternalVariables;->found:Z

    const-string v3, "toolbox"

    .line 1031
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "busybox"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    .line 1037
    :cond_0
    :try_start_0
    new-instance v4, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    aput-object v3, v9, v2

    move-object v5, v4

    move-object v6, p0

    move-object v10, p2

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$11;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-static {v12}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 1057
    invoke-static {v12}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p2

    invoke-direct {p0, p2, v4}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 1059
    sget-boolean p2, Lcom/stericson/roottools/internal/InternalVariables;->found:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " util!"

    if-eqz p2, :cond_2

    .line 1060
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return v12

    .line 1063
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return v2
.end method

.method public installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1088
    :try_start_0
    new-instance v0, Lcom/stericson/roottools/internal/Installer;

    invoke-direct {v0, p1}, Lcom/stericson/roottools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    invoke-virtual {v0, p2, p3, p4}, Lcom/stericson/roottools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 1090
    sget-boolean p2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz p2, :cond_0

    .line 1091
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1131
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1132
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return v0
.end method

.method public isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1111
    :try_start_0
    new-instance v0, Lcom/stericson/roottools/internal/Installer;

    invoke-direct {v0, p1}, Lcom/stericson/roottools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    invoke-virtual {v0, p2}, Lcom/stericson/roottools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 1113
    sget-boolean p2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz p2, :cond_0

    .line 1114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 2

    const-string v0, "Preparing Native Tools"

    .line 627
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 628
    sput-boolean v0, Lcom/stericson/roottools/internal/InternalVariables;->nativeToolsReady:Z

    .line 632
    :try_start_0
    new-instance v1, Lcom/stericson/roottools/internal/Installer;

    invoke-direct {v1, p2}, Lcom/stericson/roottools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "nativetools"

    .line 640
    invoke-virtual {v1, p2}, Lcom/stericson/roottools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 641
    sput-boolean p1, Lcom/stericson/roottools/internal/InternalVariables;->nativeToolsReady:Z

    goto :goto_0

    :cond_0
    const-string v0, "700"

    .line 643
    invoke-virtual {v1, p1, p2, v0}, Lcom/stericson/roottools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/stericson/roottools/internal/InternalVariables;->nativeToolsReady:Z

    .line 646
    :goto_0
    sget-boolean p1, Lcom/stericson/roottools/internal/InternalVariables;->nativeToolsReady:Z

    return p1

    :catch_0
    move-exception p1

    .line 634
    sget-boolean p2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz p2, :cond_1

    .line 635
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 9

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checks if process is running: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1154
    sput-boolean v0, Lcom/stericson/roottools/internal/InternalVariables;->processRunning:Z

    .line 1157
    :try_start_0
    new-instance v7, Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const-string v1, "ps"

    aput-object v1, v5, v0

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$12;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {v8}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 1168
    invoke-static {v8}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1174
    :goto_0
    sget-boolean p1, Lcom/stericson/roottools/internal/InternalVariables;->processRunning:Z

    return p1
.end method

.method public killProcess(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "kill -9 "

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Killing process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const-string v1, ""

    .line 1186
    sput-object v1, Lcom/stericson/roottools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1189
    sput-boolean v2, Lcom/stericson/roottools/internal/InternalVariables;->processRunning:Z

    const/4 v3, 0x0

    .line 1193
    :try_start_0
    new-instance v10, Lcom/stericson/roottools/internal/RootToolsInternalMethods$13;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v2, [Ljava/lang/String;

    const-string v4, "ps"

    aput-object v4, v8, v3

    move-object v4, v10

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/stericson/roottools/internal/RootToolsInternalMethods$13;-><init>(Lcom/stericson/roottools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 1220
    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v10}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V

    .line 1223
    sget-object p1, Lcom/stericson/roottools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    .line 1226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 1229
    :try_start_1
    new-instance v1, Lcom/stericson/rootshell/execution/Command;

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-direct {v1, v3, v3, v4}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 1230
    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 1231
    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/stericson/roottools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/rootshell/execution/Shell;Lcom/stericson/rootshell/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1235
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_0
    return v2

    :catch_1
    move-exception p1

    .line 1242
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method public offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v0, "Launching Market for BusyBox"

    .line 1269
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=stericson.busybox"

    .line 1271
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1272
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public offerBusyBox(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "Launching Market for BusyBox"

    .line 1254
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=stericson.busybox"

    .line 1256
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1257
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 3

    const-string v0, "Launching Play Store for SuperSU"

    .line 1297
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=eu.chainfire.supersu"

    .line 1299
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1300
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public offerSuperUser(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "Launching Play Store for SuperSU"

    .line 1282
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 1283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=eu.chainfire.supersu"

    .line 1284
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1285
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public parsePermissions(Ljava/lang/String;)I
    .locals 6

    .line 111
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "permission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "character "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x77

    if-ne v2, v5, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 128
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x78

    if-eq v2, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x73

    if-eq v2, v5, :cond_2

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x74

    if-ne v2, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 138
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return v1
.end method

.method public parseSpecialPermissions(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x74

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "special permissions "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stericson/roottools/RootTools;->log(Ljava/lang/String;)V

    return v0
.end method
