.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-void
.end method


# virtual methods
.method public final eval(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess$$ExternalSyntheticLambda0;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->lambda$onBinderDied$0$com-topjohnwu-superuser-internal-RootServiceManager$RemoteProcess(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z

    move-result p1

    return p1
.end method
