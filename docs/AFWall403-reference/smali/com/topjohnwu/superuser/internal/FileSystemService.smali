.class Lcom/topjohnwu/superuser/internal/FileSystemService;
.super Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;
.source "FileSystemService.java"


# static fields
.field static final PIPE_CAPACITY:I = 0x10000


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

.field private final streamPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;-><init>()V

    .line 45
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileSystemService$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/topjohnwu/superuser/internal/FileSystemService$1;-><init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 198
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileContainer;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 199
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic lambda$openReadStream$1(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 231
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/FileUtils;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    :goto_0
    const/high16 p1, 0x10000

    const-wide/16 v0, -0x1

    .line 232
    invoke-virtual {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/OpenFile;->pread(IJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 233
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 230
    :try_start_2
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic lambda$openWriteStream$2(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 251
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/FileUtils;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    :goto_0
    const-wide/16 v0, -0x1

    const/4 p1, 0x0

    const/high16 v2, 0x10000

    .line 252
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/topjohnwu/superuser/internal/OpenFile;->pwrite(IJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 253
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public checkAccess(Ljava/lang/String;I)Z
    .locals 0

    .line 148
    :try_start_0
    invoke-static {p1, p2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public close(I)V
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 264
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->remove(I)V

    return-void
.end method

.method public createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 0

    if-eqz p3, :cond_0

    .line 183
    :try_start_0
    invoke-static {p2, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p2, p1}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 188
    iget p2, p1, Landroid/system/ErrnoException;->errno:I

    sget p3, Landroid/system/OsConstants;->EEXIST:I

    if-ne p2, p3, :cond_1

    .line 189
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 191
    :cond_1
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 89
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 97
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 307
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/topjohnwu/superuser/internal/OpenFile;->ftruncate(J)V

    .line 308
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 310
    :goto_0
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 55
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFreeSpace(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 161
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode(Ljava/lang/String;)I
    .locals 0

    .line 173
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    iget p1, p1, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTotalSpace(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 156
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsableSpace(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 167
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDirectory(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 63
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method

.method public isFile(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 68
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method public isHidden(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 73
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    return p1
.end method

.method synthetic lambda$register$0$com-topjohnwu-superuser-internal-FileSystemService(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 205
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->pidDied(I)V

    return-void
.end method

.method public lastModified(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 83
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 102
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 289
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/topjohnwu/superuser/internal/OpenFile;->lseek(JI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 291
    :goto_0
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public mkdir(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 107
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p1

    return p1
.end method

.method public mkdirs(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 112
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    return p1
.end method

.method public openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 212
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 214
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr p2, v1

    const/16 v1, 0x1b6

    invoke-static {p1, p2, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 215
    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    sget p2, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p3, p1, p2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 216
    sget p1, Landroid/system/OsConstants;->O_WRONLY:I

    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr p1, v1

    invoke-static {p3, p1, p2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    .line 217
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {p2, v0}, Lcom/topjohnwu/superuser/internal/FileContainer;->put(Lcom/topjohnwu/superuser/internal/OpenFile;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 220
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3

    .line 226
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 228
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    .line 229
    new-instance v1, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 235
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 238
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3

    .line 245
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 247
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    sget p3, Landroid/system/OsConstants;->O_APPEND:I

    goto :goto_0

    :cond_0
    sget p3, Landroid/system/OsConstants;->O_TRUNC:I

    :goto_0
    or-int/2addr p3, v1

    const/16 v1, 0x1b6

    .line 248
    invoke-static {p1, p3, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    .line 249
    new-instance p3, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0, p2}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 255
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 258
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 270
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/topjohnwu/superuser/internal/OpenFile;->pread(IJ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 272
    :goto_0
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 279
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->pwrite(IJZ)I

    .line 280
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 282
    :goto_0
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public register(Landroid/os/IBinder;)V
    .locals 2

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 205
    :try_start_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public renameTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 117
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public setExecutable(Ljava/lang/String;ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 142
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    return p1
.end method

.method public setLastModified(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 122
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    return p1
.end method

.method public setReadOnly(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 127
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    move-result p1

    return p1
.end method

.method public setReadable(Ljava/lang/String;ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 137
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    return p1
.end method

.method public setWritable(Ljava/lang/String;ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 132
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    return p1
.end method

.method public size(I)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3

    .line 298
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/OpenFile;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 300
    :goto_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 317
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/topjohnwu/superuser/internal/OpenFile;->sync(Z)V

    .line 318
    new-instance p1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 320
    :goto_0
    new-instance p2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {p2, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
