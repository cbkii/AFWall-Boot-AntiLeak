.class Lcom/topjohnwu/superuser/internal/NIOFactory$2;
.super Lcom/topjohnwu/superuser/nio/FileSystemManager;
.source "NIOFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/topjohnwu/superuser/internal/NIOFactory;->createRemote(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/nio/FileSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/NIOFactory$2;->val$fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 102
    invoke-direct {p0}, Lcom/topjohnwu/superuser/nio/FileSystemManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 2

    .line 106
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/NIOFactory$2;->val$fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 2

    .line 112
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/NIOFactory$2;->val$fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-direct {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public openChannel(Ljava/io/File;I)Ljava/nio/channels/FileChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/NIOFactory$2;->val$fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-direct {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/io/File;I)V

    return-object v0
.end method
