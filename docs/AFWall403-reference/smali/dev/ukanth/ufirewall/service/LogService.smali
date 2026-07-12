.class public Ldev/ukanth/ufirewall/service/LogService;
.super Landroid/app/Service;
.source "LogService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_CHANGE_LOG_TARGET:Ljava/lang/String; = "dev.ukanth.ufirewall.CHANGE_LOG_TARGET"

.field public static final ACTION_GRACEFUL_SHUTDOWN:Ljava/lang/String; = "dev.ukanth.ufirewall.GRACEFUL_SHUTDOWN"

.field public static final EXTRA_NEW_LOG_TARGET:Ljava/lang/String; = "new_log_target"

.field public static final QUEUE_NUM:I = 0x28

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field public static logPath:Ljava/lang/String;

.field private static prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;


# instance fields
.field private NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile isShuttingDown:Z

.field private logWatcherShell:Lcom/topjohnwu/superuser/Shell;

.field private manager:Landroid/app/NotificationManager;

.field private notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public static synthetic $r8$lambda$0qHYowOqFVW746F1XAtJr3KX2BY(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$changeLogTarget$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0wJ_eNrIaadvcWXLPv5aaB95rQY(Ldev/ukanth/ufirewall/service/LogService;Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$initiateLogWatcher$6(Lcom/topjohnwu/superuser/Shell$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FqA1KCS5Vmbbp3BgZEpohIhAtLs(Ldev/ukanth/ufirewall/service/LogService;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->lambda$initiateGracefulShutdown$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$KXUvcqQSgHGWOCfwPaoUyMwEdjs(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$restartWatcher$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NgS-1odHpDH_9e5RvPCGbadt2LU(Ldev/ukanth/ufirewall/service/LogService;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->lambda$initiateGracefulShutdown$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bJe7ylN2gYl9DKXyiY-_JlDaVP4(Ldev/ukanth/ufirewall/service/LogService;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->lambda$initiateGracefulShutdown$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$sBNY38WVOtjY3WceQMGGlFb5NJI(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$changeLogTarget$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$twA7E-ynAS9CpknL4CmI4bLnqHQ(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/service/LogService;->lambda$initiateLogWatcherWithCommand$8(Ljava/lang/String;Lcom/topjohnwu/superuser/Shell$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xr0wfZysOn0c4X80DmwPR1CGE5o(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$tryFallbackLogMethod$7(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartWatcher(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->restartWatcher(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreLogInfo(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/service/LogService;->storeLogInfo(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "firewall.logservice"

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    return-void
.end method

.method private changeLogTarget(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AFWall"

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "New log target is same as current, no change needed"

    .line 340
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changing log target from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda13;-><init>(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    const-string p1, "LogService-ChangeTarget"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Invalid log target provided, ignoring change request"

    .line 334
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkBatteryOptimize()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->batteryOptimized(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    :cond_0
    return-void
.end method

.method private cleanupTempFiles()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm -f /tmp/afwall_lastline"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 262
    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createNotification()V
    .locals 15

    .line 403
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->manager:Landroid/app/NotificationManager;

    const/16 v1, 0x6d

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "service"

    const/4 v2, -0x1

    const/high16 v3, 0x4000000

    const/high16 v4, 0x24000000

    const-string v5, "android.intent.category.LAUNCHER"

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-string v9, "AFWall"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x1a

    if-lt v0, v12, :cond_5

    .line 409
    invoke-static {v11}, Ldev/ukanth/ufirewall/service/FirewallService;->setLogServiceActive(Z)V

    .line 416
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m()V

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v12, Ldev/ukanth/ufirewall/R$string;->firewall_service:I

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "firewall.service"

    const/4 v13, 0x2

    invoke-static {v12, v0, v13}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 417
    invoke-static {v0, v11}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 418
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    move-result v14

    if-nez v14, :cond_0

    .line 419
    invoke-static {v0, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {v0, v13}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 423
    :goto_0
    invoke-static {v0, v8, v8}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 424
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 425
    invoke-static {v0, v11}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 426
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    iget-object v7, p0, Ldev/ukanth/ufirewall/service/LogService;->manager:Landroid/app/NotificationManager;

    .line 427
    invoke-static {v7, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 430
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-class v8, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 435
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v4, v10, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 437
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v3}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v4, Ldev/ukanth/ufirewall/R$string;->active:I

    goto :goto_1

    :cond_1
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v4, Ldev/ukanth/ufirewall/R$string;->inactive:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v5, Ldev/ukanth/ufirewall/R$string;->log_monitoring:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v4}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    goto :goto_2

    :cond_2
    sget v4, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    .line 442
    :goto_2
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v6, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v4, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v6, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 445
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 447
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 451
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    .line 453
    invoke-static {p0, v11, v0, v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/LogService;ILandroid/app/Notification;I)V

    goto :goto_3

    .line 455
    :cond_3
    invoke-virtual {p0, v11, v0}, Ldev/ukanth/ufirewall/service/LogService;->startForeground(ILandroid/app/Notification;)V

    :goto_3
    const-string v0, "LogService started as foreground with shared notification ID 1"

    .line 457
    invoke-static {v9, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->isInstanceRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->refreshNotification()V

    const-string v0, "FirewallService notification refreshed to include log status"

    .line 462
    invoke-static {v9, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    const-string v0, "Starting FirewallService to manage shared notification"

    .line 465
    invoke-static {v9, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-class v2, Ldev/ukanth/ufirewall/service/FirewallService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v12, :cond_7

    .line 472
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    sget-object v12, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v13, Ldev/ukanth/ufirewall/R$string;->firewall_log_notify:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 473
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 475
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    move-result v12

    if-nez v12, :cond_6

    .line 476
    invoke-static {v0, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 478
    :cond_6
    invoke-static {v0, v8, v8}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 479
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 480
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 481
    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    iget-object v7, p0, Ldev/ukanth/ufirewall/service/LogService;->manager:Landroid/app/NotificationManager;

    .line 482
    invoke-static {v7, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 486
    :cond_7
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activeNotification()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 487
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-class v8, Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    sget-object v4, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-static {v4, v10, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 493
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    iget-object v5, p0, Ldev/ukanth/ufirewall/service/LogService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Ldev/ukanth/ufirewall/service/LogService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 494
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    .line 495
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v4, Ldev/ukanth/ufirewall/R$string;->firewall_log_notify:I

    .line 496
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v4, Ldev/ukanth/ufirewall/R$string;->log_service_running:I

    .line 497
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 498
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 502
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->manager:Landroid/app/NotificationManager;

    .line 504
    invoke-virtual {v1, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "LogService notification shown (user preference enabled)"

    .line 505
    invoke-static {v9, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v0, "LogService notification hidden (user preference disabled)"

    .line 507
    invoke-static {v9, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method private getBestLogCommand()Ljava/lang/String;
    .locals 2

    const-string v0, "dmesg --follow"

    .line 143
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->isCommandAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dmesg --follow | grep \'{AFL}\'"

    return-object v0

    :cond_0
    const-string v0, "dmesg"

    .line 148
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->isCommandAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tail"

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->isCommandAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "while true; do dmesg | grep \'{AFL}\' | tail -n +$(( $(wc -l < /tmp/afwall_lastline 2>/dev/null || echo 0) + 1 )); dmesg | wc -l > /tmp/afwall_lastline; sleep 1; done"

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const-string v0, "logcat"

    .line 153
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->isCommandAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "logcat -s kernel:* | grep \'{AFL}\'"

    return-object v0

    :cond_2
    const-string v0, "journalctl"

    .line 158
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->isCommandAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "journalctl -k -f | grep \'{AFL}\'"

    return-object v0

    :cond_3
    const-string v0, "AFWall"

    const-string v1, "Falling back to /proc/kmsg - less efficient method"

    .line 163
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cat /proc/kmsg | grep --line-buffered \'{AFL}\'"

    return-object v0
.end method

.method private initiateGracefulShutdown()V
    .locals 3

    const-string v0, "AFWall"

    const-string v1, "Starting graceful shutdown process"

    .line 272
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    .line 278
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda6;-><init>(Ldev/ukanth/ufirewall/service/LogService;)V

    const-string v2, "LogService-GracefulShutdown"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initiateLogWatcher(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 520
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 522
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    const-string v1, "AFWall"

    if-nez v0, :cond_2

    .line 526
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell$Builder;->create()Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    const/16 v2, 0x8

    .line 527
    invoke-virtual {v0, v2}, Lcom/topjohnwu/superuser/Shell$Builder;->setFlags(I)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    const-wide/16 v2, 0xa

    .line 528
    invoke-virtual {v0, v2, v3}, Lcom/topjohnwu/superuser/Shell$Builder;->setTimeout(J)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Builder;->build()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;
    :try_end_0
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to create root shell for log watcher"

    .line 531
    invoke-static {v1, v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return-void

    .line 536
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Starting log watcher with command: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 538
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "ExecutorService is not available, recreating..."

    .line 539
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    .line 541
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 543
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    .line 546
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->newJob()Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/Shell$Job;->add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->callbackList:Ljava/util/List;

    .line 548
    invoke-virtual {p1, v0}, Lcom/topjohnwu/superuser/Shell$Job;->to(Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object p1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda10;-><init>(Ldev/ukanth/ufirewall/service/LogService;)V

    .line 549
    invoke-virtual {p1, v0, v2}, Lcom/topjohnwu/superuser/Shell$Job;->submit(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start log service: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 586
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rejected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "terminated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    const-string p1, "ExecutorService rejected task, recreating executor and retrying..."

    .line 587
    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_7

    .line 590
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 592
    :cond_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    .line 593
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->initiateLogWatcher(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Retry also failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 599
    :cond_8
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->tryFallbackLogMethod()V

    :cond_9
    :goto_1
    return-void
.end method

.method private initiateLogWatcherWithCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AFWall"

    .line 628
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-nez v1, :cond_4

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 630
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "ExecutorService is not available for fallback, recreating..."

    .line 631
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 633
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 635
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    .line 638
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->newJob()Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-virtual {v1, v2}, Lcom/topjohnwu/superuser/Shell$Job;->add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->callbackList:Ljava/util/List;

    .line 640
    invoke-virtual {v1, v2}, Lcom/topjohnwu/superuser/Shell$Job;->to(Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1, v2, v3}, Lcom/topjohnwu/superuser/Shell$Job;->submit(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fallback log service also failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 649
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rejected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "terminated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "ExecutorService rejected fallback task, service may be shutting down"

    .line 650
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private isCommandAvailable(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "which "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, " "

    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " || command -v "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method private synthetic lambda$changeLogTarget$4(Ljava/lang/String;)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restarting log service with new target: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWall"

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->startLogService()V

    return-void
.end method

.method private synthetic lambda$changeLogTarget$5(Ljava/lang/String;)V
    .locals 7

    const-string v0, "AFWall"

    const-string v1, "Error closing existing shell: "

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v2, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    iget-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 355
    :try_start_1
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell;->close()V

    const-string v2, "Closed existing log watcher shell"

    .line 356
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 358
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v4, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    .line 365
    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 366
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xbb8

    invoke-interface {v1, v5, v6, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Executor didn\'t terminate gracefully, forcing shutdown"

    .line 367
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 368
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    const-string v1, "Executor service shut down successfully"

    .line 370
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v1, "Interrupted while shutting down executor"

    .line 372
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 373
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iput-object v4, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    const-wide/16 v1, 0x3e8

    .line 380
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 383
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->logTarget(Ljava/lang/String;)Ljava/lang/String;

    iput-boolean v3, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    .line 389
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    new-instance v2, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error during log target change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    iput-boolean v3, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    :goto_2
    return-void
.end method

.method private synthetic lambda$initiateGracefulShutdown$1()V
    .locals 0

    .line 318
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->stopSelf()V

    return-void
.end method

.method private synthetic lambda$initiateGracefulShutdown$2()V
    .locals 0

    .line 324
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->stopSelf()V

    return-void
.end method

.method private synthetic lambda$initiateGracefulShutdown$3()V
    .locals 5

    const-string v0, "AFWall"

    const-string v1, "Error closing log watcher shell during graceful shutdown: "

    :try_start_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    .line 283
    :try_start_1
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell;->close()V

    const-string v2, "Log watcher shell closed"

    .line 284
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 286
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    :try_start_3
    const-string v1, "Shutting down executor service..."

    .line 294
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 295
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 296
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Executor service didn\'t terminate within 5s, forcing shutdown"

    .line 297
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 298
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 300
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Executor service still didn\'t terminate after force shutdown"

    .line 301
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "Executor service shutdown complete"

    .line 304
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v1, "Interrupted while shutting down executor service"

    .line 306
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 307
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 313
    :cond_2
    :goto_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->cleanupTempFiles()V

    const-string v1, "Graceful shutdown complete, stopping service"

    .line 314
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 318
    new-instance v2, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda11;-><init>(Ldev/ukanth/ufirewall/service/LogService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error during graceful shutdown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    new-instance v1, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda12;-><init>(Ldev/ukanth/ufirewall/service/LogService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method private synthetic lambda$initiateLogWatcher$6(Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 4

    const-string v0, "AFWall"

    const-string v1, "Log watcher failed with code "

    const-string v2, "Log watcher finished with code: "

    .line 551
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-eqz v2, :cond_0

    const-string p1, "Service is shutting down, not restarting log watcher"

    .line 555
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_0
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Log watcher terminated normally, restarting..."

    .line 562
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    .line 563
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->restartWatcher(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_2

    const-string p1, "Log watcher interrupted (SIGINT)"

    .line 566
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v2

    const/16 v3, 0x89

    if-ne v2, v3, :cond_3

    const-string p1, "Log watcher killed by system, restarting..."

    .line 569
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    .line 570
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->restartWatcher(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", trying fallback"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->tryFallbackLogMethod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 577
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RejectedExecutionException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "Caught SuperUser library RejectedExecutionException during app shutdown, ignoring to prevent crash"

    .line 578
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in log watcher completion callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$initiateLogWatcherWithCommand$8(Ljava/lang/String;Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fallback log watcher finished with code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p2}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result p2

    if-nez p2, :cond_0

    .line 644
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->restartWatcher(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$restartWatcher$0(Ljava/lang/String;)V
    .locals 2

    .line 249
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-nez v0, :cond_0

    const-string v0, "AFWall"

    const-string v1, "Restarting log watcher after 5s"

    .line 250
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->cleanupTempFiles()V

    .line 252
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->initiateLogWatcher(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$store$10(Ljava/lang/String;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 1

    .line 822
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 824
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/log/LogData;->setHostname(Ljava/lang/String;)V

    .line 825
    const-class p0, Ldev/ukanth/ufirewall/log/LogDatabase;

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p0

    new-instance v0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda7;-><init>(Ldev/ukanth/ufirewall/log/LogData;)V

    .line 826
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$store$11(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 835
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method static synthetic lambda$store$9(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0

    .line 826
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/log/LogData;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method

.method private synthetic lambda$tryFallbackLogMethod$7(Ljava/lang/String;)V
    .locals 2

    .line 617
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-nez v0, :cond_0

    const-string v0, "AFWall"

    const-string v1, "Starting fallback log watcher"

    .line 618
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->initiateLogWatcherWithCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static pretty(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/service/LogService;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    if-nez v0, :cond_1

    .line 753
    new-instance v0, Lorg/ocpsoft/prettytime/PrettyTime;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    sput-object v0, Ldev/ukanth/ufirewall/service/LogService;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 754
    invoke-virtual {v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 755
    instance-of v2, v1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v2, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/service/LogService;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 756
    invoke-virtual {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/service/LogService;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 761
    invoke-virtual {v0, p0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    sget-object p0, Ldev/ukanth/ufirewall/service/LogService;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 762
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restartWatcher(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    new-instance v1, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldSuppressLog(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)Z
    .locals 5

    .line 675
    iget v0, p1, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 678
    :cond_0
    invoke-static {p2, v1}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 679
    iget-boolean v0, p2, Ldev/ukanth/ufirewall/InterfaceDetails;->netEnabled:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 683
    :cond_1
    iget p2, p2, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    return v1

    .line 690
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-ne p2, v0, :cond_3

    .line 694
    sget-object p2, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v4, "AllowedPKGWifi_UIDS"

    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 696
    :cond_3
    sget-object p2, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v4, "AllowedPKG3G_UIDS"

    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 701
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private showNotification(Ldev/ukanth/ufirewall/log/LogInfo;)V
    .locals 5

    .line 767
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->canShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 770
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    iget-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 772
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-class v3, Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    .line 773
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 774
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 775
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 776
    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 778
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->firewall_log_notify:I

    .line 779
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object p1, p1, Ldev/ukanth/ufirewall/log/LogInfo;->uidString:Ljava/lang/String;

    .line 780
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_block_black_24dp:I

    .line 781
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 782
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 783
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v1, "event"

    .line 784
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 785
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 786
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->manager:Landroid/app/NotificationManager;

    const/16 v1, 0x6d

    .line 788
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private startLogService()V
    .locals 3

    .line 183
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall"

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please select log target first"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "LOG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "NFLOG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/Api;->getEnhancedNflogCommand(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "NFLOG binary not available, cannot start logging service"

    .line 204
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_2
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->getBestLogCommand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "No suitable log reading method available"

    .line 197
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Starting Log Service: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for LogTarget: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Ldev/ukanth/ufirewall/service/LogService$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/service/LogService$1;-><init>(Ldev/ukanth/ufirewall/service/LogService;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->callbackList:Ljava/util/List;

    sget-object v0, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    .line 230
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->initiateLogWatcher(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->createNotification()V

    goto :goto_1

    :cond_4
    const-string v0, "Unable to start log service. LogTarget is empty"

    .line 234
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_log:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 236
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableLogService(Z)Z

    .line 237
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->stopSelf()V

    :cond_5
    :goto_1
    return-void
.end method

.method private static store(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-static {p0, p1, v0}, Ldev/ukanth/ufirewall/service/LogService;->store(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;Z)V

    return-void
.end method

.method private static store(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;Z)V
    .locals 8

    const-string v0, "Exception while saving log data:"

    const-string v1, "AFWall"

    const-string v2, "LogService-DNS-"

    if-eqz p0, :cond_2

    .line 801
    :try_start_0
    new-instance v3, Ldev/ukanth/ufirewall/log/LogData;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/log/LogData;-><init>()V

    .line 802
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setDst(Ljava/lang/String;)V

    .line 803
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->out:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setOut(Ljava/lang/String;)V

    .line 804
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->src:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setSrc(Ljava/lang/String;)V

    .line 805
    iget v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setDpt(I)V

    .line 806
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->in:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setIn(Ljava/lang/String;)V

    .line 807
    iget v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->len:I

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setLen(I)V

    .line 808
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setProto(Ljava/lang/String;)V

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ldev/ukanth/ufirewall/log/LogData;->setTimestamp(J)V

    .line 810
    iget v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->spt:I

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setSpt(I)V

    .line 811
    iget v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setUid(I)V

    .line 812
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setAppName(Ljava/lang/String;)V

    .line 813
    iget v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->type:I

    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setType(I)V

    const/4 v4, 0x0

    .line 814
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/log/LogData;->setType(I)V

    .line 817
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showHost()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 818
    iget-object v4, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    .line 820
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;

    invoke-direct {v6, v4, v3}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ldev/ukanth/ufirewall/log/LogData;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 834
    :cond_0
    const-class v2, Ldev/ukanth/ufirewall/log/LogDatabase;

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v2

    new-instance v4, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda9;

    invoke-direct {v4, v3}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda9;-><init>(Ldev/ukanth/ufirewall/log/LogData;)V

    invoke-virtual {v2, v4}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object v2

    .line 835
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 849
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1

    :catch_1
    move-exception v2

    if-nez p2, :cond_1

    .line 838
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v3, "connection pool has been closed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 841
    :try_start_1
    new-instance p2, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    invoke-direct {p2, p1}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->build()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object p2

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Lcom/raizlabs/android/dbflow/config/FlowConfig;)V

    const/4 p2, 0x1

    .line 842
    invoke-static {p0, p1, p2}, Ldev/ukanth/ufirewall/service/LogService;->store(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 844
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception while saving log data (retry):"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 847
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private storeLogInfo(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 711
    :try_start_0
    new-instance v0, Ldev/ukanth/ufirewall/events/LogEvent;

    const-string v1, "{AFL}"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Ldev/ukanth/ufirewall/log/LogInfo;->parseLogs(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Ldev/ukanth/ufirewall/log/LogInfo;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/events/LogEvent;-><init>(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)V

    .line 712
    iget-object p1, v0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    if-eqz p1, :cond_3

    .line 717
    iget-object p1, v0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    iget-object p1, p1, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "255.255.255.255"

    .line 719
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "224."

    .line 720
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "239."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 728
    :cond_1
    iget-object p1, v0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/service/LogService;->shouldSuppressLog(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 732
    :cond_2
    iget-object p1, v0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    iget-object p2, v0, Ldev/ukanth/ufirewall/events/LogEvent;->ctx:Landroid/content/Context;

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/service/LogService;->store(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)V

    .line 733
    iget-object p1, v0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->showNotification(Ldev/ukanth/ufirewall/log/LogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AFWall"

    .line 736
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private tryFallbackLogMethod()V
    .locals 4

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AFWall"

    const-string v1, "Attempting fallback to basic /proc/kmsg reading"

    .line 612
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 616
    new-instance v1, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda3;

    const-string v2, "cat /proc/kmsg | grep --line-buffered \'{AFL}\'"

    invoke-direct {v1, p0, v2}, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    const/4 v2, 0x0

    const-string v3, "AFWall"

    if-eqz v1, :cond_0

    .line 862
    :try_start_0
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 864
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error closing log watcher shell: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 872
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 873
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7d0

    invoke-interface {v1, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ExecutorService did not terminate gracefully, forcing shutdown"

    .line 874
    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 875
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 877
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    invoke-interface {v1, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ExecutorService did not terminate after force shutdown"

    .line 878
    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Interrupted while shutting down ExecutorService"

    .line 882
    invoke-static {v3, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 883
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 884
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_1
    iput-object v2, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 890
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->isInstanceRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 891
    invoke-static {v0}, Ldev/ukanth/ufirewall/service/FirewallService;->setLogServiceActive(Z)V

    const-string v0, "Notified FirewallService that log monitoring stopped"

    .line 892
    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 896
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->stopForeground(Z)V

    const-string v0, "Stopped foreground service"

    .line 897
    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error stopping foreground service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_2
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->cleanupTempFiles()V

    .line 906
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const-string p3, "dev.ukanth.ufirewall.GRACEFUL_SHUTDOWN"

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "AFWall"

    if-eqz p3, :cond_0

    const-string p1, "Received graceful shutdown request"

    .line 111
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->initiateGracefulShutdown()V

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string p3, "dev.ukanth.ufirewall.CHANGE_LOG_TARGET"

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "new_log_target"

    .line 115
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Received log target change request to: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/LogService;->changeLogTarget(Ljava/lang/String;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/service/LogService;->isShuttingDown:Z

    .line 124
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->startLogService()V

    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 5

    .line 911
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 914
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 915
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const/high16 v1, 0x2000000

    .line 916
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    .line 917
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/service/LogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 922
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    .line 924
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error closing shell in onTaskRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AFWall"

    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->logWatcherShell:Lcom/topjohnwu/superuser/Shell;

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    .line 933
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 934
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 935
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 938
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 939
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_1
    iput-object v0, p0, Ldev/ukanth/ufirewall/service/LogService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 944
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/LogService;->cleanupTempFiles()V

    return-void
.end method
