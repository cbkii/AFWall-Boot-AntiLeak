.class Ldev/ukanth/ufirewall/Api$RunCommand;
.super Landroid/os/AsyncTask;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private exitCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4291
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/Api$RunCommand-IA;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/Api$RunCommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 7

    const-string v0, "\n"

    const/4 v1, 0x0

    .line 4304
    aget-object v2, p1, v1

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    .line 4305
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/StringBuilder;

    .line 4306
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing root commands of"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AFWall"

    invoke-static {v5, v4}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .line 4309
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/Api$RunCommand;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "RunCommand task was cancelled, aborting execution"

    .line 4310
    invoke-static {v5, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4314
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->isAppGrantedRoot()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4315
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_8

    .line 4316
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 4318
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/Api$RunCommand;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v1, "RunCommand task was cancelled before shell execution"

    .line 4319
    invoke-static {v5, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4324
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldev/ukanth/ufirewall/Api;->-$$Nest$smexecuteSafeShellCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iput v1, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    .line 4327
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 4328
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4329
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4330
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iput v3, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .line 4360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shell command execution failed with unexpected exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 4362
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iput v4, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    .line 4342
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 4343
    instance-of v3, v2, Ljava/util/concurrent/ExecutionException;

    const-string v6, "Shell command execution was interrupted: "

    if-eqz v3, :cond_5

    .line 4344
    check-cast v2, Ljava/util/concurrent/ExecutionException;

    .line 4345
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_6

    .line 4346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    .line 4348
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4350
    :cond_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_6

    .line 4351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    .line 4353
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4355
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shell command execution failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 4357
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iput v4, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 4338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shell execution rejected, likely due to app shutdown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    :cond_8
    :goto_1
    iget p1, p0, Ldev/ukanth/ufirewall/Api$RunCommand;->exitCode:I

    .line 4365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

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

    .line 4291
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/Api$RunCommand;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    const-string v0, "AFWall"

    const-string v1, "RunCommand task was cancelled"

    .line 4370
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2

    .line 4376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RunCommand task was cancelled with result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4291
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/Api$RunCommand;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 4297
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
