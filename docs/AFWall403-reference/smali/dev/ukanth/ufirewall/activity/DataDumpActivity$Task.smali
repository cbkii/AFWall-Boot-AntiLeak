.class Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;
.super Ljava/lang/Object;
.source "DataDumpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/activity/DataDumpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ldev/ukanth/ufirewall/activity/DataDumpActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field public filename:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final selectedDirectory:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$61q1-9R25uDiskM8myx-TB4l9w0(Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->lambda$run$0(Z)V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V
    .locals 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->filename:Ljava/lang/String;

    .line 400
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->handler:Landroid/os/Handler;

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->ctx:Landroid/content/Context;

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->selectedDirectory:Ljava/io/File;

    .line 407
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->activityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic lambda$run$0(Z)V
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->activityReference:Ljava/lang/ref/WeakReference;

    .line 459
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;

    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->ctx:Landroid/content/Context;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->export_rules_success:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->ctx:Landroid/content/Context;

    .line 465
    sget v1, Ldev/ukanth/ufirewall/R$string;->export_logs_fail:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, ".log"

    const-string v1, "AFWall"

    const/4 v2, 0x0

    .line 417
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 418
    sget-object v4, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->sdDumpFile:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->selectedDirectory:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 424
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->selectedDirectory:Ljava/io/File;

    .line 425
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 427
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->selectedDirectory:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_2

    .line 429
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 431
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    move-object v3, v4

    .line 440
    :goto_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    :try_start_1
    sget-object v2, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->dataText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->filename:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 450
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_2
    const/4 v0, 0x1

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 445
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 449
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 450
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_4
    :goto_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->handler:Landroid/os/Handler;

    .line 458
    new-instance v2, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_6
    if-eqz v2, :cond_5

    .line 449
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 450
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v2

    .line 453
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 455
    :cond_5
    :goto_7
    throw v0
.end method
