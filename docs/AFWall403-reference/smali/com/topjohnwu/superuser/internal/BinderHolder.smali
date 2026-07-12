.class abstract Lcom/topjohnwu/superuser/internal/BinderHolder;
.super Ljava/lang/Object;
.source "BinderHolder.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/BinderHolder;->binder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/BinderHolder;->binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    new-instance v0, Lcom/topjohnwu/superuser/internal/BinderHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/BinderHolder$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/BinderHolder;)V

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onBinderDied()V
.end method
