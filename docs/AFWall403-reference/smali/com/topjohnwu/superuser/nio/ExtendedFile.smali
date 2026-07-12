.class public abstract Lcom/topjohnwu/superuser/nio/ExtendedFile;
.super Ljava/io/File;
.source "ExtendedFile.java"


# direct methods
.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public abstract createNewLink(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createNewSymlink(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public bridge synthetic getAbsoluteFile()Ljava/io/File;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic getCanonicalFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public abstract getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public bridge synthetic getParentFile()Ljava/io/File;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract isBlock()Z
.end method

.method public abstract isCharacter()Z
.end method

.method public abstract isNamedPipe()Z
.end method

.method public abstract isSocket()Z
.end method

.method public abstract isSymlink()Z
.end method

.method public abstract listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public abstract listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public abstract listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public bridge synthetic listFiles()[Ljava/io/File;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object p1

    return-object p1
.end method

.method public abstract newInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final newOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;->newOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract newOutputStream(Z)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
