.class Lcom/topjohnwu/superuser/internal/FileSystemService$1;
.super Landroid/util/LruCache;
.source "FileSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/FileSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/topjohnwu/superuser/internal/FileSystemService;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V
    .locals 0

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService$1;->this$0:Lcom/topjohnwu/superuser/internal/FileSystemService;

    .line 45
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/FileSystemService$1;->create(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
