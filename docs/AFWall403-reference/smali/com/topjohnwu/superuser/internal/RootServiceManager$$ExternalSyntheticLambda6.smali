.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$3:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()Z
    .locals 4

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda6;->f$3:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->lambda$createBindTask$4$com-topjohnwu-superuser-internal-RootServiceManager(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method
