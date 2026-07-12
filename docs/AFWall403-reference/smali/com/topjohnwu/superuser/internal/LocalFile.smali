.class Lcom/topjohnwu/superuser/internal/LocalFile;
.super Lcom/topjohnwu/superuser/internal/FileImpl;
.source "LocalFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/FileImpl<",
        "Lcom/topjohnwu/superuser/internal/LocalFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createLink(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 138
    iget p2, p1, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EEXIST:I

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 1

    .line 44
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method protected createArray(I)[Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 0

    .line 55
    new-array p1, p1, [Lcom/topjohnwu/superuser/internal/LocalFile;

    return-object p1
.end method

.method protected bridge synthetic createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->createArray(I)[Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method public createNewLink(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/LocalFile;->createLink(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public createNewSymlink(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/LocalFile;->createLink(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 2

    .line 50
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method public isBlock()Z
    .locals 1

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 62
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacter()Z
    .locals 1

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 72
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNamedPipe()Z
    .locals 1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 92
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSocket()Z
    .locals 1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 102
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSymlink()Z
    .locals 1

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 82
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method
