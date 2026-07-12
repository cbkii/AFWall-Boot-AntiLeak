.class Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;
.super Landroid/os/FileObserver;
.source "RootServiceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppObserver"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/RootServiceServer;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    .line 308
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7c0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Start monitoring: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IPC"

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;->name:Ljava/lang/String;

    .line 316
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceServer$AppObserver;->this$0:Lcom/topjohnwu/superuser/internal/RootServiceServer;

    const-string p2, "Package updated"

    .line 317
    invoke-static {p1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceServer;->access$000(Lcom/topjohnwu/superuser/internal/RootServiceServer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
