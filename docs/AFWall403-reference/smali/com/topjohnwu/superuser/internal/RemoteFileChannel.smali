.class Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "RemoteFileChannel.java"


# static fields
.field private static final PIPE_CAPACITY:I = 0x10000


# instance fields
.field private final fdLock:Ljava/lang/Object;

.field private final fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

.field private final handle:I

.field private final mode:I

.field private final read:Ljava/io/FileDescriptor;

.field private final write:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iput p3, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/FileUtils;->createTempFIFO()Ljava/io/File;

    move-result-object v0

    .line 67
    invoke-static {p3}, Lcom/topjohnwu/superuser/internal/FileUtils;->modeToPosix(I)I

    move-result p3

    .line 68
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, p3, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/system/OsConstants;->O_RDONLY:I

    sget p3, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/system/OsConstants;->O_WRONLY:I

    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr p2, v1

    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 75
    :goto_0
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    :cond_1
    throw p1
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private read0(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->begin()V

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    move v2, v1

    :goto_0
    if-le v0, v2, :cond_5

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    .line 117
    monitor-enter v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v6, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    sub-int v7, v0, v2

    .line 120
    invoke-interface {v5, v6, v7, p2, p3}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 122
    monitor-exit v4

    goto :goto_5

    :cond_1
    add-int/2addr v2, v5

    .line 123
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    iget-object v6, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    .line 126
    invoke-static {v6, p1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    .line 128
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v2, p2, v6

    if-ltz v2, :cond_3

    int-to-long v4, v5

    add-long/2addr p2, v4

    .line 115
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 119
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p2

    .line 128
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    .line 136
    :goto_3
    :try_start_6
    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 140
    throw p2

    :cond_5
    :goto_5
    sub-int/2addr v2, v1

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 139
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    return v2
.end method

.method private readable()Z
    .locals 3

    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    const/high16 v2, 0x10000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private writable()Z
    .locals 3

    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    const/high16 v2, 0x20000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private write0(Ljava/nio/ByteBuffer;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->begin()V

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    .line 173
    monitor-enter v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;

    .line 176
    invoke-static {v3, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v3

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v5, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 177
    invoke-interface {v4, v5, v3, p2, p3}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V

    .line 178
    monitor-exit v2

    const-wide/16 v1, 0x0

    cmp-long v4, p2, v1

    if-ltz v4, :cond_0

    int-to-long v1, v3

    add-long/2addr p2, v1

    goto :goto_0

    .line 175
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    .line 178
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    return v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 186
    :goto_2
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :goto_3
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 189
    throw p1
.end method


# virtual methods
.method public force(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 267
    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 269
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected implCloseChannel()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 344
    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    .line 345
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    .line 346
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;

    .line 347
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :catch_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    .line 360
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Locking a remote file is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 0

    .line 355
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Memory mapping a remote file is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public position()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 219
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 231
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 234
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 146
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 148
    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    .line 147
    :cond_0
    new-instance p1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 153
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 156
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 161
    aget-object v2, p1, v1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, v0

    return-wide p1

    .line 157
    :cond_1
    new-instance p1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw p1

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 242
    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->size(I)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 303
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, v0

    if-ltz v2, :cond_2

    const/high16 v2, 0x10000

    .line 310
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    cmp-long v3, p4, v0

    if-lez v3, :cond_1

    .line 313
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v5, p4, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 314
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 315
    invoke-interface {p1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 318
    invoke-direct {p0, v2, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr p2, v3

    add-long/2addr v0, v3

    .line 321
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    .line 308
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 306
    :cond_3
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1

    .line 304
    :cond_4
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 277
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2

    const/high16 v2, 0x10000

    .line 284
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    cmp-long v3, p3, v0

    if-lez v3, :cond_1

    .line 287
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v5, p3, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 288
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 289
    invoke-direct {p0, v2, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    invoke-interface {p5, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr p1, v3

    add-long/2addr v0, v3

    .line 295
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0

    .line 282
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 280
    :cond_3
    new-instance p1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw p1

    .line 278
    :cond_4
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 256
    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 254
    :cond_0
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1

    .line 252
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    .line 365
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Locking a remote file is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 195
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    .line 196
    :cond_0
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    .line 202
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 205
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 210
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, v0

    return-wide p1

    .line 206
    :cond_1
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1

    .line 203
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
