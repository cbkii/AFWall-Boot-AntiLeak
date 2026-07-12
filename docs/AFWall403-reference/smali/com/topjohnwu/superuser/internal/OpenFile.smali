.class Lcom/topjohnwu/superuser/internal/OpenFile;
.super Ljava/lang/Object;
.source "OpenFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FORCE_NO_SPLICE:Z = false


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field fd:Ljava/io/FileDescriptor;

.field read:Ljava/io/FileDescriptor;

.field private st:Landroid/system/StructStat;

.field write:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private getBuf()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getStat()Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 58
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    :try_start_1
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 77
    :try_start_3
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    :cond_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_5
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ftruncate(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 105
    invoke-static {v0, p1, p2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized lseek(JI)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 91
    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pread(IJ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lt v0, v1, :cond_1

    cmp-long v0, p2, v3

    if-gez v0, :cond_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()V

    invoke-static {p2, p3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/system/Int64Ref;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    int-to-long v7, p1

    const/4 v9, 0x0

    .line 122
    invoke-static/range {v3 .. v9}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide p1

    goto :goto_6

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getStat()Landroid/system/StructStat;

    move-result-object v0

    .line 125
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    cmp-long p1, p2, v3

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 134
    invoke-static {p1, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 136
    invoke-static {p1, v0, p2, p3}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    .line 138
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long p1, p1

    long-to-int p3, p1

    :goto_3
    if-lez p3, :cond_6

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    .line 142
    invoke-static {v1, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_3

    :cond_4
    :goto_4
    cmp-long v0, p2, v3

    if-gez v0, :cond_5

    goto :goto_5

    .line 127
    :cond_5
    new-instance v2, Landroid/util/MutableLong;

    invoke-direct {v2, p2, p3}, Landroid/util/MutableLong;-><init>(J)V

    :goto_5
    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    iget-object p3, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    int-to-long v0, p1

    .line 128
    invoke-static {p2, p3, v2, v0, v1}, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_6
    long-to-int p2, p1

    .line 146
    monitor-exit p0

    return p2

    .line 118
    :cond_7
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pwrite(IJZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-wide/16 v2, 0x0

    if-lt v0, v1, :cond_3

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()V

    invoke-static {p2, p3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/system/Int64Ref;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_2

    move p3, p1

    :goto_1
    if-lez p3, :cond_1

    int-to-long p3, p3

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    move-object v3, p2

    move-wide v4, p3

    .line 157
    invoke-static/range {v0 .. v6}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p3, v0

    long-to-int p3, p3

    goto :goto_1

    .line 159
    :cond_1
    monitor-exit p0

    return p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    int-to-long v4, p1

    const/4 v6, 0x0

    move-object v3, p2

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int p2, p1

    monitor-exit p0

    return p2

    .line 166
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getBuf()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz p4, :cond_4

    const/4 p4, 0x0

    :goto_2
    if-le p1, p4, :cond_5

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 171
    invoke-static {v1, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr p4, v1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 174
    invoke-static {p1, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result p4

    .line 177
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move p1, p4

    :goto_3
    if-lez p1, :cond_7

    cmp-long v1, p2, v2

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 180
    invoke-static {v1, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 182
    invoke-static {v1, v0, p2, p3}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr p1, v1

    int-to-long v4, v1

    add-long/2addr p2, v4

    goto :goto_3

    .line 187
    :cond_7
    monitor-exit p0

    return p4

    .line 151
    :cond_8
    :try_start_3
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized size()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 96
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 97
    sget v5, Landroid/system/OsConstants;->SEEK_END:I

    invoke-static {v4, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 98
    sget v5, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v4, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v2

    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 99
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sync(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 111
    invoke-static {p1}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 113
    invoke-static {p1}, Landroid/system/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
