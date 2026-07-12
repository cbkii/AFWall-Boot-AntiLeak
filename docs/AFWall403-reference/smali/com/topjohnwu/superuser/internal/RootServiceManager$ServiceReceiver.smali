.class Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RootServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceReceiver"
.end annotation


# instance fields
.field private final m:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;)V
    .locals 2

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 429
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 432
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->m:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "extra.bundle"

    .line 437
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "binder"

    .line 440
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 444
    :cond_1
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->m:Landroid/os/Messenger;

    .line 446
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->connect(Landroid/os/IBinder;)V

    .line 447
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/IRootServiceManager;)V

    const-string p1, "extra.daemon"

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 449
    invoke-static {p1, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$102(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    const/4 p2, -0x3

    .line 450
    invoke-static {p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$472(Lcom/topjohnwu/superuser/internal/RootServiceManager;I)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 452
    invoke-static {p1, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$002(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    const/4 p2, -0x2

    .line 453
    invoke-static {p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$472(Lcom/topjohnwu/superuser/internal/RootServiceManager;I)I

    :goto_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 455
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$500(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 456
    invoke-static {p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$500(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;

    invoke-interface {p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;->run()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 457
    invoke-static {p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$500(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "IPC"

    .line 461
    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
