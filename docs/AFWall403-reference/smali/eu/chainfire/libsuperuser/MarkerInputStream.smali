.class public Leu/chainfire/libsuperuser/MarkerInputStream;
.super Ljava/io/InputStream;
.source "MarkerInputStream.java"


# static fields
.field private static final EXCEPTION_EOF:Ljava/lang/String; = "EOF encountered, shell probably died"


# instance fields
.field private final buffer:[B

.field private bufferUsed:I

.field private volatile done:Z

.field private volatile eof:Z

.field private final gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

.field private final inputStream:Ljava/io/InputStream;

.field private final marker:[B

.field private final markerLength:I

.field private final markerMaxLength:I

.field private final read1:[B


# direct methods
.method public constructor <init>(Leu/chainfire/libsuperuser/StreamGobbler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z

    iput-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 40
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    .line 41
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    const-string p1, "UTF-8"

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->marker:[B

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    return-void
.end method

.method private fill(I)V
    .locals 5

    .line 72
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    .line 75
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    if-lez p1, :cond_4

    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    .line 76
    array-length v2, v1

    iget v3, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    .line 78
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    add-int/2addr v1, v0

    iput v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->setEOF()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->setEOF()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 168
    :goto_0
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEOF()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0, v0, v2, v1}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    .line 55
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    .line 61
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v0, v2

    .line 99
    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/MarkerInputStream;->fill(I)V

    iget v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 102
    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    sub-int/2addr v0, v2

    .line 106
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    add-int v5, v0, v2

    .line 109
    aget-byte v4, v4, v5

    iget-object v5, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->marker:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :cond_4
    if-nez v0, :cond_7

    :goto_2
    iget-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget p2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 122
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    if-eq p1, p2, :cond_6

    .line 123
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result p1

    if-nez p1, :cond_5

    .line 124
    invoke-direct {p0, p3}, Leu/chainfire/libsuperuser/MarkerInputStream;->fill(I)V

    goto :goto_2

    .line 123
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "EOF encountered, shell probably died"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 126
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->getOnLineListener()Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v2, p3

    const-string v4, "UTF-8"

    invoke-direct {p2, v0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {p1, p2}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    iput-boolean p3, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    monitor-exit p0

    return v1

    :cond_7
    if-ne v0, v1, :cond_9

    .line 132
    :try_start_3
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    sub-int/2addr v0, v1

    .line 137
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_3

    .line 132
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "EOF encountered, shell probably died"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_9
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_3
    if-lez p3, :cond_a

    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    .line 147
    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr p1, p3

    iput p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget-object p2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    .line 149
    invoke-static {p2, p3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_a
    const-wide/16 p1, 0x4

    .line 153
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    :catch_0
    :goto_4
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEOF()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
