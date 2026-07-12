.class Lcom/topjohnwu/superuser/internal/NIOFactory$1;
.super Lcom/topjohnwu/superuser/nio/FileSystemManager;
.source "NIOFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/topjohnwu/superuser/internal/NIOFactory;->createLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/topjohnwu/superuser/nio/FileSystemManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1

    .line 51
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1

    .line 57
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1, p2}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public openChannel(Ljava/io/File;I)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 64
    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lcom/topjohnwu/superuser/internal/FileUtils;->modeToOptions(I)Ljava/util/Set;

    move-result-object p2

    new-array v0, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p2, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-static {p2}, Lcom/topjohnwu/superuser/internal/FileUtils;->modeToFlag(I)Lcom/topjohnwu/superuser/internal/FileUtils$Flag;

    move-result-object p2

    .line 67
    iget-boolean v0, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->write:Z

    if-eqz v0, :cond_6

    .line 68
    iget-boolean v0, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->create:Z

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p2, Landroid/system/ErrnoException;

    const-string v0, "open"

    sget v1, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {p2, v0, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 71
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    :goto_0
    iget-boolean v0, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->append:Z

    if-eqz v0, :cond_3

    .line 75
    new-instance p2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1

    .line 77
    :cond_3
    iget-boolean v0, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->read:Z

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    if-eqz v0, :cond_4

    .line 78
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1

    .line 83
    :cond_4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 84
    iget-boolean p2, p2, Lcom/topjohnwu/superuser/internal/FileUtils$Flag;->truncate:Z

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x0

    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :cond_5
    return-object p1

    .line 89
    :cond_6
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method
