.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ServiceConnection;

.field public final synthetic f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$0:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$0:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;->f$1:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->lambda$bindInternal$3(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    return-void
.end method
