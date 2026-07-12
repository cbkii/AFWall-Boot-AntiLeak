.class abstract Lcom/topjohnwu/superuser/internal/FileImpl;
.super Lcom/topjohnwu/superuser/nio/ExtendedFile;
.source "FileImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/topjohnwu/superuser/nio/ExtendedFile;",
        ">",
        "Lcom/topjohnwu/superuser/nio/ExtendedFile;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/nio/ExtendedFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/nio/ExtendedFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAbsoluteFile()Ljava/io/File;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCanonicalFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/FileImpl;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentFile()Ljava/io/File;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    array-length v1, v0

    .line 70
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 72
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            ")[TT;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 99
    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/topjohnwu/superuser/nio/ExtendedFile;

    return-object p1
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FilenameFilter;",
            ")[TT;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1, p0, v5}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    :cond_1
    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/internal/FileImpl;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0, v3}, Lcom/topjohnwu/superuser/internal/FileImpl;->createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/topjohnwu/superuser/nio/ExtendedFile;

    return-object p1
.end method

.method public bridge synthetic listFiles()[Ljava/io/File;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;->listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method
