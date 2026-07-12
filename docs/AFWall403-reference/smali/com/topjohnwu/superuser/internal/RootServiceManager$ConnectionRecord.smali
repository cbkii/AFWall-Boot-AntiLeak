.class Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;
.super Landroid/util/Pair;
.source "RootServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method disconnect(Landroid/content/ServiceConnection;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;Landroid/content/ServiceConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method getService()Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->first:Ljava/lang/Object;

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    return-object v0
.end method

.method synthetic lambda$disconnect$0$com-topjohnwu-superuser-internal-RootServiceManager$ConnectionRecord(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->first:Ljava/lang/Object;

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    iget-object v0, v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
