.class public final synthetic Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/JobTask;

.field public final synthetic f$1:Lcom/topjohnwu/superuser/internal/ResultImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/JobTask;Lcom/topjohnwu/superuser/internal/ResultImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/JobTask;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;->f$1:Lcom/topjohnwu/superuser/internal/ResultImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/JobTask;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;->f$1:Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/internal/JobTask;->lambda$setResult$0$com-topjohnwu-superuser-internal-JobTask(Lcom/topjohnwu/superuser/internal/ResultImpl;)V

    return-void
.end method
