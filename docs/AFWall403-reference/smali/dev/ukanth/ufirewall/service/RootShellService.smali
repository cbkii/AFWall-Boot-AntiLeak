.class public Ldev/ukanth/ufirewall/service/RootShellService;
.super Landroid/app/Service;
.source "RootShellService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/service/RootShellService$ShellState;
    }
.end annotation


# static fields
.field public static final EXIT_NO_ROOT_ACCESS:I = -0x1

.field private static final MAX_RETRIES:I = 0xa

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final NO_TOAST:I = -0x1

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field private static final enableProfiling:Z = false

.field private static rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

.field private static rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;


# instance fields
.field private mContext:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;

.field private final waitQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6G1kKwCwO8wVYgPQz92tA3W2MmY(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->lambda$sendUpdate$1(Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPP-4-WDbIZNupw6upT7miWHO2Y(Ldev/ukanth/ufirewall/service/RootShellService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/service/RootShellService;->lambda$startShellInBackground$3(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLw1By02FSIcHAOJNHPL9VpT1uk(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;IILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/ukanth/ufirewall/service/RootShellService;->lambda$processCommands$0(Ldev/ukanth/ufirewall/service/RootCommand;IILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunNextSubmission(Ldev/ukanth/ufirewall/service/RootShellService;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runNextSubmission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetrootState()Ldev/ukanth/ufirewall/service/RootShellService$ShellState;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputrootState(Ldev/ukanth/ufirewall/service/RootShellService$ShellState;)V
    .locals 0

    sput-object p0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->INIT:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->waitQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private complete(Ldev/ukanth/ufirewall/service/RootCommand;I)V
    .locals 2

    .line 81
    iput p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->done:Z

    .line 83
    iget-object v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->cb:Ldev/ukanth/ufirewall/service/RootCommand$Callback;

    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;->cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V

    :cond_0
    const/4 v0, -0x1

    if-nez p2, :cond_1

    .line 87
    iget v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->successToast:I

    if-eq v1, v0, :cond_1

    iget-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    .line 88
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->successToast:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 89
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->failureToast:I

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    .line 90
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->failureToast:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :cond_2
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->isInstanceRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "AFWall"

    const-string p2, "Rules completed, refreshing FirewallService notification"

    .line 95
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Ldev/ukanth/ufirewall/service/FirewallService;->refreshNotification()V

    :cond_3
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8

    const-string v0, "notification"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->notificationManager:Landroid/app/NotificationManager;

    .line 240
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "firewall.service"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-class v3, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v5, ""

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-lt v3, v4, :cond_0

    .line 246
    invoke-static {}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->firewall_service:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 248
    invoke-static {v3, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 249
    invoke-static {v3, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const/4 v4, 0x0

    .line 250
    invoke-static {v3, v4, v4}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 251
    invoke-static {v3, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 252
    invoke-static {v3, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    iget-object v4, p0, Ldev/ukanth/ufirewall/service/RootShellService;->notificationManager:Landroid/app/NotificationManager;

    .line 253
    invoke-static {v4, v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 256
    :cond_0
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 257
    const-class v4, Ldev/ukanth/ufirewall/MainActivity;

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 258
    invoke-virtual {v3, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v2, 0x4000000

    .line 259
    invoke-virtual {v3, v7, v2}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 263
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    .line 265
    sget v2, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->applying_rules:I

    .line 267
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 268
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 269
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v1, "service"

    .line 270
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 271
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x1

    .line 272
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 284
    invoke-virtual {v0, v7, v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->notificationManager:Landroid/app/NotificationManager;

    .line 285
    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private fallbackToSystemBinary(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 7

    .line 408
    iget-object v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "bin"

    const/4 v2, 0x0

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    const-string v2, "iptables"

    .line 416
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api;->findSystemBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip6tables"

    .line 417
    invoke-static {v3}, Ldev/ukanth/ufirewall/Api;->findSystemBinary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AFWall"

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "No system iptables found for fallback"

    .line 440
    invoke-static {v4, p1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/iptables"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ip6tables"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 431
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # __FALLBACK_ATTEMPTED__"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v2

    .line 435
    iget v3, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 436
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Fallback applied: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$processCommands$0(Ldev/ukanth/ufirewall/service/RootCommand;IILjava/util/List;Ljava/util/List;)V
    .locals 1

    .line 161
    invoke-interface {p4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 162
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 163
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p5, ""

    .line 164
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 165
    iget-object p5, p1, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    if-eqz p5, :cond_1

    .line 166
    iget-object p5, p1, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    iget-object p5, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommandResult:Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p2, 0x7e

    const-string p4, "AFWall"

    const/4 p5, 0x1

    if-ne p3, p2, :cond_3

    .line 172
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->shouldFallbackToSystem(Ldev/ukanth/ufirewall/service/RootCommand;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Built-in iptables failed with exit 126, attempting fallback to system iptables"

    .line 173
    invoke-static {p4, p2}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p5}, Ldev/ukanth/ufirewall/util/G;->setBuiltinIptablesFailed(Z)V

    .line 176
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->fallbackToSystemBinary(Ldev/ukanth/ufirewall/service/RootCommand;)V

    .line 177
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->processCommands(Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void

    :cond_3
    if-ltz p3, :cond_4

    .line 181
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryExitCode:I

    if-ne p3, p2, :cond_4

    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    const/16 v0, 0xa

    if-ge p2, v0, :cond_4

    .line 183
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    add-int/2addr p2, p5

    iput p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    .line 187
    :try_start_0
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    mul-int/lit8 p2, p2, 0x64

    int-to-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 192
    :goto_1
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->processCommands(Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void

    .line 196
    :cond_4
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    add-int/2addr p2, p5

    iput p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    const/4 p2, 0x0

    .line 197
    iput p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    if-eqz p3, :cond_5

    .line 199
    iget-boolean v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->ignoreExitCode:Z

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p5, 0x0

    .line 200
    :goto_2
    iget p2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    if-eqz p5, :cond_6

    goto :goto_3

    .line 214
    :cond_6
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->processCommands(Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_5

    .line 201
    :cond_7
    :goto_3
    invoke-direct {p0, p1, p3}, Ldev/ukanth/ufirewall/service/RootShellService;->complete(Ldev/ukanth/ufirewall/service/RootCommand;I)V

    if-gez p3, :cond_8

    .line 203
    sget-object p2, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object p2, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "libsuperuser error "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " on command \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    if-eqz p5, :cond_9

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "command \'"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\' exited with status "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nOutput:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommandResult:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_9
    sget-object p1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object p1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 212
    :goto_4
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runNextSubmission()V

    :goto_5
    return-void
.end method

.method private synthetic lambda$sendUpdate$1(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "UPDATEUI4"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "INDEX"

    .line 231
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic lambda$setupLogging$2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 305
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[libsuperuser] "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AFWall"

    invoke-static {p1, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startShellInBackground$3(ZI)V
    .locals 2

    const-string p1, "AFWall"

    if-gez p2, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t open root shell: exitCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object p1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object p1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    goto :goto_0

    :cond_0
    const-string p2, "Root shell(4) is open"

    .line 326
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object p1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object p1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 329
    :goto_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runNextSubmission()V

    return-void
.end method

.method private processCommands(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 4

    .line 135
    iget v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/service/RootCommand;->getCommmands()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-boolean v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->isv6:Z

    if-nez v1, :cond_0

    .line 141
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->sendUpdate(Ldev/ukanth/ufirewall/service/RootCommand;)V

    :cond_0
    if-eqz v0, :cond_5

    .line 144
    iput-boolean v2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->ignoreExitCode:Z

    const-string v1, "#NOCHK# "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 147
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->ignoreExitCode:Z

    .line 150
    :cond_1
    iput-object v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommandResult:Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 160
    new-instance v3, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;)V

    invoke-virtual {v1, v0, v2, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    goto :goto_2

    .line 155
    :cond_3
    :goto_0
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    const/4 v0, -0x1

    .line 156
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/service/RootShellService;->complete(Ldev/ukanth/ufirewall/service/RootCommand;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "AFWall"

    .line 218
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2

    .line 222
    :cond_4
    invoke-direct {p0, p1, v2}, Ldev/ukanth/ufirewall/service/RootShellService;->complete(Ldev/ukanth/ufirewall/service/RootCommand;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private reOpenShell(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-eqz v0, :cond_0

    .line 335
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v0, v1, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 339
    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 340
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->startShellInBackground()V

    .line 342
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/service/RootShellService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AFWall"

    .line 345
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private runNextSubmission()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->waitQueue:Ljava/util/LinkedList;

    .line 105
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/service/RootCommand;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 118
    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    .line 120
    invoke-direct {p0, v0, v1}, Ldev/ukanth/ufirewall/service/RootShellService;->complete(Ldev/ukanth/ufirewall/service/RootCommand;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 122
    sget-object v2, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v1, v2, :cond_1

    .line 123
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object v1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 128
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/service/RootShellService;->processCommands(Ldev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    :catch_0
    nop

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 108
    sget-object v1, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne v0, v1, :cond_1

    .line 109
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->READY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    :cond_1
    :goto_0
    return-void
.end method

.method private sendUpdate(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/service/RootShellService;Ldev/ukanth/ufirewall/service/RootCommand;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setupLogging()V
    .locals 2

    const/4 v0, 0x0

    .line 301
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->setDebug(Z)V

    const v1, 0xffff

    .line 302
    invoke-static {v1, v0}, Leu/chainfire/libsuperuser/Debug;->setLogTypeEnabled(IZ)V

    const/4 v1, 0x1

    .line 303
    invoke-static {v1, v0}, Leu/chainfire/libsuperuser/Debug;->setLogTypeEnabled(IZ)V

    .line 304
    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->setSanityChecksEnabled(Z)V

    .line 305
    new-instance v0, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->setOnLogListener(Leu/chainfire/libsuperuser/Debug$OnLogListener;)V

    return-void
.end method

.method private shouldFallbackToSystem(Ldev/ukanth/ufirewall/service/RootCommand;)Z
    .locals 3

    .line 394
    iget-object v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "bin"

    .line 399
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v2, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->lastCommand:Ljava/lang/String;

    const-string v0, "__FALLBACK_ATTEMPTED__"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private declared-synchronized startShellInBackground()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AFWall"

    const-string v1, "Starting root shell(4)..."

    .line 310
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->setupLogging()V

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 318
    :cond_1
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Builder;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$Builder;-><init>()V

    .line 319
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Builder;->useSU()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 320
    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/service/RootShellService$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/service/RootShellService;)V

    .line 321
    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->open(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    sput-object v0, Ldev/ukanth/ufirewall/service/RootShellService;->rootSession:Leu/chainfire/libsuperuser/Shell$Interactive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "AFWall"

    const-string p3, "Restarting RootShell..."

    .line 291
    invoke-static {p1, p3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "true"

    .line 293
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance p3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v0, Ldev/ukanth/ufirewall/R$string;->error_su:I

    invoke-virtual {p3, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    .line 295
    invoke-virtual {p3, p2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return p2
.end method

.method public runScriptAsRoot(Landroid/content/Context;Ljava/util/List;Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ldev/ukanth/ufirewall/service/RootCommand;",
            ")V"
        }
    .end annotation

    .line 352
    invoke-virtual {p3, p2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCommmands(Ljava/util/List;)V

    const/4 p2, 0x0

    .line 353
    iput p2, p3, Ldev/ukanth/ufirewall/service/RootCommand;->commandIndex:I

    .line 354
    iput p2, p3, Ldev/ukanth/ufirewall/service/RootCommand;->retryCount:I

    iget-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService;->mContext:Landroid/content/Context;

    :cond_0
    iget-object p2, p0, Ldev/ukanth/ufirewall/service/RootShellService;->waitQueue:Ljava/util/LinkedList;

    .line 361
    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object p2, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 363
    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->INIT:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-eq p2, v0, :cond_3

    sget-object p2, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    sget-object v0, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->FAIL:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-ne p2, v0, :cond_1

    iget-boolean p2, p3, Ldev/ukanth/ufirewall/service/RootCommand;->reopenShell:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Ldev/ukanth/ufirewall/service/RootShellService;->rootState:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    .line 365
    sget-object p2, Ldev/ukanth/ufirewall/service/RootShellService$ShellState;->BUSY:Ldev/ukanth/ufirewall/service/RootShellService$ShellState;

    if-eq p1, p2, :cond_2

    .line 366
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootShellService;->runNextSubmission()V

    goto :goto_1

    .line 368
    :cond_2
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Ldev/ukanth/ufirewall/service/RootShellService$1;

    invoke-direct {p2, p0}, Ldev/ukanth/ufirewall/service/RootShellService$1;-><init>(Ldev/ukanth/ufirewall/service/RootShellService;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 364
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/service/RootShellService;->reOpenShell(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
