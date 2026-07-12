.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ServiceConnection;

.field public final synthetic f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->lambda$bindInternal$2(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V

    return-void
.end method
