.class Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
.super Lcom/topjohnwu/superuser/internal/BinderHolder;
.source "RootServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteProcess"
.end annotation


# instance fields
.field final mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

.field final synthetic this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/IRootServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 391
    invoke-interface {p2}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/BinderHolder;-><init>(Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    return-void
.end method


# virtual methods
.method synthetic lambda$onBinderDied$0$com-topjohnwu-superuser-internal-RootServiceManager$RemoteProcess(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z
    .locals 0

    .line 408
    iget-object p1, p1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onBinderDied()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 397
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$000(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 398
    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$002(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 399
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$100(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 400
    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$102(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    :cond_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 402
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$200(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    iget-object v1, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    if-ne v1, p0, :cond_2

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 408
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)V

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->access$300(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V

    return-void
.end method
