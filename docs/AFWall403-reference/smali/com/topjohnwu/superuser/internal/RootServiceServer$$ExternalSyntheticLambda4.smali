.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    iput p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda4;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->lambda$connect$0$com-topjohnwu-superuser-internal-RootServiceServer(ILandroid/os/IBinder;)V

    return-void
.end method
