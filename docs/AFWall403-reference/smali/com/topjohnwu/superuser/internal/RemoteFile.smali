.class Lcom/topjohnwu/superuser/internal/RemoteFile;
.super Lcom/topjohnwu/superuser/internal/FileImpl;
.source "RemoteFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/FileImpl<",
        "Lcom/topjohnwu/superuser/internal/RemoteFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    return-void
.end method

.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    return-void
.end method

.method private checkAccess(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 72
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->checkAccess(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    .line 90
    sget v0, Landroid/system/OsConstants;->X_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    .line 80
    sget v0, Landroid/system/OsConstants;->R_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .line 85
    sget v0, Landroid/system/OsConstants;->W_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method protected create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 2

    .line 46
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method protected createArray(I)[Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/topjohnwu/superuser/internal/RemoteFile;

    return-object p1
.end method

.method protected bridge synthetic createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->createArray(I)[Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method public createNewFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 191
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createNewLink(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 200
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 202
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createNewSymlink(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 209
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 211
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delete()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 218
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->delete(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteOnExit()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "deleteOnExit() is not supported in RemoteFile"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .line 95
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 64
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 3

    .line 52
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method public getFreeSpace()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 322
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalSpace()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 313
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getTotalSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 331
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getUsableSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isBlock()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 119
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacter()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 128
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 101
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isDirectory(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 110
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 164
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isHidden(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNamedPipe()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 146
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSocket()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 155
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSymlink()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 137
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public lastModified()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 173
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lastModified(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public length()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 182
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->length(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 232
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mkdir()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 241
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->mkdir(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public mkdirs()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 250
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->mkdirs(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 342
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 349
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 344
    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 345
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 348
    throw v1
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 357
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    aget-object p1, v0, v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 364
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v0, v0, v1

    invoke-direct {p1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 360
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 363
    throw p1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 259
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExecutable(ZZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 304
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setExecutable(Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLastModified(J)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 268
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setLastModified(Ljava/lang/String;J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setReadOnly()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 277
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setReadOnly(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 295
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setReadable(Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWritable(ZZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 286
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setWritable(Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
