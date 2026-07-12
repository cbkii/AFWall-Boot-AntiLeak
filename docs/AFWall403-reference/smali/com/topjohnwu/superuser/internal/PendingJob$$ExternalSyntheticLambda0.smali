.class public final synthetic Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$GetShellCallback;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/PendingJob;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/PendingJob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/PendingJob;

    return-void
.end method


# virtual methods
.method public final onShell(Lcom/topjohnwu/superuser/Shell;)V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/PendingJob$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/PendingJob;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/PendingJob;->lambda$submit0$0$com-topjohnwu-superuser-internal-PendingJob(Lcom/topjohnwu/superuser/Shell;)V

    return-void
.end method
