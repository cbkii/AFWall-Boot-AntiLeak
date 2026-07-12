.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda7;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    return-void
.end method


# virtual methods
.method public final eval(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda7;->f$0:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
