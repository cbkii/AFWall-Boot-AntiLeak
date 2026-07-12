.class public final synthetic Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->lambda$startRootProcess$0(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public synthetic shellDied()V
    .locals 0

    invoke-static {p0}, Lcom/topjohnwu/superuser/Shell$Task$-CC;->$default$shellDied(Lcom/topjohnwu/superuser/Shell$Task;)V

    return-void
.end method
