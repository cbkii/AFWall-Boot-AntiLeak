.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

.field public final synthetic f$1:[Landroid/os/IBinder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;[Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$1:[Landroid/os/IBinder;

    iput p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$1:[Landroid/os/IBinder;

    iget v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->lambda$bind$1$com-topjohnwu-superuser-internal-RootServiceServer([Landroid/os/IBinder;ILandroid/content/Intent;)V

    return-void
.end method
