.class public final synthetic Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/topjohnwu/superuser/internal/FileSystemService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/topjohnwu/superuser/internal/FileSystemService;

    iput p2, p0, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/topjohnwu/superuser/internal/FileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/internal/FileSystemService;->lambda$register$0$com-topjohnwu-superuser-internal-FileSystemService(I)V

    return-void
.end method
